use schema my_db.github_schema;

create or replace file format csv_skip_header
type = csv
skip_header = 1
field_optionally_enclosed_by = '\042';

create or replace file format csv_parse_header
type = csv
parse_header = True
field_optionally_enclosed_by = '\042';

create or replace file format json_format 
type = json
strip_outer_array = True;

create or replace file format json_format 
type = parquet;
