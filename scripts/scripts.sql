�   scripts.sql C:\Users\nkravchenko\Downloads\scripts.sql    1   C:\Users\NKRAVC~1\AppData\Local\Temp\scripts.sql P
  #delete my database if exists
drop database test;

#create database
create database test;

#should use our database
use test;


#create table - info
create table info(
info_id int not null auto_increment primary key,
address varchar(25) not null,
city varchar(15) not null,
tel varchar(15) not null);

#create tabel - owner
create table owner(
owner_id int not null auto_increment primary key,
name varchar(15) not null,
age int not null,
info_id int not null,
foreign key(info_id) references info(info_id));



#insert some rows into table
insert into info(address, city, tel) values("Address1", "Odessa","12-12-12");
insert into info(address, city, tel) values("Address2", "Odessa","12-13-12");
insert into info(address, city, tel) values("Address3", "Odessa","12-14-12");
insert into info(address, city, tel) values("Address4", "Odessa","12-15-12");
insert into info(address, city, tel) values("Address5", "Odessa","12-16-12");
insert into info(address, city, tel) values("Address6", "Odessa","12-17-12");
insert into info(address, city, tel) values("Address7", "Odessa","093-12-18-12");



insert into owner(name,age,info_id) values("Name1",12,1);
insert into owner(name,age,info_id) values("Name2",13,2);
insert into owner(name,age,info_id) values("Name3",14,2);
insert into owner(name,age,info_id) values("Name4",15,3);
insert into owner(name,age,info_id) values("Name5",16,3);
insert into owner(name,age,info_id) values("Name6",16,4);
insert into owner(name,age,info_id) values("Name7",16,5);
insert into owner(name,age,info_id) values("Name8",17,6);
insert into owner(name,age,info_id) values("N9",18,7);
insert into owner(name,age,info_id) select "N10",18,max(info_id) from info;

#example of scripts for review

#output all owners from table "owner"

#output name and age from table "owner"
select name as YourNameOfThisColumn, age as YourNameOfAgeColumn from owner;

#ouput all name from table "owner" where name containes string likes "Name"
select * from owner where name like "%name%";

#order name by asc(возрастание) and age by desc --->>> order
select * from owner order by name asc, age desc;

#select owner where age is between [10, 14]
select * from owner where age between 10 and 14;

#select owner where name is Name1 and age is 12
select * from owner where name like "Name1" and age = 12;

#select owner where age in set likes (1,2,3,4,5,12,13,45);
select * from owner where age in(1,2,3,4,5,12,13,45);

#select i