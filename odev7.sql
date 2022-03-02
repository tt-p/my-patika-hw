/*
 * P_1: Film tablosunda bulunan filmleri rating değerlerine göre gruplayınız.
 * 
 * P_2: Film tablosunda bulunan filmleri replacement_cost sütununa göre grupladığımızda 
 *      film sayısı 50 den fazla olan replacement_cost değerini 
 *      ve karşılık gelen film sayısını sıralayınız.
 * 
 * P_3: Customer tablosunda bulunan store_id değerlerine karşılık gelen 
 *      müşteri sayılarını nelerdir?
 * 
 * P_4: City tablosunda bulunan şehir verilerini country_id sütununa göre 
 *      gruplandırdıktan sonra en fazla şehir sayısı barındıran 
 *      country_id bilgisini ve şehir sayısını paylaşınız.
 * 
 * */

-- S_1:
select rating from film group by rating;

-- S_2:
select replacement_cost, count(*) from film group by replacement_cost having count(*) > 50 ;

-- S_3: (store_id, count): (1, 326), (2, 273)
select store_id, count(*) from customer group by store_id;

-- S_4: (country_id, count): (44, 60)
select country_id, count(*) from city group by country_id order by count(*) desc limit 1;