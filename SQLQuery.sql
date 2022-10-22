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
  