create database restaurant_db default character set  utf8 collate utf8_general_ci;
use restaurant_db;

create table if not exists restaurant(
	restaurantNum int auto_increment primary key,
    restaurantName varchar(100),
    restaurantAddr varchar(100),
    Category varchar(100),
    restaurantNumber varchar(100),
    open_hour varchar(100),
    description varchar(100),
    x double,
    y double,
    reservation DateTime,
    reservationallow varchar(100)
)default charset utf8;

select * from restaurant;

drop table restaurant;