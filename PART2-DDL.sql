-- no.1
create database alta_online_shop;

-- no.2
use alta_online_shop;
drop table users;
-- 2-a
create table users(
id int primary key not null auto_increment,
name varchar(50),
gender enum('M','F'),
Stats enum('active','Inactive'),
created_at datetime default current_timestamp,
updated_at datetime default current_timestamp,
deleted_at datetime
);

-- 2-b
create table products(
id int primary key not null auto_increment,
name varchar(50),
price decimal,
product_type_id int,
created_at datetime default current_timestamp,
updated_at datetime default current_timestamp,
constraint fk_Product_type foreign key (product_type_id) 
references product_types(id) ON DELETE CASCADE ON UPDATE CASCADE
);

create table Product_types(
id int primary key not null auto_increment,
categories varchar(50),
created_at datetime default current_timestamp,
updated_at datetime default current_timestamp
);

create table Product_descriptions(
Product_id int primary key not null auto_increment,
descriptions text,
created_at datetime,
updated_at datetime,
constraint fk_product_descriptions foreign key (product_id) 
references products(id)
);

create table payment_methods(
id int primary key not null auto_increment,
name varchar(50),
created_at datetime,
updated_at datetime
);

-- 2-c
create table transactions(
id int primary key not null auto_increment,
user_id int,
total_qty int,
total_transaction decimal,
transcaction_date datetime,
payment_method_id int,
created_at datetime,
updated_at datetime,
constraint fk_user foreign key (user_id) 
references users(id) ON DELETE CASCADE ON UPDATE CASCADE,
constraint fk_payment_method foreign key (payment_method_id) 
references payment_methods(id) ON DELETE CASCADE ON UPDATE CASCADE
);

create table transaction_details(
id int primary key not null auto_increment,
transaction_id int,
Product_id int,
price decimal,
qty int,
created_at datetime,
updated_at datetime,
constraint fk_transaction foreign key (transaction_id) 
references transactions(id) ON DELETE CASCADE ON UPDATE CASCADE,
constraint fk_product foreign key (product_id) 
references products(id) ON DELETE CASCADE ON UPDATE CASCADE
);

show tables from alta_online_shop;
show columns from products;

-- no.3

create table kurir(
id int ,
name varchar(50),
created_at datetime,
updated_at datetime
);

-- no.4

alter table kurir
add ongkos_dasar int;

-- no.5 
Rename table kurir to shipping;

-- no.6 
drop table shipping;

-- no.7
-- 7a
create table payment_method_descriptions(
payment_method_id int primary key not null auto_increment,
description varchar(255),
created_at datetime,
updated_at datetime,
constraint fk_payment_method_id foreign key (payment_method_id) 
references payment_methods(id)
);

-- 7b
create table address(
id int primary key,
user_id int,
adress varchar(255),
constraint fk_user_id foreign key (user_id) 
references users(id) ON DELETE CASCADE ON UPDATE CASCADE
);

-- 7c
create table user_payment_method_detail(
id int primary key not null auto_increment,
user_id int,
payment_method_id int,
detail varchar(255),
constraint fk_user_detail foreign key (user_id) 
references users(id) ON DELETE CASCADE ON UPDATE CASCADE,
constraint fk_payment_method_detail foreign key (payment_method_id) 
references payment_methods(id) ON DELETE CASCADE ON UPDATE CASCADE
);
