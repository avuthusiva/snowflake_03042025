use schema my_db.github_schema;

create or replace stage github_stage_prac
directory = (enable = True);

create or replace procedure github_proc()
returns varchar2(100)
language sql
as
begin
    alter git repository github_repo_04042025 fetch;
    copy files into @github_stage_prac
    from @github_repo_04042025/branches/main;
    return 'completed'
end;

create or replace task github_task
warehouse = my_warehouse
schedule = '1 minute'
as
call github_proc();