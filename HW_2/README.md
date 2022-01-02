## SQL_practis [HW_2.sql](https://github.com/Pavlik1100/SQL_practice/blob/main/HW_2/HW_2.sql)
# HW_2-SQL_DDL Первая часть.

### Таблица employees

1) Создать таблицу employees
   - id. serial,  primary key,
   - employee_name. Varchar(50), not null
```sql 
create table employees(
	id serial primary key,
	employee_name varchar(50) not null
);
```
2) Наполнить таблицу employee 70 строками.
```sql
insert into employees (employee_name)
values  ('James Garcia'),
        ('Ernest Graham'),
        ('Kurt Johnson'),
        ('Debra Mason'),
        ('James Henderson'),
        ('Lloyd Thomas'),
        ('Judith Ferguson'),
        ('Virginia White'),
        ('Julie Morris'),
        ('Leon Davis'),
        ('Gilbert Jones'),
        ('George Gonzalez'),
        ('Alice Soto'),
        ('Marie Kelley'),
        ('Jason Pope'),
        ('Andy Parker'),
        ('James Montgomery'),
        ('Joyce Walker'),
        ('Christy Lopez'),
        ('Robert King'),
        ('Ralph Snyder'),
        ('Stacy Jones'),
        ('Stephen Diaz'),
        ('Elizabeth Barker'),
        ('Jennifer Flores'),
        ('Ana Clark'),
        ('David Nelson'),
        ('Steven Hill'),
        ('Gertrude Williams'),
        ('Jessica Baker'),
        ('Jennifer Hernandez'),
        ('Julia Wagner'),
        ('Jennifer Arnold'),
        ('Daniel Zimmerman'),
        ('Sara Todd'),
        ('John Gonzales'),
        ('Joanne Wolfe'),
        ('Jerry Sherman'),
        ('George Pierce'),
        ('Daniel Johnson'),
        ('Charles Jones'),
        ('Henry Griffin'),
        ('Timothy Franklin'),
        ('Joseph Maxwell'),
        ('Amy Pena'),
        ('Mary Rogers'),
        ('Floyd Smith'),
        ('Steve Reynolds'),
        ('Louis Horton'),
        ('Maria Ortiz'),
        ('Jon Luna'),
        ('Marie Jones'),
        ('Kenneth Flores'),
        ('Louis Lee'),
        ('Shirley Carr'),
        ('Lisa Sanders'),
        ('Brett Taylor'),
        ('David Strickland'),
        ('Maria Sutton'),
        ('Dennis Williams'),
        ('Thomas McCarthy'),
        ('Richard Nguyen'),
        ('Charles grant'),
        ('Holly Thomas'),
        ('Helen Parker'),
        ('Lillian Smith'),
        ('Sue Brown'),
        ('Michele Morris'),
        ('Mary Nelson'),
        ('Helen Fisher');
```
### Таблица salary

3) Создать таблицу salary
   - id. Serial  primary key,
   - monthly_salary. Int, not null
```sql
create table salary1 (
	id serial primary key,
	monthly_salary int not null
);
```
4) Наполнить таблицу salary 15 строками:
    - 1000
    - 1100
    - 1200
    - 1300
    - 1400
    - 1500
    - 1600
    - 1700
    - 1800
    - 1900
    - 2000
    - 2100
    - 2200
    - 2300
    - 2400
    - 2500
```sql
insert into salary1(monthly_salary)
values  (1000),
        (1100),
        (1200),
        (1300),
        (1400),
        (1500),
        (1600),
        (1700),
        (1800),
        (1900),
        (2000),
        (2100),
        (2200),
        (2300),
        (2400),
        (2500);
```
5) Создать таблицу employee_salary
   - id. Serial  primary key,
   - employee_id. Int, not null, unique
   - salary_id. Int, not null
```sql
create table employee_salary(
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null
);
```
6) Наполнить таблицу employee_salary 40 строками:
   - в 10 строк из 40 вставить несуществующие employee_id  
   
      | id | employee_id | salary_id |
      |-----|-----|-----|
      | 1 | 3 | 7 |
      | 2 | 1 | 4 |
      | 3 | 5 | 9 |
      | 4 | 40 | 13 |
      | 5 | 23 | 4 |
      | 6 | 11 | 2 |
      | 7 | 52 | 10 |
      | 8 | 15 | 13 |
      | 9 | 26 | 4 |
      | 10 | 16 | 1 |
      | 11 | 33 | 7 |
      | ... | ... | ... |
```sql
insert into employee_salary(employee_id, salary_id)
values  (11, 11),
        (12, 12),
        (13, 13),
        (14, 14),
        (15, 15),
        (16, 15),
        (17, 14),
        (18, 13),
        (19, 12),
        (20, 11),
        (21, 10),
        (22, 9),
        (23, 8),
        (24, 7),
        (25, 6),
        (26, 5),
        (27, 4),
        (28, 3),
        (29, 2),
        (30, 1),
        (31, 1),
        (32, 2),
        (33, 3),
        (34, 4),
        (35, 5),
        (36, 6),
        (37, 7),
        (38, 8),
        (39, 9),
        (40, 10),
        (41, 11),
        (42, 12),
        (43, 13),
        (44, 14),
        (45, 15),
        (46, 15),
        (47, 14),
        (48, 13),
        (49, 12),
        (50, 11);
```

### Таблица roles
	   
7) Создать таблицу roles
   - id. Serial  primary key,
   - role_name. int, not null, unique
```sql
create table roles1(
	id serial primary key,
	role_name int not null unique
);
```
8) Поменять тип столба role_name с int на varchar(30)
```sql
alter table roles1
alter column role_name type varchar(40) using role_name::varchar(30);
```
9) Наполнить таблицу roles 20 строками:   
         
      | id | role_name |
      |-----|-----|
      | 1 | Junior Python developer |
      | 2 | Middle Python developer |
      | 3 | Senior Python developer |
      | 4 | Junior Java developer |
      | 5 | Middle Java developer |
      | 6 | Senior Java developer |
      | 7 | Junior JavaScript developer |
      | 8 | Middle JavaScript developer |
      | 9 | Senior JavaScript developer |
      | 10 | Junior Manual QA engineer |
      | 11 | Middle Manual QA engineer |
      | 12 | Senior Manual QA engineer |
      | 13 | Project Manager |
      | 14 | Designer |
      | 15 | HR |
      | 16 | CEO |
      | 17 | Sales manager |
      | 18 | Junior Automation QA engineer |
      | 19 | Middle Automation QA engineer |
      | 20 | Senior Automation QA engineer |
```sql
insert into roles1(id, role_name)
values  (1, 'Junior Python developer'),
        (2, 'Middle Python developer'),
        (3, 'Senior Python developer'),
        (4, 'Junior Java developer'),
        (5, 'Middle Java developer'),
        (6, 'Senior Java developer'),
        (7, 'Junior JavaScript developer'),
        (8, 'Middle JavaScript developer'),
        (9, 'Senior JavaScript developer'),
        (10, 'Junior Manual QA engineer'),
        (11, 'Middle Manual QA engineer'),
        (12, 'Senior Manual QA engineer'),
        (13, 'Project Manager'),
        (14, 'Designer'),
        (15, 'HR'),
        (16, 'CEO'),
        (17, 'Sales manager'),
        (18, 'Junior Automation QA engineer'),
        (19, 'Middle Automation QA engineer'),
        (20, 'Senior Automation QA engineer');
```

### Таблица roles_employee

10) Создать таблицу roles_employee
   - id. Serial  primary key,
   - employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
   - role_id. Int, not null (внешний ключ для таблицы roles, поле id)
```sql
 create table roles_employee(
 	id serial primary key,
 	employee_id int not null unique,
 	role_id int not null, 
 	foreign key (employee_id)
 		references employees(id),
 	foreign key (role_id)
 		references roles1(id)
 );
```
11) Наполнить таблицу roles_employee 40 строками:  

      | id | employee_id | role_id |
      |-----|-----|-----|
      | 1 | 7 | 2 |
      | 2 | 20 | 4 |
      | 3 | 3 | 9 |
      | 4 | 5 | 13 |
      | 5 | 23 | 4 |
      | 6 | 11 | 2 |
      | 7 | 10 | 9 |
      | 8 | 22 | 13 |
      | 9 | 21 | 3 |
      | 10 | 34 | 4 |
      | 11 | 6 | 7 |
      | ... | ... | ... |
```sql
insert into roles_employee(employee_id, role_id)
values  (1, 20),
        (2, 19),
        (3, 18),
        (4, 17),
        (5, 16),
        (6, 15),
        (7, 14),
        (8, 13),
        (9, 12),
        (10, 11),
        (11, 10),
        (12, 9),
        (13, 8),
        (14, 7),
        (15, 6),
        (16, 5),
        (17, 4),
        (18, 3),
        (19, 2),
        (20, 1),
        (21, 1),
        (22, 2),
        (23, 3),
        (24, 4),
        (25, 5),
        (26, 6),
        (27, 7),
        (28, 8),
        (29, 9),
        (30, 10),
        (31, 11),
        (32, 12),
        (33, 13),
        (34, 14),
        (35, 15),
        (36, 16),
        (37, 17),
        (38, 18),
        (39, 19),
        (40, 20);
``` 
# [Back SQL_practis](https://github.com/Pavlik1100/SQL_practis)
