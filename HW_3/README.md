## SQL_practis [HW_2.sql](https://github.com/Pavlik1100/SQL_practice/blob/main/HW_2/HW_2.sql)
SQL HomeWork 3. Joins

Подключится к 
Host: 159.69.151.133
Port: 5056
DB: подключение к той таблице где делали DDL операции
User: подключение к тем пользователем каким делали DDL операции
Pass: 123

Если для какого-то кейса надо сделать дополнительную таблицу, наполнить её данными, то делайте )

 1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.

select employee_name, monthly_salary 
from employee_salary 
	join employees on employee_id=employees.id
	join salary1 on salary_id=salary1.id;
 
 2. Вывести всех работников у которых ЗП меньше 2000.
 
 select employee_name, monthly_salary
 from employee_salary
 	join employees on employee_id=employees.id 
 	join salary1 on salary_id=salary1.id
 	where monthly_salary<2000;
  
 3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
 
select employee_name, monthly_salary
from employee_salary
	left join employees on employee_id=employees.id 
	join salary1 on salary_id=salary1.id
	where employee_name is NULL;
 
 4. Вывести все зарплатные позиции  меньше 2100 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
 
select employee_name, monthly_salary
from employee_salary
	left join employees on employee_id=employees.id 
	join salary1 on salary_id=salary1.id 
	where employee_name is null and monthly_salary<2100;
 
 5. Найти всех работников кому не начислена ЗП.
 
select employees.employee_name, monthly_salary 
from employees
	left join employee_salary on employees.id=employee_salary.id 
	left join salary1 on salary_id=salary1.id
	where monthly_salary is null;
 
 6. Вывести всех работников с названиями их должности.
  
select employees.employee_name, roles1.role_name 
from roles_employee
	join employees on roles_employee.employee_id=employees.id
	join roles1 on roles1.id= roles_employee.role_id;

 7. Вывести имена и должность только Java разработчиков.
 
select employee_name, role_name
from roles_employee
	join employees on employee_id=employees.id 
	join roles1 on role_id=roles1.id
	where role_name like '%Java%';
 
 8. Вывести имена и должность только Python разработчиков.
 
select employee_name, role_name
from roles_employee
	join employees on employee_id=employees.id 
	join roles1 on role_id=roles1.id 
	where role_name like '%Python%';
 
 9. Вывести имена и должность всех QA инженеров.

select employee_name, role_name
from roles_employee 
	join employees on employee_id=employees.id 
	join roles1 on role_id=roles1.id 
	where role_name like '%QA%';
 
 10. Вывести имена и должность ручных QA инженеров.

select employee_name, role_name
from roles_employee 
	join employees on employee_id=employees.id 
	join roles1 on role_id=roles1.id 
	where role_name like '%Manual QA%';
 
 11. Вывести имена и должность автоматизаторов QA

select employee_name, role_name
from roles_employee
	join employees on employee_id=employees.id 
	join roles1 on role_id=roles1.id 
	where role_name like '%Automation QA%'
 
 12. Вывести имена и зарплаты Junior специалистов

select employee_name, monthly_salary
from roles1 
	join roles_employee on roles1.id=roles_employee.role_id
	join employees on roles_employee.employee_id=employees.id
	join employee_salary on employee_salary.employee_id=employees.id
	join salary1 on salary1.id=salary_id
	where role_name like '%Junior%';
 
 13. Вывести имена и зарплаты Middle специалистов

select employee_name, monthly_salary
from roles1 r 
	join roles_employee re on r.id=re.role_id 
	join employees e on e.id=re.employee_id 
	join employee_salary es on es.employee_id=e.id 
	join salary1 s on s.id=es.salary_id 
	where role_name like '%Middle%';
 
 14. Вывести имена и зарплаты Senior специалистов

select employee_name, monthly_salary
from roles1 r 
	join roles_employee re on r.id = re.role_id 
	join employees e on e.id = re.employee_id 
	join employee_salary es on es.employee_id = e.id 
	join salary s on s.id = es.salary_id 
	where role_name like '%Senior%';
 
 15. Вывести зарплаты Java разработчиков
 
select monthly_salary
from roles1 r 
	join roles_employee re on r.id = re.role_id 
	join employees e on e.id = re.employee_id 
	join employee_salary es on es.employee_id = re.employee_id 
	join salary1 s on s.id = es.salary_id 
	where role_name like '%Java%';
 
 16. Вывести зарплаты Python разработчиков

select monthly_salary
from roles1 r 
	join roles_employee re on re.role_id = r.id 
	join employees e on e.id = re.employee_id 
	join employee_salary es on es.employee_id = re.employee_id 
	join salary1 s on s.id = es.salary_id 
	where role_name like '%Python%';
 
 17. Вывести имена и зарплаты Junior Python разработчиков
  
select employee_name, monthly_salary
from roles1 r 
	join roles_employee re on r.id = re.role_id  
	join employees e on e.id = re.employee_id 
	join employee_salary es on es.employee_id = e.id 
	join salary1 s on s.id = es.salary_id 
	where role_name like '%Junior Python%';

 18. Вывести имена и зарплаты Middle JS разработчиков
 
   
select * from employees;
select * from salary1;
select * from employee_salary;
select * from roles1;
select * from roles_employee;

select employee_name, monthly_salary
from roles1 r 
	join roles_employee re on re.role_id = r.id 
	join employees e on e.id = re.employee_id 
	join employee_salary es on es.employee_id = e.id 
	join salary1 s on s.id = es.salary_id 
	where role_name like '%Middle Java%';
	
# [Back SQL_practis](https://github.com/Pavlik1100/SQL_practis)
