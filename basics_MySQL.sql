drop  database instagram;
create database instagram;
use instagram;
CREATE TABLE user(
	id int PRIMARY KEY,
    age int,
    name varchar(30) NOT NULL,
    email varchar(30) UNIQUE,
    followers int DEFAULT 0,
    following int,
    CONSTRAINT CHECK ( age >=13)
);
CREATE TABLE post(
	id int 	PRIMARY KEY ,
    content varchar(100),
    user_id int,
    FOREIGN KEY (user_id) REFERENCES user(id)
);



INSERT INTO user(id,age,name,email,followers,following) 
values(1,14,"Adom","adom@yahoo.in",123,145),
(2,15,"bob","bob123@gmail.com",200,200),
(3,16,"casey","casey@gmail.com",300,306),
(4,17,"donald","donald@gmail.com",200,105);

select id,age,name,email from user;
select * from user;

select  * from  user where followers>=200; 

select  name from  user where followers>=200; 
select  name,age from  user where age+1=18; 
select  * from  user where age BETWEEN 15 AND 17; 

select name,email,followers from user  where email IN ("donald@gmail.com","bob123@gmail.com","abcd@gmail.com");
select name,age from user where age NOT IN (14,16);

select * from user  LIMIT 1;
select * from user ORDER BY followers ASC;
select * from user ORDER BY followers DESC;

SELECT 
    MAX(followers)
FROM user;
select min(followers) from user;
select count(name) from user;
select sum(followers) from user;
select avg(followers) from user;

select * from user;

select age,count(id) from user group by age;
select age, max(followers) from user group by age having max(followers)>200;
select age, max(followers) from user group by age having max(followers)>200 order by (age) desc;

INSERT INTO user(id,age,name,email,followers,following) 
values(5,14,"Eve","Eve@yahoo.in",2000,145),
(6,16,"jonas","jonas3@gmail.com",100000,10000);

use instagram;
update  user set followers=600 where age =16; 
set sql_safe_updates=0;
select * from user;

delete from user where age=14;

alter table user add  column city varchar(20) default "Delhi";

alter table user drop column age;

alter table user rename to instauser; 
alter table instauser rename to user;
alter table user change followers subs int default 0;
alter table user modify subs int default 5;
select * from user;

insert into user (id,name,email,following,city) values(8,"xyz","xyz@gmail.com",900,"shrirampur");
truncate table user;
drop table user;

#practice set1 

create database if not exists college;
use college;

create table teacher(id int primary key,name varchar(25),subject varchar(25),salary int);
insert into teacher(id,name,subject,salary)
 values(23,"ajay","math",50000),
 (47,"bharat","english",60000),
 (18,"chetan","chemistry",45000),
 (9,"duivya","physics",75000);
 
 select * from teacher;
 
 select * from teacher where salary>55000;
 alter table teacher change salary ctc int;
 update  teacher set ctc= ctc+2500;
 
 update teacher set ctc=ctc + 25000;
 use college;
 alter table teacher add city varchar(25) default "Gurgaon";
 
 alter table teacher drop column ctc;
 
 
  select * from teacher;
  
  
  # practice set 2
  drop table student;
  create table student(rno int primary key,name varchar(25),city varchar(25),marks int);
  insert into student(rno,name,city,marks) values(110,"adam","delhi",76),(108,"bob","mumbai",65),(124,"casey","pune",94),(112,"duke","pune",80);
	select * from student;
    
    select * from student where marks>75;
    select distinct city from student;
    select city from student group by city;
    select city, max(marks) from student group by city;
    select avg(marks) from student;
    alter table student add column grade varchar(2);
 update student set grade="O" where marks>=80;
 update student set grade="A" where marks>=70 AND marks<80;
 update student set grade="B" where marks>=60 AND marks<70;
 
 select * from student;
 
 use instagram;
 create table employee (empid int primary key,firstname varchar(30),lastname varchar(30), dept varchar(30),salary int, hiredate date);
 insert into employee (empid,firstname,lastname,dept,salary,hiredate)
 values(101,"Alice","johnson","IT",6500,'2020-03-15'),
	(102,"mark","Rivera","HR",4800,'2019-07-22'),
    (103,"sophia","lee","finance",7200,'2021-01-10'),
    (104,"daniel","kim","IT",5800,'2018-11-05'),
	(105,"emma","brown","marketing",5300,'2022-04-18'),
	(106,"liam","patel","finance",6900,'2020-09-29'),
	(107,"olivia","garcia","HR",4600,'2017-06-30'),
	(108,"noah","thompson","IT",7500,'2023-02-12'),
	(109,"ava","martinez","marketing",5100,'2019-12-02'),
	(110,"ethan","davis","finance",8000,'2016-05-14'); 
 
  select @@autocommit;
  set autocommit=0;
  
  create database prime;
  use prime;
  create table account(id int primary key auto_increment,name varchar(30),balance decimal(10,2));
  insert into account(name,balance) values("Adam",300.00),("Bob",500.00),("Charlie",1000.00);
  select * from account;
  
  start transaction;
  update account set balance=balance-50 where id=1;
   update account set balance=balance+50 where id=2;
   commit;
   
   start transaction;
  update account set balance=balance+1000 where id=1;
  savepoint after_wallet_topup;
   update account set balance=balance+10 where id=1;
   -- error
   rollback  to after_wallet_topup;
   commit;
   -- inner join in sql --------------------------------------------------------------
   
   
   create table customers(id int primary key,name varchar(25),city varchar(40));
   insert into customers(id,name,city) values(1,"Alice","Mumbai"),(2,"bob","delhi"),(3,"charlie","banglore"),(4,"david","mumbai");
   select * from customers;
   create table orders(oid int primary key,id int,amount int);
   insert into orders(oid,id,amount) values(101,1,500),(102,1,900),(103,2,300),(104,5,700);
   select * from orders;
   
   -- inner join -> it tables common from both
   select * from customers c inner join orders o on c.id=o.id;
   select c.id,o.id,c.name from customers c  inner join orders o on c.id=o.id;
   
   -- left join or left outer join=>only common values are include and first table all values
   select * from customers c left join orders o on c.id=o.id;
   
-- right join=> only common values are include and second table all values
select * from customers c right join orders o on c.id=o.id;

-- outer join-> both  tables are include we take union of both values
   select * from customers c left join orders o on c.id=o.id
   union
   select * from customers c right join orders o on c.id=o.id;
   
   -- cross join =>first table cross with all rows in another atble
   select  * from  customers cross join orders;
   
   -- self join both tables are same
   select * from customers as A join customers as B on A.id=B.id;
  
  
  
  -- left exclusive join
  select * from customers c left join orders o on c.id=o.id;
  select * from customers c left join orders o on c.id=o.id where o.id is null;
  
  -- right exclusive join
  select * from customers c right join orders o on c.id=o.id where c.id is null;
  
  -- sub queries // nested query query within query for where
  select * from orders where amount >(select avg(amount) from orders);
 -- sub query inside sewlect statement 
  select name ,(select count(*) from orders o where o.id=c.id) as order_count from customers c;
  -- subquery inside from statement
  select summary.id,summary.avg_amount from(select id, avg(amount)as avg_amount from orders group by id) as summary;
  -- veiws in SQL
  create view view1 as
  select id,name from customers;
  select * from view1;
  
    select * from view1 where name="Alice";
    create view view2 as
    select c.id, name, o.oid
    from  customers as c
   inner join orders as o on c.id=o.id;
   select * from view2;
-- drop view view1

  -- indes in SQL special db oject that make faster data retireaval
  use prime;
  select * from account;
  create index branch_idx on account(branch);
	show index from accounts;
    
    -- composite index multiple column la index banbvu shakto it is also called multicolumn index
    create index idx2 on account(branch,balance);
    show index from accounts;
    drop index idx2 on account;
  -- stored procedures =>functions set of queries which are saved
  delimiter $$
  create procedure check_bal(in acc_id int, out bal decimal(10,2)) 
  begin
  select balance into bal from account where id=acc_id;
  end $$
  delimiter ;
  
  call check_bal(1, @balance);
  select @balance;
  drop procedure if exists check_bal;
  
  
  
  
  
  
  
  
  
  
  
  
  
 