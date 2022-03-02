/*
 * P_1: Film tablosunda bulunan replacement_cost sütununda bulunan
 *      birbirinden farklı değerleri sıralayınız.
 * 
 * P_2: Film tablosunda bulunan replacement_cost sütununda 
 *      birbirinden farklı kaç tane veri vardır?
 * 
 * P_3: Film tablosunda bulunan film isimlerinde (title) kaç tanesini 
 *      T karakteri ile başlar ve aynı zamanda rating 'G' ye eşittir?
 * 
 * P_4: Country tablosunda bulunan ülke isimlerinden (country) kaç tanesi 
 *      5 karakterden oluşmaktadır?
 * 
 * P_5: City tablosundaki şehir isimlerinin kaç tanesi 'R' veya r karakteri ile biter?
 * 
 * */

-- S_1:
select distinct replacement_cost from film;

-- S_2: 21
select count(distinct replacement_cost) from film; 

-- S_3: 9
select count(*) from film f where title like 'T%' and rating = 'G'; 

-- S_4: 13
select count(*) from country c where country like '_____';

--S_5: 33
select count(*) from city where city ilike '%R';