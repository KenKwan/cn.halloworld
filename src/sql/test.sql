use test;
create table User(
	id int auto_increment primary key,
	name varchar(10),
	age int
);

insert into User(name, age) values('James', 28);
insert into User(name, age) values('Wade', 29);
insert into User(name, age) values('Bosh', 28);
insert into User(name, age) values('Nash', 33);
insert into User(name, age) values('Kobe', 35);