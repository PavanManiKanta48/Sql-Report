-- WHERE clause--

select * from DimCurrency where CurrencyKey>=11 and CurrencyKey<=20
select CurrencyAlternateKey from DimCurrency where CurrencyKey between 11 and 20 group by CurrencyAlternateKey order by currencyalternatekey desc 
--Throw 51000, 'mesage thrown tom',1

----joins---

select*from DimEmployee
select*from DimProduct
 
 select DimEmployee.EmployeeKey,DimEmployee.EmployeeNationalIDAlternateKey,DimProduct.ProductKey,DimProduct.ProductAlternateKey
 from DimEmployee
 join DimProduct
 on DimEmployee.EmployeeKey=DimProduct.ProductKey;
 -----Except clause----
 CREATE Database BookStore;
GO
USE BookStore;
 
CREATE TABLE Books1
(
    id INT primary key,
    name VARCHAR(50) NOT NULL,
    category VARCHAR(50) NOT NULL,
    price INT NOT NULL
 )
 
CREATE TABLE Books2
(
    id INT primary key,
    name VARCHAR(50) NOT NULL,
    category VARCHAR(50) NOT NULL,
    price INT NOT NULL
 )
 insert into books2
 values
 (11, 'Book11', 'Cat11', 1800),
(12, 'Book12', 'Cat12', 1500),
(13, 'Book13', 'Cat13', 2000),
(14, 'Book14', 'Cat14', 1300),
(15, 'Book15', 'Cat15', 1500),
(6, 'Book6', 'Cat6', 5000),
(7, 'Book7', 'Cat7', 8000),
(8, 'Book8', 'Cat8', 5000),
(9, 'Book9', 'Cat9', 5400),
(10, 'Book10', 'Cat10', 3200)

 select * from Books2
 except
 select * from Books2 where price>5000

 select * from books1
 where id not in (select id from Books2)
  


 --create New Tables for joining --

 create database JoinsDatabase
 use JoinsDatabase

 --Table creations---
 create table Employee
 (
 Eid int primary key,
 Ename varchar(20) not null,
 Esal  money not null,
 Deptid int unique,
 Salid int unique
 )

 create table Department
 (
 Did int primary key,
 Dname varchar(20) not null, 
 )
 

 create table Salary
 (
 [Sid] int primary key,
 Sal money not null, 
 )
 select * from Employee
 select * from Department
 select * from Salary


 insert into employee values(101,'Pavan',15000,105,108)
 insert into employee values(102,'Ram',16000,103,103)
 insert into employee values(103,'Rajiv',14000,104,105)
 insert into employee values(104,'Tarun',17000,102,109)
 insert into employee values(105,'Ramu',13000,120,101)


  insert into Department values(102,'praveen')
  insert into Department values(101,'ramesh')
  insert into Department values(105,'manikanta')
  insert into Department values(108,'teja')

  insert into Salary values(102,'18000')
  insert into Salary values(105,'12000')
  insert into Salary values(103,'16000')
  insert into Salary values(110,'20000')

   
 select * from Employee
 select * from Department
 select * from Salary

 --Join 2 tables
 select Employee.Ename,Department.Dname
  from Employee
  join Department
  on Employee.Deptid=Department.Did  
  
  --left join 3 tables
  select Employee.Ename,Department.Dname,Salary.sal
  from Employee
   left join Department    
  on Employee.Deptid=Department.Did 
  left join Salary
  on Employee.Salid=Salary.[Sid]  
  where Salary.Sal>10000
  
  --right join 2 tables
  select Employee.Ename,Department.Dname
  from Employee
  right join Department
  on Employee.Deptid=Department.Did 
  
  --inner join 2 tables
  select Employee.Ename,Department.Dname
  from Employee
  inner join Department
  on Employee.Deptid=Department.Did  

  --full join 2 tables
  select Employee.Ename,Department.Dname
  from Employee
  full join Department
  on Employee.Deptid=Department.Did  

  select * from Employee
 select * from Department
 --used Between Operator to delete multiple rows
delete from Department where Did between 106 and 112
--inner joins
select e.EName,e.esal,e.Deptid,d.Did,d.Dname
from Employee as e
 join Department as d on e.Deptid=d.Did

 --inner join
 select a.ename as Employee,b.ename as manager 
 from Employee a
 cross join employee b 

  select * from Employee
  select a.ename as employee,b.ename as manager
  from Employee a,Employee b
  where a.Eid=b.Deptid
  
  --guid

  create table Employee
  ( 
  EmpId uniqueidentifier primary key default NewId(),
  EName varchar(50),
  Esal money,
  [Address] varchar(50)
  )

  insert into Employee(EName,Esal,[Address])
  values
  ('pavan',15000,'bhimavaram'),
  ('ram',15000,'palakollu'),
  ('bheem',15000,'visakhapatnam'),
  ('tarun',15000,'machilipatnam')

  select * from Employee where 

  create procedure sp_Employee
  as
  begin
  select * from Employee
  end

  helptext employee

 

 sp_Employee