/*
 * P_1: city tablosu ile country tablosunda bulunan 
 *      şehir (city) ve ülke (country) isimlerini birlikte görebileceğimiz 
 *      INNER JOIN sorgusunu yazınız.
 * 
 * P_2: customer tablosu ile payment tablosunda bulunan
 *      payment_id ile customer tablosundaki first_name ve last_name isimlerini 
 *      birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.
 * 
 * P_3: customer tablosu ile rental tablosunda bulunan rental_id ile 
 *      customer tablosundaki first_name ve last_name isimlerini birlikte görebileceğimiz
 *      INNER JOIN sorgusunu yazınız.
 * 
 * */

-- S_1:
select 
	ci.city,
	co.country
from city ci
inner join
	country co on ci.country_id = co.country_id;

-- S_2:
select
	p.payment_id,
	c.first_name,
	c.last_name
from customer c
inner join
	payment p on c.customer_id = p.customer_id;

-- S_3:
select
	r.rental_id,
	c.first_name,
	c.last_name
from customer c
inner join
	rental r on c.customer_id = r.customer_id;