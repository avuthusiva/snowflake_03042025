use schema my_db.github_schema;

create or replace api integration github_int
enabled = True
api_provider = git_https_api
api_allowed_prefixes = ("https://github.com/avuthusiva/snowflake_03042025.git");

create or replace git repository github_repo_prac
api_integration = github_int
origin = "https://github.com/avuthusiva/snowflake_03042025.git";

alter git repository github_repo_prac fetch;
