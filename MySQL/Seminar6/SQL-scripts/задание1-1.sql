# создаем таблицу users_old на основе таблицы users
use edu_l5;
drop table if exists users_old;
CREATE TABLE users_old AS SELECT * FROM users WHERE FALSE;