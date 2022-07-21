create database mortgage;
use mortgage;

create table financeManager(
	ufname varchar(32) not null, 
    ulname varchar(32) not null,
    ugender ENUM('Male','Female','Other') not null,
    uphone varchar(10) not null,
    uemail varchar(64) not null,
    upan varchar(10) not null,
    udesignation varchar(32) not null,
    urole varchar(32) not null,
	userid varchar(32) not null,
    upass varchar(32) not null,
    primary key (userid)
);


create table loanOfficer(
	ufname varchar(32) not null, 
    ulname varchar(32) not null,
    ugender ENUM('Male','Female','Other') not null,
    uphone varchar(10) not null,
    uemail varchar(64) not null,
    upan varchar(10) not null,
    udesignation varchar(32) not null,
    urole varchar(32) not null,
	userid varchar(32) not null,
    upass varchar(32) not null,
    primary key (userid)
);


create table applyloan(
	uname varchar(64) not null, 
    uaddress varchar(500) not null,
    uphone varchar(10) not null,
    uemail varchar(64) not null,
    umortitem varchar(64) not null,
    uloanamount int(16) not null,
    uloantenure int(16) not null,
    uinterestrate int(4) not null,
    uemioption varchar(32) not null,
    uemiday varchar(32) not null,
    primary key (uphone)
);


create table customer(
	fName varchar(32) not null, 
    lName varchar(32) not null,
    ugender ENUM('Male','Female','Other') not null,
    uemail varchar(64) not null,
    umobile varchar(10) not null,
	userid varchar(32) not null,
    upass varchar(32) not null,
    secret varchar(70) not null,
    ans varchar (50) not null,
    primary key (userid)
);

	
    
create table admin1(username varchar(50), password varchar(10));    
insert into admin1 value('admin', 'adminpass');
select * from admin1;


create table feedbackform(feedback varchar(200),Sys varchar(300));



select * from loanOfficer;
select * from financeManager;
select * from applyLoan;
select * from customer;
select * from feedbackform;
