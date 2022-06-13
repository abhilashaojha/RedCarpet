/* Name- Abhilasha Ojha
Email- abhilasha.ojha1998@gmail.com
Phone number-7003785194
LinkedIn-https://www.linkedin.com/in/abhilasha-ojha-a59330171/ 
Database Software used: MySQL-8.0 Command Line Client and MySQl Workbench
*/

create database redcarpet;
show databases;

/*Output: Databases
+--------------------+
| Database           |
+--------------------+
| assignment         |
| information_schema |
| mysql              |
| new_schema         |
| performance_schema |
| project            |
| project1           |
| redcarpet          |
| sakila             |
| sys                |
| tst                |
| world              |
+--------------------+
*/

use redcarpet;

# creation of table transaction in the database redcarpet:-------
create table transaction(buyer_id int,purchase_item text(100),refund_item text(100), store_id varchar(255),item_id varchar(255), gross_transaction_value varchar(255));
#inserting values in table transaction-----
insert into transaction(buyer_id,purchase_item,refund_item, store_id,item_id, gross_transaction_value) values('3','2019-09-19 21:19:06.544',NULL,'a','a1','$58');
insert into transaction(buyer_id,purchase_item,refund_item, store_id,item_id, gross_transaction_value) values('12','2019-12-10 20:10:14.324','2019-12-15 23:19:06.544','b','b2','$475');
insert into transaction(buyer_id,purchase_item,refund_item, store_id,item_id, gross_transaction_value) values('3','2020-09-01 23:59:46.561','2020-09-02 21:22:06.331','f','f9','$33');
insert into transaction(buyer_id,purchase_item,refund_item, store_id,item_id, gross_transaction_value) values('2','2020-04-03 21:19:06.544',NULL,'d','d3','$250');
insert into transaction(buyer_id,purchase_item,refund_item, store_id,item_id, gross_transaction_value) values('1','2020-10-22 22:20:06.531',NULL,'f','f2','$91');
insert into transaction(buyer_id,purchase_item,refund_item, store_id,item_id, gross_transaction_value) values('8','2020-04-16 21:10:22.214',NULL,'e','e7','$24');
insert into transaction(buyer_id,purchase_item,refund_item, store_id,item_id, gross_transaction_value) values('5','2019-09-23 12:09:35.542','2019-09-27 02:33:02.154','g','g5','$61');
select * from transaction;

/* OUTPUT: The transaction table------
+----------+-------------------------+-------------------------+----------+---------+-------------------------+
| buyer_id | purchase_item           | refund_item             | store_id | item_id | gross_transaction_value |
+----------+-------------------------+-------------------------+----------+---------+-------------------------+
|        3 | 2019-09-19 21:19:06.544 | NULL                    | a        | a1      | $58                     |
|       12 | 2019-12-10 20:10:14.324 | 2019-12-15 23:19:06.544 | b        | b2      | $475                    |
|        3 | 2020-09-01 23:59:46.561 | 2020-09-02 21:22:06.331 | f        | f9      | $33                     |
|        2 | 2020-04-03 21:19:06.544 | NULL                    | d        | d3      | $250                    |
|        1 | 2020-10-22 22:20:06.531 | NULL                    | f        | f2      | $91                     |
|        8 | 2020-04-16 21:10:22.214 | NULL                    | e        | e7      | $24                     |
|        5 | 2019-09-23 12:09:35.542 | 2019-09-27 02:33:02.154 | g        | g5      | $61                     |
+----------+-------------------------+-------------------------+----------+---------+-------------------------+
*/

#Renaming the column names purchase_item and refund_item to purchase_time and refund_time---------------
ALTER table transaction RENAME COLUMN purchase_item TO purchase_time;
ALTER table transaction RENAME COLUMN refund_item TO refund_time;
select * from transaction;

/* The final transaction table:-----------
+----------+-------------------------+-------------------------+----------+---------+-------------------------+
| buyer_id | purchase_time           | refund_time             | store_id | item_id | gross_transaction_value |
+----------+-------------------------+-------------------------+----------+---------+-------------------------+
|        3 | 2019-09-19 21:19:06.544 | NULL                    | a        | a1      | $58                     |
|       12 | 2019-12-10 20:10:14.324 | 2019-12-15 23:19:06.544 | b        | b2      | $475                    |
|        3 | 2020-09-01 23:59:46.561 | 2020-09-02 21:22:06.331 | f        | f9      | $33                     |
|        2 | 2020-04-03 21:19:06.544 | NULL                    | d        | d3      | $250                    |
|        1 | 2020-10-22 22:20:06.531 | NULL                    | f        | f2      | $91                     |
|        8 | 2020-04-16 21:10:22.214 | NULL                    | e        | e7      | $24                     |
|        5 | 2019-09-23 12:09:35.542 | 2019-09-27 02:33:02.154 | g        | g5      | $61                     |
+----------+-------------------------+-------------------------+----------+---------+-------------------------+
*/

#Creation of Items table------------
create table Items(store_id varchar(255),item_id varchar(255),item_category text(100),item_name text(100));
insert into Items(store_id,item_id,item_category,item_name) values('a','a1','pants','Denim pants');
insert into Items(store_id,item_id,item_category,item_name) values('a','a2','tops','Blouse');
insert into Items(store_id,item_id,item_category,item_name) values('f','f1','table','Coffee Table');
insert into Items(store_id,item_id,item_category,item_name) values('f','f5','chair','Lounge chair');
insert into Items(store_id,item_id,item_category,item_name) values('f','f6','chair','Arm chair');
insert into Items(store_id,item_id,item_category,item_name) values('d','d2','Jewellery','bracelet');
insert into Items(store_id,item_id,item_category,item_name) values('b','b4','Earphone','Airpods');
select * from Items;

/*OUTPUT: Items table:--------
+----------+---------+---------------+--------------+
| store_id | item_id | item_category | item_name    |
+----------+---------+---------------+--------------+
| a        | a1      | pants         | Denim pants  |
| a        | a2      | tops          | Blouse       |
| f        | f1      | table         | Coffee Table |
| f        | f5      | chair         | Lounge chair |
| f        | f6      | chair         | Arm chair    |
| d        | d2      | Jewellery     | bracelet     |
| b        | b4      | Earphone      | Airpods      |
+----------+---------+---------------+--------------+
*/
#1.] What is the count of purchases of per month(excluding refund purchases)?
select purchase_time, count(month(purchase_time)) from (select * from transaction where refund_time is null) as purchase_month 
group by month(purchase_time);

/* OUTPUT: 
+-------------------------+-----------------------------+
| purchase_time           | count(month(purchase_time)) |
+-------------------------+-----------------------------+
| 2019-09-19 21:19:06.544 |                           1 |
| 2020-04-03 21:19:06.544 |                           2 |
| 2020-10-22 22:20:06.531 |                           1 |
+-------------------------+-----------------------------+
*/

#Observation: As we can see in the table, 1 purchase took place in the month of September,2019, 2 in the month of April,2020 and 1 in the month of October,2020.

# 2.] How many stores recieve at least 5 order/transactions in October 2020?

# 3.] For each store, what is the shortest interval(in min) from purchase to refund time?
ALTER table transaction ADD COLUMN shortest_interval_days int AS (DATEDIFF(refund_time,purchase_time));
ALTER table transaction ADD COLUMN shortest_interval_mins int AS (DATEDIFF(refund_time,purchase_time)*24*60);
select * from transaction;
/*
+----------+-------------------------+-------------------------+----------+---------+-------------------------+------------------------+------------------------+
| buyer_id | purchase_time           | refund_time             | store_id | item_id | gross_transaction_value | shortest_interval_days | shortest_interval_mins |
+----------+-------------------------+-------------------------+----------+---------+-------------------------+------------------------+------------------------+
|        3 | 2019-09-19 21:19:06.544 | NULL                    | a        | a1      | $58                     |                   NULL |                   NULL |
|       12 | 2019-12-10 20:10:14.324 | 2019-12-15 23:19:06.544 | b        | b2      | $475                    |                      5 |                   7200 |
|        3 | 2020-09-01 23:59:46.561 | 2020-09-02 21:22:06.331 | f        | f9      | $33                     |                      1 |                   1440 |
|        2 | 2020-04-03 21:19:06.544 | NULL                    | d        | d3      | $250                    |                   NULL |                   NULL |
|        1 | 2020-10-22 22:20:06.531 | NULL                    | f        | f2      | $91                     |                   NULL |                   NULL |
|        8 | 2020-04-16 21:10:22.214 | NULL                    | e        | e7      | $24                     |                   NULL |                   NULL |
|        5 | 2019-09-23 12:09:35.542 | 2019-09-27 02:33:02.154 | g        | g5      | $61                     |                      4 |                   5760 |
+----------+-------------------------+-------------------------+----------+---------+-------------------------+------------------------+------------------------+
*/
#Observation: As we can see that the minimum interval in minutes is approximately 1440 minutes.

# 4.] What is the gross_transaction_value of every store’s first order?
With first_occurence As (select *, ROW_NUMBER() OVER (PARTITION BY store_id order by purchase_time) from transaction)
select store_id, item_id, purchase_time from first_occurence;

#5.] What is the most popular item name that buyers order on their first purchase?
select item_name,store_id from Items group by store_id,item_name order by store_id,item_name;

/*
+--------------+----------+
| item_name    | store_id |
+--------------+----------+
| Blouse       | a        |
| Denim pants  | a        |
| Airpods      | b        |
| bracelet     | d        |
| Arm chair    | f        |
| Coffee Table | f        |
| Lounge chair | f        |
+--------------+----------+
*/

# 6.] Create a flag in the transaction items table indicating whether the refund can be processed or not. 
#The condition for a refund to be processed is that it has to happen within 72 of Purchase time.

ALTER TABLE transaction ADD COLUMN refund VARCHAR(20) AS (CASE WHEN refund_time is NULL THEN 'Not requested' WHEN refund_time < purchase_time 
THEN "Error" WHEN (DATEDIFF(refund_time,purchase_time)*24) > 72 THEN "too late" ELSE "accepted" END);
select purchase_time, refund_time, refund from transaction;

/* OUTPUT: 'refund' column added-------
+-------------------------+-------------------------+---------------+
| purchase_time           | refund_time             | refund        |
+-------------------------+-------------------------+---------------+
| 2019-09-19 21:19:06.544 | NULL                    | Not requested |
| 2019-12-10 20:10:14.324 | 2019-12-15 23:19:06.544 | too late      |
| 2020-09-01 23:59:46.561 | 2020-09-02 21:22:06.331 | accepted      |
| 2020-04-03 21:19:06.544 | NULL                    | Not requested |
| 2020-10-22 22:20:06.531 | NULL                    | Not requested |
| 2020-04-16 21:10:22.214 | NULL                    | Not requested |
| 2019-09-23 12:09:35.542 | 2019-09-27 02:33:02.154 | too late      |
+-------------------------+-------------------------+---------------+
Observation: As we can see that in the refund column only one of the refund is eligible for processessing.
*/

