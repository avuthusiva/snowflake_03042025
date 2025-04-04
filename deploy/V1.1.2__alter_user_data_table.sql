use schema my_db.github_schema;

alter table user_data add column status varchar(1);

update user_data set status = 'A';

