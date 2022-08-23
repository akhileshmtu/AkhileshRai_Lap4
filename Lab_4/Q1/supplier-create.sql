create table if not exists supplier (
SUPP_ID int unsigned not null primary key auto_increment, 
SUPP_NAME varchar(50) not null, 
SUPP_CITY varchar(50) not null, 
SUPP_PHONE varchar(10) not null
);