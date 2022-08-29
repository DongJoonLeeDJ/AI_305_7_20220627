create user fashionsql identified by"1234"
default tablespace "USERS"
temporary tablespace "TEMP";


grant "CONNECT" to fashionsql;
grant "RESOURCE"to fashionsql;
grant dba to fashionsql;