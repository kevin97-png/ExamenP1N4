
create table employees (
id int(11) not null auto_increment primary key,
name varchar(160) default null,
email varchar(150) unique default null,
address varchar(150) default null,
phone varchar(150) default null
);


create procedure insert_employees(in n_name varchar(250), in n_email varchar(250), in n_address varchar(250),in n_phone varchar(250))
begin
	insert into employees(name, email, address, phone) values (n_name, n_email, n_address, n_phone);
end


