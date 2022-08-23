# Que. 6) Find the least expensive product from each category and print the table with 
# category id, name, product name and price of the product

# display category id, category name, product name and price of the product

select p.PRO_NAME, min(sp.SUPP_PRICE), sp.SUPP_ID from product as p 
inner join supplier_pricing as sp on p.PRO_ID=sp.PRO_ID
group by p.PRO_ID;

select * from supplier where SUPP_ID=5;
select PRO_ID, min(SUPP_PRICE) from supplier_pricing 
group by PRO_ID, SUPP_ID;

select cat.CAT_ID, cat.CAT_NAME, p.PRO_NAME, sp.SUPP_PRICE from category as cat
inner join product as p on cat.CAT_ID=p.CAT_ID
inner join supplier_pricing as sp on sp.PRO_ID=p.PRO_ID
group by cat.CAT_NAME having min(sp.SUPP_PRICE);
