use alta_online_shop;

-- no.1
select * from transactions where user_id="1" -- or user_id="2"
union
select * from transactions where user_id="2";

-- no.2
select user_id, transaction_id , price from transaction_details
inner join transactions ts on user_id=transaction_id
where user_id="1";

-- no.3
select product_Type_id, name  , user_id, total_transaction from transaction_details
inner join products prdt on product_type_id=transaction_id
inner join transactions ts on user_id=transaction_id
where product_type_id="2";

-- no.4
select prdt.id ,  prdt.name , prdt.price , product_type_id, categories , prdt.created_at, prdt.updated_at from product_types pt
inner join products prdt on product_type_id=pt.id;

-- no.5
select us.id, us.name "buyer name" , prdt.name "product name"  , user_id, total_qty, total_transaction, transaction_date
payment_method_id, ts.Created_at, ts.updated_at from transaction_details td
inner join products prdt on product_type_id=transaction_id
inner join transactions ts on user_id=transaction_id
inner join users us on us.id=transaction_id;

-- no.8






