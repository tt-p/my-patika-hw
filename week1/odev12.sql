/*
 * P_1: Film tablosunda film uzunluğu length sütununda gösterilmektedir.
 *      Uzunluğu ortalama film uzunluğundan fazla kaç tane film vardır?
 * 
 * P_2: Film tablosunda en yüksek rental_rate değerine sahip kaç tane film vardır?
 * 
 * P_3: Film tablosunda en düşük rental_rate ve 
 *      en düşün replacement_cost değerlerine sahip filmleri sıralayınız.
 * 
 * P_4: Payment tablosunda en fazla sayıda alışveriş yapan müşterileri(customer) sıralayınız.
 * 
 * */

-- S_1: 489
select count(*)
from film 
where length > any( select avg(length) from film );

-- S_2: 336
select count(*) 
from film 
where rental_rate = any( select max(rental_rate) from film );

-- S_3:
select *
from film
where rental_rate = ( select min(rental_rate) from film )
and replacement_cost = ( select min(replacement_cost) from film);

-- S_4.1: En fazla sayıda alışveriş yapan
select *
from customer c
where c.customer_id = any ( 
	select customer_id
	from payment
	group by customer_id
	order by count(*) desc
	limit 1
);

-- S_4.2: Alışveriş sayısına göre sıralı
with payment_count as (
	select customer_id cid, count(*) cnt
	from payment
	group by cid
	order by cnt desc
)
select
	c.*,
	pc.cnt as total_payment_count
from customer c
inner join
	payment_count pc on c.customer_id = pc.cid 
order by pc.cnt desc;