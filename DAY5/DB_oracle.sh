#!/bin/bash
# Oracle Database connection details
DB_USER="your_username"
DB_PASSWORD="your_password"
DB_HOST="your_db_host"
DB_PORT="1521"  # Default Oracle port
DB_SERVICE="your_service_name"

# SQL query to execute
SQL_QUERY="SELECT * FROM your_table;"

# Connect to the Oracle Database and execute the SQL query
sqlplus -s "${DB_USER}/${DB_PASSWORD}@${DB_HOST}:${DB_PORT}/${DB_SERVICE}" <<EOF
SET PAGESIZE 50
SET LINESIZE 100
SET FEEDBACK OFF
SET VERIFY OFF
$SQL_QUERY
EXIT;
EOF
