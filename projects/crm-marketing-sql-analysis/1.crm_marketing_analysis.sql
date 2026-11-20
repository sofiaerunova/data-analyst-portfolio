-- первичный осмотр таблиц
select * from "CRM".companing;
select * from "CRM".price;
select * from "CRM".response;
select * from "CRM".sales;
select * from "CRM".sendings;

-- объединяю информацию о кампаниях, рассылках, откликах клиентов, покупках и ценах в единый датасет
-- ограничиваю окно покупок 3-дневным периодом после старта рассылки (период снятия эффективности)
with full_table as(
select
re."Id_customer" as id_customer
, re.response_code
, re.cell_package_sk
, sa."Date"::timestamp as sale_date
, sa.id_product
, pr.price
, se."campaning_SD" as campaning_sd
, se.send_name
, se."communication_SK" as communication_sk
, se.subject
, co."Start_date"::timestamp as start_date
, co."Start_date"::timestamp + interval '3 days' as end_date  -- период снятия эффективности
, co.description
from "CRM".companing co
join "CRM".sendings se
on co."campaning_SD" = se."campaning_SD"
join "CRM".response re
on re.cell_package_sk = se.cell_package_sk
join "CRM".sales sa 
on re."Id_customer" = sa."Id_customer"
join "CRM".price pr
on sa.id_product = pr.product_id
)

-- нахожу общее количество уникальных клиентов, получивших рассылку в разрезе каждого пакета
, all_customers_in_group AS(
select
cell_package_sk
, response_code
, COUNT(distinct "Id_customer") as count_customers
from "CRM".response
where response_code != 2 -- исключаю недоставленные сообщения
group by cell_package_sk, response_code
)

-- нахожу клиентов, совершивших покупку внутри целевого 3-дневного окна после старта рассылки, и сразу считаю сумму продаж
, all_customers_who_buy as(
select
cell_package_sk
, response_code
, COUNT(distinct id_customer) as count_who_buy
, SUM(price) as sum_buy
from full_table
where sale_date >= start_date
and sale_date <= end_date
and response_code != 2
group by cell_package_sk, response_code
)

-- теперь рассчитатьываю для каждого сегмента средний чек платящего клиента (ARPPU) и конверсию из полученных писем в покупку (respons)
, t_2 as(
select
acig.cell_package_sk
, acig.count_customers
, round(acwb.sum_buy::numeric  / acwb.count_who_buy, 2) as arppu
, round(acwb.count_who_buy::numeric / acig.count_customers, 2) as respons
, se.send_name
, se."campaning_SD"
, se.subject
from all_customers_in_group acig
join all_customers_who_buy acwb
on acig.cell_package_sk = acwb.cell_package_sk
and acig.response_code = acwb.response_code
join "CRM".sendings se
on se.cell_package_sk = acig.cell_package_sk
)

-- делю общие данные на две группы для сравнения A/B теста:
-- t_3: рассылки с CTR-метками
, t_3 AS(
select 
arppu as arppu2
, respons as respons2
, "campaning_SD"
, count_customers
from t_2
where send_name like '%CTR%')

-- t_4: базовые версии рассылок
, t_4 as(
select
arppu as arppu1
, respons as respons1
, send_name
, "campaning_SD"
, subject
from t_2
where send_name not like '%CTR%')

-- ФИНАЛЬНОЕ СРАВНЕНИЕ И ОЦЕНКА ПРИРОСТА
select 
t_4.arppu1
, t_4.respons1
, t_4.send_name
, t_4."campaning_SD"
, t_4.subject
, t_3.arppu2
, t_3.respons2
, t_3.count_customers
, t_4.respons1 - t_3.respons2 as delta -- считаю  дельту отклика (delta)
, (t_4.respons1 - t_3.respons2) * t_3.count_customers * arppu1  as privlecli --считаю сколько доп. денег привлека рекламная компания
from t_4
join t_3
on t_4."campaning_SD" = t_3."campaning_SD" -- объединяю базовые рассылки и CTR-тесты в одну строку по кампании,
order by privlecli desc -- привлеченный объем отсортировываю по убыванию профита.
