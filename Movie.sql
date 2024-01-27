/* create table MovieStar(
name char(30),
address varchar(255),
gender char(1),
birthdate date,
primary key(name)
); */

/* alter table MovieStar add phone char(16) default 'unlisted'; */

/* alter table MovieStar add primary key (id); */

/* truncate table MovieStar; */

INSERT INTO MovieStar (`name`, `address`, `gender`, `phone`) VALUES ('Anujesh Ansh', '10/6, Indira Nagar, Lucknow', 'M', '9305588082');

select * from MovieStar
