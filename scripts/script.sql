use role accountadmin;

use warehouse my_warehouse;

use schema my_db.github_schema;

show tables;

select * from user_data;

desc table user_data;

show file formats;

show integrations ;

select * from information_schema.tables where table_schema = 'GITHUB_SCHEMA';

show api integrations;

show git repositories;

select * from information_schema.git_repositories;

show stages;

list @GITHUB_STAGE_PRAC;

show tasks;

desc task GITHUB_TASK;

remove @github_stage_prac;