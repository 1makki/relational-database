use alta_online_shop;
-- no.1
-- 1-a
insert into product_types (id, categories)
values ("1","alat makan");
insert into product_types (id, categories)
values ("2","eletronik");
insert into product_types (id, categories)
values ("3","kosmetik");
-- 1-b
insert into products (id, name , price, product_type_id)
values ("1","sendok","5000","1"),
("2","garpu","5000","1");
-- 1-c
insert into products (id, name , price, product_type_id)
values ("3","TV","1000000","2"),
("4","radio","500000","2"),
("5","kulkas","800000","2");
-- 1-d
insert into products (id, name , price, product_type_id)
values ("6","wardah","35000","3"),
("7","kahf","45000","3"),
("8","garnier","38000","3");
-- 1-e
insert into product_descriptions (product_id, descriptions)
values ("1","alat makan"),
("2","alat makan"),
("3","elektronik"),
("4","elektronik"),
("5","elektronik"),
("6","kosmetik wanita"),
("7","kosmetik pria"),
("8","kosmetik pria");
-- 1-f
insert into payment_methods (id, name)
values ("1","Transfer bank"),
("2","virtual account"),
("3","E-money");
-- 1-g
insert into users (id, name, gender , stats)
values ("1","Asep","M","active"),
("2","Frida","F","active"),
("3","Agus","M","inactive"),
("4","Fahmi","M","active"),
("5","Rumini","F","active");
-- 1-h
insert into transactions (id, user_id, total_qty , total_transaction, transaction_date, payment_method_id)
values ("1","2","3","105000", "2023-02-08 15:01:27", "1"),
("2","5","3","3000000", "2023-02-08 13:01:27", "3"),
("3","1","3","240000", "2023-02-08 19:01:27", "2"),
("4","2","3","3000000", "2023-02-08 15:01:27", "1"),
("5","2","3","240000", "2023-02-08 15:01:27", "1"),
("6","5","3","105000", "2023-02-08 13:01:27", "3"),
("7","5","3","240000", "2023-02-08 13:01:27", "3"),
("8","1","3","105000", "2023-02-08 19:01:27", "2"),
("9","1","3","3000000", "2023-02-08 19:01:27", "2");
-- 1-i
insert into transaction_details (transaction_id, product_id, Price , qty)
values ("1","6","35000","3"),
("2","3","1000000","3"),
("3","5","800000","3"),
("4","6","1000000","3"),
("5","6","80000","3"),
("6","3","35000","3"),
("7","3","80000","3"),
("8","5","35000","3"),
("9","5","1000000","3");

-- no.2
-- 2-a
select id,name,gender from users where gender="M";
-- 2-b
select id,name,price,Product_type_id from products where id="3";
-- 2-c
select * from users where created_at > date_sub(now(), interval 1 week) 
and name like '%a%';
-- 2-d
select count(*) from users where gender="F";
-- 2-e
select * from users order by name;
-- 2-f
select * from transaction_details where product_id="3";

-- no.3
-- 3-a
update products set name = "product dummy" where id="1";
-- 3-b
update transaction_details set qty = "3" where product_id="1";

-- no.4
-- 4-a
delete from products where id="1";
-- 4-b
delete from products where product_type_id="1";

SET FOREIGN_KEY_CHECKS=0;
SET SESSION sql_mode='NO_AUTO_VALUE_ON_ZERO';