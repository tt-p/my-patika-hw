/*
 * P_1: Film tablosunda bulunan rental_rate sütunundaki değerlerin ortalaması nedir?
 * 
 * P_2: Film tablosunda bulunan filmlerden kaç tanesi 'C' karakteri ile başlar?
 * 
 * P_3: Film tablosunda bulunan filmlerden 
 *      rental_rate değeri 0.99 a eşit olan en uzun (length) film kaç dakikadır?
 * 
 * P_4: film tablosunda bulunan filmlerin uzunluğu 150 dakikadan büyük olanlarına ait 
 *      kaç farklı replacement_cost değeri vardır?
 * 
 * */

-- S_1: 2.98
select avg(rental_rate) from film;

-- S_2: 92
select count(*) from film where title like 'C%';

-- S_3: 184
select max(length) from film where rental_rate = 0.99;

-- S_4: 21
select count(distinct replacement_cost) from film where length > 150;