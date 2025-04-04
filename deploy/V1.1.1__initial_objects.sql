create schema if not exists github_schema;

use schema my_db.github_schema;

create table github_schema.user_data
(
    id int autoincrement start 1 increment 1 order,
    name varchar(100),
    age int,
    create_date timestamp default current_timestamp()
);

insert into github_schema.user_data(name,age) values ('siva',34),('reddy',30),('meera',33);