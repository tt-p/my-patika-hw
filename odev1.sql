/*
 * P_1: Film tablosunda bulunan title ve description sütunlarındaki verileri sıralayınız.
 * 
 * P_2: Film tablosunda bulunan tüm sütunlardaki verileri
 *		film uzunluğu (length) 60 dan büyük VE 75 ten küçük olma koşullarıyla sıralayınız.
 * 
 * P_3: Film tablosunda bulunan tüm sütunlardaki verileri
 *     rental_rate 0.99 VE replacement_cost 12.99 VEYA 28.99 olma koşullarıyla sıralayınız.
 * 
 * P_4: Customer tablosunda bulunan 
 *		first_name sütunundaki değeri 'Mary' olan müşterinin last_name sütunundaki değeri nedir?
 * 
 * P_5: Film tablosundaki uzunluğu(length) 50 ten büyük OLMAYIP
 *		aynı zamanda rental_rate değeri 2.99 veya 4.99 OLMAYAN verileri sıralayınız.
 * 
 * */

-- S_1:
select title, description from film;

-- S_2:
select * from film where length > 60 and length < 75;

-- S_3:
select * from film where rental_rate = 0.99 and (replacement_cost = 12.99 or replacement_cost = 28.99);

-- S_4: Smith
select last_name from customer where first_name = 'Mary';

-- S_5:
select * from film where not length > 50 and not (rental_rate = 2.99 or rental_rate = 4.99);