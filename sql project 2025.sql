create database greathotel
create table customer (customerid int, customername varchar (25),contact int,addres varchar(25),city varchar(25))
select*from customer
insert into customer (customerid,customername,contact,addres,city)values
(1,'Muthu',678940,'velachery','chennai'),
(2,'Asrar',678342,'kkr','porur'),
(3,'Jeevi',150780,'kmatchi','pallikaranai'),
(4,'Fasil',209050,'thramani','thiruvanmiur'),
(5,'Visva',254554,'koyambedu','kanchepuram')

---employee table
create table employeee(employeeeid int primary key , firstname varchar (25),lastname varchar(35),birthdate varchar(35),dateofjoin varchar(30))
drop table employeee
select*from employeee
insert into employeee(employeeeid,firstname,lastname,birthdate,dateofjoin)values
(1,'Muthu','lakshmi','16/11/2002','01/02/2024'),
(2,'Asrar','hussain','14/02/2003','08/05/2024'),
(3,'Jeevi','juile','15/08/2001','18/09/2024'),
(4,'Fasil','mohamed','16/08/2003','04/05/2024'),
(5,'Visva','sai','07/02/2000','19/08/2023')


-----product table
create table product (productid int primary key,productname varchar(30),Qty int,price int)
drop table products
drop table products
select * from product
insert into product (productid,productname,Qty,price)values(11,'fried rice',2,100),(12,'noodles',1,150),(10,'chili chiken',2,200),(15,'briyani',2,300),(16,'parota',4,150)
---order table
create table orders(orderid int primary key,cusid int,empid int,orderdate varchar(35))
select*from orders
insert into orders(orderid,cusid,empid,orderdate)values(10234,1,1,'07-04-1996'),(10235,2,2,'07-05-1996'),(10236,3,3,'07-06-1996'),(10237,4,4,'07-07-1996'),(10238,5,5,'07-08-1996')
----order detial table
create table ordersdetails(ordersdetailid int,orderid int, foreign key (orderid)references orders(orderid),productid int,foreign key(productid) references product(productid),qty int)
select*from ordersdetails
insert into ordersdetails(ordersdetailid,orderid,productid,qty)values
(1,10234,11,2),
(2,10235,12,1),
(3,10236,10,2),
(4,10237,15,2)
----1.write a queryto fetch the price for the product which  I have orderd?(using joints)
select*from product
select productid,price*qty as totalprice from 
-------
create table emp (emp_id int,emp_name varchar(15))
create table emp_add(emp_id int, emp_add varchar(20))
select * from emp
select*from emp_add
insert into emp(emp_id,emp_name)values(1,'asif'),(2,'karthi'),(3,'aniya'),(4,'asmitha'),(5,'sandeep'),(6,'pavi')
insert into emp_add(emp_id,emp_add)values(1,'chennai'),(2,'medavakam'),(3,'saidapet'),(7,'guindy'),(8,'porur'),(9,'kandanchavadi')
drop table emp_add
--inner join
select e.emp_id,e.emp_name,e1.emp_add from emp e  inner join emp_add e1 on e.emp_id=e1.emp_id
select e.emp_id,e.emp_name,e1.emp_add from emp e  left outer join emp_add e1 on e.emp_id=e1.emp_id
select e.emp_id,e.emp_name,e1.emp_add from emp e   right outer join emp_add e1 on e.emp_id=e1.emp_id
select e.emp_id,e.emp_name,e1.emp_add from emp e full outer join emp_add e1 on e.emp_id=e1.emp_id
select e.emp_id,e.emp_name,e1.emp_add from emp e  cross join emp_add 
--self joining
create table emp_mngr(emp_name varchar(15),mngr_name varchar(15))
select*from emp_mngr
--we find the employees that are the manager of other employees
select e.emp_name,e.mngr_name from emp_mngr e inner join emp_mngr e1 on e.emp_name=e1.mngr_name
-----RANKING FUNCTION---
create table students2006(name varchar(15),totalmark int)
create table students2007(name varchar(15),totalmark int)
insert into students2006 values('sakthi',1050);
insert into students2006 values('dhines',1040);
insert into students2006 values('deva',1020);
insert into students2006 values('divya',1010);
insert into students2007 values('sakthi',1015);
insert into students2007 values('karan',1010);
insert into students2007 values('harish',1012);
insert into students2007 values('anitha',1060);
select*from students2006
select*from students2007
select name,totalmark from students2006 union select name,totalmark from students2007
select name,totalmark from students2006 union all select name,totalmark from students2007
select name,totalmark from students2006 intersect select name,totalmark from students2007
select name,totalmark from students2006 except select name,totalmark from students2007
select name,totalmark from students2007 except select name,totalmark from students2006
-------primary key---
reate table customers(cus_id int primary key,cus_name varchar(15))
select*from customers
insert into customers (cus_id,cus_name)values(101,'sandhiya'),(102,'gayathri'),(103,'sakthi')
create table customers_ord(ord_id int primary key,cus_id int foreign key references customers(cus_id))
select*from customers
select*from customers_ord
insert intenejeo customers _ord(ord_id,cus_id)values(1,101)
---TCL (TRANSACTIONAL CONTROL LANGUAGE)
 --  Commit operation
select * from employee
begin tran 
update employee set empname='sai' where empid=101
select * from employee
commit tran 
 
 begin tran 
 rollback tran

 ---rollback
 begin tran 
 update employee set empname='jai' where empid=102
 select * from employee
 rollback tran

 begin tran 
 rollback tran
 --String function
select len('santhiya')
select substring('santhiya',1,4)
select replace('sql is my fav subject','is','was')
select concat ('santhiya','asrar')
select UPPER ('santhiya')
select LOWER('santhiya')
select CHARINDEX ('R','asrar')
select TRIM(' santhiya')
--Date and time function 
select current_timestamp
select GETDATE()
select DATEADD(year,2,'2024/08/13')
select DATEADD(month,2,'2024/08/13')
select DATEADD(day,2,'2024/08/13')
select DATEDIFF(year,'2024/08/13','2022/08/13')
select DATEDIFF(month,'2024/07/13','2022/07/13')
select DATEPART(year,'2024/08/13')
select DATEPART(month,'2024/08/13')
select DATEPART(day,'2024/08/13')
select DATEPART(WEEKDAY,'2024/08/14')
select ISDATE('2024/08/13')
select * from employee
alter table employee add join_date varchar(20)
update employee set join_date=GETDATE()
update employee set join_date='2023/03/04' where empid=101
--advanced functions
select cast(25.65 as int )
select CONVERT(int,25.65)
select ISNUMERIC('20')
select ISNULL(null,'no')
select ISNULL('yes','no')
--numeric function 
select abs(-4)
select CEILING(25.60) --return the smallest integer value that is greater than or equal to the number
select FLOOR(25.60)  --return the largest integer value that is greater than or equal to the number
select ROUND(255.44,1)
select SQUARE(25)
select SQRT(25)
--aggregate function
select * from employee
select count(*)from employee
select MAX(salary) from employee
select Min(salary) from employee
select SUM(salary) from employee
select AVG(salary) from employee










