----step 1

create database foodieDB


use foodieDB

create table users(
userid int primary key identity (1,1) not null ,
name varchar (50) null unique ,
mobile varchar (50) null ,
email  varchar (50) null unique ,
address  varchar (max) null  ,
postcode varchar (50) null ,
password varchar (50) null ,
imgeurl varchar (max) null ,
create_date_time datetime 

)

create table contact (
contectid int primary key identity (1,1) not null ,
Name varchar(50) null ,
Email varchar (50) null ,
subject varchar (200) null ,
massage varchar (max) ,
create_date_time datetime 

)

create table catogreis (
catograyid int   primary key identity (1,1) not null ,
name varchar (50) null ,
imageurl varchar (max),
isActive bit null ,
create_date_time datetime
)
create table products (
productid int primary key identity (1,1) not null ,
Name varchar (50) null ,
Description  varchar (max) null, 
price decimal(18,2),
Quintity int null ,
imageurl varchar (max) null ,
catogray_id int null , --FK
isActive bit null ,
create_date_time datetime

)

create table carts (

cartid int primary key identity (1,1) not null ,
productid int null , --FK
QTY int  null , 

userid int null --FK
)
CREATE TABLE orders (
orderdetialsID   int primary key identity (1,1) not null ,
orderNun varchar (max) null  ,
product_id int null , --fk 
QTY int null ,
userid int null ,
statuts varchar(50),
paymentid int null ,--fk 
orderdate datetime null 

)

create table payment (
paymentid int primary key identity ,
name varchar(50) null ,
cardno varchar(50)  null,
expirydate varchar(50) null ,
CVVNo int null ,
Adress varchar (max) null ,


Paymentmethod varchar (50) null 

)

