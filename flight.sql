create database flight;

Create table customer(
    -> c_id int AUTO_INCREMENT primary key,
    -> c-name varchar(255),
    -> p_no varchar(255),
    -> email varchar(255),
    -> addr varchar(255));

Create table customer(
    -> c_id int AUTO_INCREMENT primary key,
    -> c_name varchar(255),
    -> p_no varchar(255),
    -> email varchar(255),
    -> addr varchar(255));

Create table ticket(
    -> T_id int AUTO_INCREMENT primary key,
    -> c_id int not null,
    -> F_id int not null,
    -> FOREIGN KEY (c_id) REFERENCES customer(c_id),
    -> FOREIGN KEY (F_id) REFERENCES flight(F_id));

insert into customer values(1,'ramesh',52351245,'fsdsf@lily','bangalore');
insert into customer values(null,'suresh',27345253,'hdhsh@lily','mangalore');
insert into customer values(null,'mahesh',45262367,'sfbshd@lily','bangalore');
insert into customer values(null,'umesh',7432763,'kxfks@lily','hasan');
insert into customer values(null,'vinod',3574253,'tertsf@lily','Tumkur');


insert into flight values(1001,'bengaluru','Mumbai',8000,'2022-09-10',200);
insert into flight values(1002,'bengaluru','Mangalore',4500,'2022-09-11',180);
insert into flight values(1003,'mangalore','rajasthan',13000,'2022-09-10',200);
insert into flight values(1004,'bengaluru','kolkatha',9500,'2022-09-10',200);
insert into flight values(1005,'mumbai','bengaluru',7000,'2022-09-11',200);

insert into ticket values(null,3,1005);
insert into ticket values(null,5,1003);
insert into ticket values(null,4,1002);
insert into ticket values(null,3,1004);
insert into ticket values(null,4,1001);

create view custdetails as
    -> select c.c_id, c.c_name, f.F_id, f.desp_P, f.start_P, f.price
    -> from customer as c, flight as f, ticket as b
    -> where c.c_id = b.c_id AND f.f_id=b.f_id;


select * from custdetails;


create view flightcount as
    -> select f.F_id,count(t.f_id) from flight f, ticket t where f.F_id=t.f_id group by t.f_id;

select * from flightcount;



create view flightrevenue as
    -> select f.F_id, f.price * count(b.f_id) as revenue
    -> from flight as f, ticket as b
    -> where f.F_id = b.f_id
    -> GROUP BY b.f_id;

select * from flightrevenue;
















