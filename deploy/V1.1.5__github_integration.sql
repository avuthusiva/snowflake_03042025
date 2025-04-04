use schema my_db.github_schema;

create api integration if not exists github_schema.github_int
enabled = True
api_provider = api_https_git
api_allowed_prefixes = ("https://github.com/avuthusiva/snowflake_03042025.git");

create git repository github_schema.github_repo
api_integration = "github_int"
origin = "https://github.com/avuthusiva/snowflake_03042025.git";
