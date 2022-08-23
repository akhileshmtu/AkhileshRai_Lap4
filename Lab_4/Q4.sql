# Que. 4) Display all the orders along with product name ordered by a customer having Customer_Id=2
select cus_name, pro_name, ord_id, ord_date from product as p, supplier_pricing as sp, `order` as ord, customer as cus where 
cus.CUS_ID=2 and
cus.CUS_ID=ord.CUS_ID and
p.PRO_ID=sp.PRO_ID and
ord.PRICING_ID=sp.PRICING_ID