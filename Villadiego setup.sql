set echo on
connect system/yhet;
drop user yhet cascade;
create user yhet identified by kulitz;
alter user yhet default tablespace users temporary tablespace temp account unlock;
grant connect, resource to yhet;

connect yhet/kulitz;
create table products(recipe varchar2(50) primary key,
		      category varchar2(20) not null,
		      price varchar2(20) not null,
		      quantity varchar2(20) not null,
		      description varchar2(50),
		      photos blob,);

create table costumers(last_name varchar2(30) primary key,
		      first_name varchar2(50),
		      phone_number varchar2(50),
		      address varchar2(50));

create table products(recipe varchar2(50) primary key,
		      price varchar2(20) not null,
		      quantity varchar2(20) not null,
		      total amount varchar2(20) not null,
		      first_name varchar2(50),
		      last_name varchar2(50),
		      address varchar2(50);
		      phone number(30) not null
		      receipts varchar2(30));

insert into customers(last_name,first_name,phone_number,address)
values("Chua","Nathan","09394119987",# 47 Chicago Tech University hills Subd. Potrero malabon");
commit;
