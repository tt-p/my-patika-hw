/*
 * P_1: Film tablosunda bulunan ve 
 *      film ismi (title) 'n' karakteri ile biten en uzun (length) 5 filmi sıralayınız.
 * 
 * P_2: Film tablosunda bulunan ve film ismi (title) 'n' karakteri ile biten
 *      en kısa (length) ikinci(6,7,8,9,10) 5 filmi(6,7,8,9,10) sıralayınız.
 * 
 * P_3: Customer tablosunda bulunan last_name sütununa göre azalan yapılan sıralamada
 *      store_id 1 olmak koşuluyla ilk 4 veriyi sıralayınız.
 * 
 * */

-- S_1: 
select * from film where title like '%n' order by length desc limit 5;

-- S_2:
select * from  film where title like '%n' order by length offset 5 limit 5;

-- S_3:
select * from customer where store_id = 1 order by last_name desc limit 4;