# Que. 8
# 8)	Display customer name and gender whose names start or end with character 'A'.
select * from customer as c;

# Exact match
select * from customer as c where c.CUS_NAME='MEGHA';

# Partial Match
select CUS_NAME, CUS_GENDER from customer as c where (c.CUS_NAME like 'A%' or c.CUS_NAME like '%A');
