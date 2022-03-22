/*
 * P_1: Country tablosunda bulunan country sütunundaki ülke isimlerinden 
 *      'A' karakteri ile başlayıp 'a' karakteri ile sonlananları sıralayınız.
 * 
 * P_2: Country tablosunda bulunan country sütunundaki ülke isimlerinden 
 *      en az 6 karakterden oluşan ve sonu 'n' karakteri ile sonlananları sıralayınız.
 * 
 * P_3: Film tablosunda bulunan title sütunundaki film isimlerinden 
 *      en az 4 adet büyük ya da küçük harf farketmesizin 'T' karakteri içeren film isimlerini sıralayınız.
 * 
 * P_4: Film tablosunda bulunan tüm sütunlardaki verilerden 
 *      title 'C' karakteri ile başlayan ve uzunluğu (length) 90 dan büyük olan ve rental_rate 2.99 olan verileri sıralayınız.
 * 
 * */

-- S_1:
select country from country where country like 'A%a';

-- S_2:
select country from country where country like '%_____n';

-- S_3:
select title from film where title ilike '%t%t%t%t%';

-- S_4:
select * from film where title like 'C%' and length > 90 and rental_rate = 2.99;