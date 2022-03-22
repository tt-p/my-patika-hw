/*
 * P_1: Actor ve customer tablolarında bulunan 
 *      first_name sütunları için tüm verileri sıralayalım.
 * 
 * P_2: Actor ve customer tablolarında bulunan first_name sütunları için
 *      kesişen verileri sıralayalım.
 * 
 * P_3: Actor ve customer tablolarında bulunan first_name sütunları için
 *      ilk tabloda bulunan ancak ikinci tabloda bulunmayan verileri sıralayalım.
 * 
 * P_4: İlk 3 sorguyu tekrar eden veriler için de yapalım.
 * 
 * */

-- S_1:
(select first_name from actor) union (select first_name from customer);

-- S_2:
(select first_name from actor) intersect (select first_name from customer);

-- S_3:
(select first_name from actor) except (select first_name from customer);

-- S_4:
(select first_name from actor) union all (select first_name from customer);

(select first_name from actor) intersect all (select first_name from customer);

(select first_name from actor) except all (select first_name from customer);