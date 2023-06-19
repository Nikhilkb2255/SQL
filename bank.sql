create database bank;

use bank;
create table branch(branch_name varchar(20), branch_city varchar(20), assets varchar(30));
create table customer(customer_name varchar(20), customer_street varchar(30), customer_city varchar(20));
create table loan(loan_no int(20), branch_name varchar(20), amount int(20));
create table acnt(acnt_no int(20), branch_name varchar(20), balance int(20));
create table depositor(customer_name varchar(20), acnt_no varchar(20));
create table borrower(customer_name varchar(20), loan_no varchar(20));

use bank;
insert into branch(br_name, br_city, assets)values('Apple', 'Bombay', 'Xxx');
insert into branch(br_name, br_city, assets)values('Realme', 'Mumbai', 'Yyy');
insert into branch(br_name, br_city, assets)values('Samsung', 'Goa', 'Zzz');
insert into branch(br_name, br_city, assets)values('Vivo', 'Mumbai', 'Www');
insert into branch(br_name, br_city, assets)values('Oneplus', 'Punjab', 'Vvv');

insert into customer(customer_name, customer_street, customer_city)values('David', 'Harison', 'Chennai');
insert into customer(customer_name, customer_street, customer_city)values('Anna', 'Aroor', 'Pune');
insert into customer(customer_name, customer_street, customer_city)values('Jenny', 'Taroor', 'Pune');
insert into customer(customer_name, customer_street, customer_city)values('Rahul', 'Harison', 'Chennai');
insert into customer(customer_name, customer_street, customer_city)values('Smith', 'Harison', 'Pune');

insert into loan(loan_no, br_name, amount)values('123', 'Apple', '25000');
insert into loan(loan_no, br_name, amount)values('124', 'Realme', '35000');
insert into loan(loan_no, br_name, amount)values('125', 'Samsung', '45000');
insert into loan(loan_no, br_name, amount)values('126', 'Oppo', '55000');
insert into loan(loan_no, br_name, amount)values('127', 'Motorola', '65000');

insert into acnt(acnt_no, br_name, balance)values('2255', 'Apple', '60000');
insert into acnt(acnt_no, br_name, balance)values('2266', 'Realme', '70000');
insert into acnt(acnt_no, br_name, balance)values('2277', 'Samsung', '80000');
insert into acnt(acnt_no, br_name, balance)values('2288', 'Oppo', '90000');
insert into acnt(acnt_no, br_name, balance)values('2299', 'Motorola', '80000');

insert into depositor(customer_name, acnt_no)values('Tim', '3690');
insert into depositor(customer_name, acnt_no)values('Raju', '3692');
insert into depositor(customer_name, acnt_no)values('Alex', '3694');
insert into depositor(customer_name, acnt_no)values('David', '2255');
insert into depositor(customer_name, acnt_no)values('Anna', '2266');

insert into borrower(customer_name, loan_no)values('Hari', '127');
insert into borrower(customer_name, loan_no)values('Jimmy', '128');
insert into borrower(customer_name, loan_no)values('Sachin', '124');
insert into borrower(customer_name, loan_no)values('Rahul', '125');
insert into borrower(customer_name, loan_no)values('Smith', '126');

-- Question-1
select customer_name from customer where customer_name not in (select customer_name from borrower);

-- Question-2
select customer_name from customer where customer_street = 'Taroor' and customer_city = 'Pune';

-- Question-3
use bank;
select customer_name from customer where customer_street == 'Harison';
