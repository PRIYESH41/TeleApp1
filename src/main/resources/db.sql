drop schema teleapp_mono;
create schema teleapp_mono;

use teleapp_mono;

drop table customer;
drop table calldetails;
drop table friendfamily;
drop table plan;

create table plan(
plan_id integer primary key,
plan_name varchar(50),
local_rate integer,
national_rate integer);

create table customer(
phone_no bigint primary key,
name varchar(50),
age integer,
gender char,
address varchar(50),
plan_id integer references plan(plan_id),
password varchar(50)
);


create table calldetails(
id integer primary key,
called_by bigint,
called_to bigint,
called_on date,
duration integer);


create table friendfamily(
id integer primary key AUTO_INCREMENT,
phone_no bigint references customer(phone_no),
friend_and_family BIGINT 
);

insert into plan (plan_id,plan_name,local_rate,national_rate) values(1,'TEL_60',60,60);
insert into plan (plan_id,plan_name,local_rate,national_rate) values(2,'JIO_10',10,20);
insert into plan (plan_id,plan_name,local_rate,national_rate) values(3,'AIR_30',30,60);

insert into customer (phone_no,name,age,gender,address,plan_id,password) values(9009009001,'Mark',25,'M','Chicago',1,'mark@123');
insert into customer (phone_no,name,age,gender,address,plan_id,password) values(9009009002,'Sofia',56,'F','Texas',2,'7hjUavb*');
insert into customer (phone_no,name,age,gender,address,plan_id,password) values(9009009003,'Vikash',23,'F','India',3,'@aPbj8');

insert into calldetails (id,called_by,called_to,called_on,duration)  values(1,9009009001,9009009002,'2017-08-12',34);
insert into calldetails (id,called_by,called_to,called_on,duration)  values(2,9009009002,9009009003,'2017-08-11',4);
insert into calldetails (id,called_by,called_to,called_on,duration)  values(3,9009009003,9009009001,'2017-08-10',14);
insert into calldetails (id,called_by,called_to,called_on,duration)  values(4,9009009001,9009009002,'2017-08-13',3);
insert into calldetails (id,called_by,called_to,called_on,duration)  values(5,9009009002,9009009003,'2017-08-14',55);
insert into calldetails (id,called_by,called_to,called_on,duration)  values(6,9009009003,9009009001,'2017-08-15',126);
insert into calldetails (id,called_by,called_to,called_on,duration)  values(7,9009009001,9009009002,'2017-08-16',79);
insert into calldetails (id,called_by,called_to,called_on,duration)  values(8,9009009002,9009009003,'2017-08-17',3);

insert into friendfamily (id,phone_no,friend_and_family) values(1,9009009001,9009009002);
insert into friendfamily (id,phone_no,freind_and_family) values(2,9009009001,9009009003);
insert into friendfamily (id,phone_no,freind_and_family) values(3,9009009002,9009009005);
insert into friendfamily (id,phone_no,freind_and_family) values(4,9009009003,9009009001);



commit;

select * from customer;
select * from calldetails;
select * from friendfamily;
select * from plan;


--------------------------------------------------
--SCOPE OF CHNAGES

--CAN ADD SPRING SECRITY ,SO ONLY LOGIN CUSTOMERS AND CAN VIEW THEIR ONLY PROFILE,CONTACT,CALL DETAILS
--CAN ADD A DASHBOARD PAGE WHERE ALL CUSTOMERS LIST CAN SHOW TO THE ONLY ADMIN USER