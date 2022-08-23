# 3) Display the total number of customers based on gender who have placed orders of worth at least Rs.3000

# select CUS_ID from `order` where ORD_AMOUNT>3000; -- 1,5
# select CUS_GENDER from customer where CUS_ID=1; -- Male
# select CUS_GENDER from customer where CUS_ID=5; -- Male
# tried changing the order amount for a Female customer
# update `order` set ORD_AMOUNT=10000 where ORD_ID=102;

# Solution: tested for male and female both.
# select CUS_GENDER, count(*) from customer where CUS_ID in (select CUS_ID from `order` where ORD_AMOUNT>=3000) group by CUS_GENDER;
# look into this

select count(*), c.CUS_GENDER from customer as c inner join `order` as o on c.CUS_ID = o.CUS_ID where o.ORD_AMOUNT>=3000 group by c.CUS_GENDER;
