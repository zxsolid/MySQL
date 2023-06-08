mysql> use edu_l5;
Database changed

mysql> SELECT * FROM edu_l5.users;
+----+-----------+----------+---------------------------------+
| id | firstname | lastname | email                           |
+----+-----------+----------+---------------------------------+
|  2 | Frederik  | Upton    | terrence.cartwright@example.org |
|  3 | Unique    | Windler  | rupert55@example.org            |
|  4 | Norene    | West     | rebekah29@example.net           |
|  5 | Frederick | Effertz  | von.bridget@example.net         |
|  6 | Victoria  | Medhurst | sstehr@example.net              |
|  7 | Austyn    | Braun    | itzel.beahan@example.com        |
|  8 | Jaida     | Kilback  | johnathan.wisozk@example.com    |
|  9 | Mireya    | Orn      | missouri87@example.org          |
| 10 | Jordyn    | Jerde    | edach@example.com               |
+----+-----------+----------+---------------------------------+
9 rows in set (0.00 sec)

mysql> SELECT * FROM edu_l5.users_old;
+----+-----------+----------+--------------------+
| id | firstname | lastname | email              |
+----+-----------+----------+--------------------+
|  1 | Reuben    | Nienow   | arlo50@example.org |
+----+-----------+----------+--------------------+
1 row in set (0.00 sec)

mysql> call edu_l5.mv_users_to_users_old(5);
Query OK, 0 rows affected (0.01 sec)

mysql> SELECT * FROM edu_l5.users_old;
+----+-----------+----------+-------------------------+
| id | firstname | lastname | email                   |
+----+-----------+----------+-------------------------+
|  1 | Reuben    | Nienow   | arlo50@example.org      |
|  2 | Frederick | Effertz  | von.bridget@example.net |
+----+-----------+----------+-------------------------+
2 rows in set (0.00 sec)

mysql> SELECT * FROM edu_l5.users;
+----+-----------+----------+---------------------------------+
| id | firstname | lastname | email                           |
+----+-----------+----------+---------------------------------+
|  2 | Frederik  | Upton    | terrence.cartwright@example.org |
|  3 | Unique    | Windler  | rupert55@example.org            |
|  4 | Norene    | West     | rebekah29@example.net           |
|  6 | Victoria  | Medhurst | sstehr@example.net              |
|  7 | Austyn    | Braun    | itzel.beahan@example.com        |
|  8 | Jaida     | Kilback  | johnathan.wisozk@example.com    |
|  9 | Mireya    | Orn      | missouri87@example.org          |
| 10 | Jordyn    | Jerde    | edach@example.com               |
+----+-----------+----------+---------------------------------+
8 rows in set (0.00 sec)