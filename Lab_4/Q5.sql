# Que. 5) Display the Supplier details who can supply more than one product.
# select SUPP_ID from supplier_pricing group by SUPP_ID having count(SUPP_ID)>1; -- gives suppliers who can supply more than one item
# solution
# select * from supplier where SUPP_ID in (select SUPP_ID from supplier_pricing group by SUPP_ID having count(SUPP_ID)>1);

select s.SUPP_NAME, count(p.PRO_NAME) as product_count from supplier as s 
inner join supplier_pricing as sp on s.SUPP_ID=sp.SUPP_ID
inner join product as p on p.PRO_ID=sp.PRO_ID 
group by s.SUPP_NAME 
having count(p.PRO_NAME)>1;