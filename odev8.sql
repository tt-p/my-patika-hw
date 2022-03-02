/*
 * P_1: Test veritabanınızda employee isimli sütun bilgileri 
 *      id(INTEGER), name VARCHAR(50), birthday DATE, email VARCHAR(100) 
 *      olan bir tablo oluşturalım.
 * 
 * P_2: Oluşturduğumuz employee tablosuna 'Mockaroo' servisini kullanarak 
 *      50 adet veri ekleyelim.
 * 
 * P_3: Sütunların her birine göre diğer sütunları güncelleyecek 
 *      5 adet UPDATE işlemi yapalım.
 * 
 * P_4: Sütunların her birine göre ilgili satırı silecek 5 adet DELETE işlemi yapalım.
 * 
 * */

-- S_1:
create table employee(
	id integer,
	name varchar(50),
	birthdate date,
	email varchar(100)
);

-- S_2:
insert into employee (id, name, birthdate, email)
values
	(1,  'Dominga',		'1927-05-28', 'dbindley0@printfriendly.com'),
	(2,  'Dacie',		'1975-08-22', 'dsignoret1@goo.ne.jp'),
	(3,  'Aleda',		'1936-12-23', 'ahoys2@tripod.com'),
	(4,  'Letti',		'1983-02-01', 'lconaghy3@cam.ac.uk'),
	(5,  'Jerrine',		'1924-05-06', 'jlighterness4@elpais.com'),
	(6,  'Kellina',		'1996-01-14', 'keyckelberg5@virginia.edu'),
	(7,  'Griselda',	'1981-09-21', 'gcabel6@indiatimes.com'),
	(8,  'Kris',		'1955-12-17', 'kduplantier7@jiathis.com'),
	(9,  'Allie',		'1996-03-03', 'aridley8@nifty.com'),
	(10, 'Mellie',		'1930-07-13', 'mgroves9@gmpg.org'),
	(11, 'Oneida',		'1915-08-12', 'ocoutharda@springer.com'),
	(12, 'Donia',		'1941-02-25', 'dcolebornb@hexun.com'),
	(13, 'Daron',		'1978-02-04', 'dcopperwaitec@oracle.com'),
	(14, 'Dagmar',		'1915-02-16', 'dbramed@pagesperso-orange.fr'),
	(15, 'Cacilia',		'1920-02-19', 'cdennistoune@newsvine.com'),
	(16, 'Bordy',		'1999-12-10', 'bcohalanf@google.com.br'),
	(17, 'Ninnetta',	'1988-10-14', 'nhardingtong@github.com'),
	(18, 'Mathe',		'1998-08-04', 'mromanskih@archive.org'),
	(19, 'Freeland',	'1915-04-29', 'ftenpennyi@senate.gov'),
	(20, 'Robbie',		'1973-10-11', 'ruttleyj@oaic.gov.au'),
	(21, 'Stephana',	'1952-07-07', 'sgennyk@businessinsider.com'),
	(22, 'Cameron',		'1954-04-29', 'cmozzettil@free.fr'),
	(23, 'Merrill',		'2010-09-06', 'mgreenwoodm@elpais.com'),
	(24, 'Kahlil',		'1969-02-11', 'kcartmailn@hexun.com'),
	(25, 'Benito',		'1945-10-31', 'btommeno@wsj.com'),
	(26, 'Naoma',		'1943-04-26', 'nheseyp@kickstarter.com'),
	(27, 'Antonina',	'2017-01-23', 'awaggeq@google.nl'),
	(28, 'Steffie',		'1933-07-27', 'sbentjensr@163.com'),
	(29, 'Donnajean',	'1958-09-24', 'dathelstans@ft.com'),
	(30, 'Andee',		'2007-11-11', 'akoubekt@stumbleupon.com'),
	(31, 'Cathrin',		'1922-02-24', 'csuthernsu@moonfruit.com'),
	(32, 'Samson',		'1942-02-12', 'sshopcottv@wikispaces.com'),
	(33, 'Sheilah',		'1944-04-23', 'sgarrochw@webmd.com'),
	(34, 'Yoshi',		'2007-04-13', 'ylantuffx@rakuten.co.jp'),
	(35, 'Che',			'1910-12-15', 'csnadeny@digg.com'),
	(36, 'Waylon', 		'1959-07-16', 'wprangnellz@pinterest.com'),
	(37, 'Porter', 		'1985-11-19', 'pbethune10@angelfire.com'),
	(38, 'Norry', 		'1910-06-26', 'nminnette11@nhs.uk'),
	(39, 'Anatole', 	'1998-11-28', 'akivlehan12@cafepress.com'),
	(40, 'Trescha', 	'1986-04-20', 'tmertel13@hhs.gov'),
	(41, 'Isidore', 	'2003-01-21', 'irowbottom14@slate.com'),
	(42, 'Skipper', 	'2016-07-04', 'swerndly15@umich.edu'),
	(43, 'Jeramie', 	'1954-12-26', 'jphaup16@twitpic.com'),
	(44, 'Conny', 		'2009-04-30', 'cglasscoe17@unblog.fr'),
	(45, 'Clementia', 	'2006-12-21', 'cfrankiss18@ed.gov'),
	(46, 'Darci', 		'1989-08-11', 'dcanizares19@indiatimes.com'),
	(47, 'Fayth', 		'1980-12-17', 'frevel1a@rambler.ru'),
	(48, 'Arda', 		'1952-09-25', 'abraithwaite1b@geocities.jp'),
	(49, 'Raul', 		'1987-05-24', 'rbessom1c@nps.gov'),
	(50, 'Christi', 	'1942-05-03', 'cproven1d@weebly.com');

-- S_3:
update employee
set name =		'Anna',
	birthdate =	'1915-05-19',
	email =		'anna@mail.com'
where id = 1;

update employee
set id =		51,
	birthdate =	'2000-11-28',
	email =		'dacie@mail.com'
where name = 'Dacie';

update employee
set id =		52,
	name =		'Mary',
	email =		'mry@mail.com'
where birthdate = '1936-12-23';

update employee
set id =		53,
	name =		'Anna',
	birthdate =	'2005-04-02'
where email = 'lconaghy3@cam.ac.uk';

update employee
set name =		'Sam',
	birthdate =	'1957-10-11',
	email =		'sam@mail.com'
where id = 5;

-- S_4:
delete from employee where id between 10 and 15;

delete from employee where name like 'A%e';

delete from employee where birthdate = '1943-04-26';

delete from employee where email like '%.fr';

delete from employee where id in (19, 20);