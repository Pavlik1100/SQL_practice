 1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.


select employee_name, monthly_salary 
from employee_salary 
	join employees on employee_id=employees.id
	join salary1 on salary_id=salary1.id;
 
 2.Вывести всех работников у которых ЗП меньше 2000.
 
 select employee_name, monthly_salary
 from employee_salary
 	join employees on employee_id=employees.id 
 	join salary1 on salary_id=salary1.id
 where monthly_salary<2000;
  
 3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
 
 select monthly_salary
 from salary1 s 
 	left join employee_salary es on s.id = es.salary_id
 	where employee_id is null;
 
select employee_name, monthly_salary
from employee_salary
	left join employees on employee_id=employees.id 
	join salary1 on salary_id=salary1.id
where employee_name is NULL;
 
 4. Вывести все зарплатные позиции меньше 2100 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
 
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
 
 6.Вывести всех работников с названиями их должности.
  
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
where role_name like '%Manual%QA%';
 
 11. Вывести имена и должность автоматизаторов QA

select employee_name, role_name
from roles_employee
	join employees on employee_id=employees.id 
	join roles1 on role_id=roles1.id 
where role_name like '%Automation%QA%'
 
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
where role_name like '%Junior%Python%';

 18. Вывести имена и зарплаты Middle JS разработчиков

select employee_name, monthly_salary
from roles1 r 
	join roles_employee re on re.role_id = r.id 
	join employees e on e.id = re.employee_id 
	join employee_salary es on es.employee_id = e.id 
	join salary1 s on s.id = es.salary_id 
where role_name like '%Middle%Java%';
 
 19. Вывести имена и зарплаты Senior Java разработчиков

select employee_name, monthly_salary
from roles1 r 
	join roles_employee re on re.role_id = r.id 
	join employees e on e.id = re.employee_id 
	join employee_salary es on es.employee_id = e.id 
	join salary1 s on es.salary_id = s.id 
where role_name like '%Senior%Java%';
 
 20. Вывести зарплаты Junior QA инженеров
 
select employee_name, monthly_salary
from roles1 r 
	join roles_employee re on r.id = re.role_id 
	join employees e on e.id = re.role_id 
	join employee_salary es on es.employee_id = e.id 
	join salary1 s on s.id = es.salary_id 
where role_name like '%Junior%QA%';
 
 21. Вывести среднюю зарплату всех Junior специалистов

select AVG(monthly_salary) as AVG_Salary_of_Juniors
from roles1 r 
	join roles_employee re on re.role_id = r.id 
	join employees e on e.id = re.employee_id 
	join employee_salary es on es.employee_id = e.id 
	join salary1 s on s.id = es.salary_id 
where role_name like '%Junior%';
 
 22. Вывести сумму зарплат JS разработчиков
 
select SUM(monthly_salary) as sum_salary_of_JS_dev
from roles1 r 
	join roles_employee re on re.role_id = r.id 
	join employees e on e.id = re.employee_id 
	join employee_salary es on es.employee_id = e.id 
	join salary1 s on s.id = es.salary_id 
where role_name like '%Java%'

 23. Вывести минимальную ЗП QA инженеров
 
select min(monthly_salary) as min_salary_of_QA
from roles1 r
	join roles_employee re on re.role_id = r.id 
	join employees e on e.id = re.employee_id 
	join employee_salary es on es.employee_id = e.id 
	join salary1 s on s.id = es.salary_id 
where role_name like '%QA%';
 
 24. Вывести максимальную ЗП QA инженеров

select max(monthly_salary) as max_salary_of_QA
from roles1 r 
	join roles_employee re on re.role_id = r.id 
	join employees e on e.id = re.employee_id 
	join employee_salary es on es.employee_id = e.id 
	join salary1 s on s.id = es.salary_id 
where role_name like '%QA%';
 
 25. Вывести количество QA инженеров

select count(employee_name) as count_of_QA_roles
from roles1 r 
	join roles_employee re on re.role_id = r.id 
	join employees e on e.id = re.employee_id 
	join employee_salary es on es.employee_id = e.id 
	--join salary1 s on s.id = es.salary_id 
where role_name like '%QA%';
 
 26. Вывести количество Middle специалистов.
 
select count(employee_name) as count_of_Middle_roles
from roles1 r 
	join roles_employee re on re.role_id = r.id 
	join employees e on e.id = re.employee_id 
	join employee_salary es on es.employee_id = e.id 
	--join salary1 s on s.id = es.salary_id 
where role_name like '%Middle%';

 27. Вывести количество разработчиков
 
select count(employee_name) as count_of_employees
from roles1 r 
	join roles_employee re on re.role_id = r.id 
	join employees e on e.id = re.employee_id 
	join employee_salary es on es.employee_id = e.id; 
	--join salary1 s on s.id = es.salary_id; 	

 28. Вывести фонд (сумму) зарплаты разработчиков.
      
select sum(monthly_salary) as sum_salary_of_all_employees
from roles1 r 
	join roles_employee re on re.role_id = r.id 
	join employees e on e.id = re.employee_id 
	join employee_salary es on es.employee_id = e.id 
	join salary1 s on s.id = es.salary_id; 	

 29. Вывести имена, должности и ЗП всех специалистов по возрастанию
 
select employee_name, role_name, monthly_salary
from roles1 r 
	join roles_employee re on re.role_id = r.id 
	join employees e on e.id = re.employee_id 
	join employee_salary es on es.employee_id = e.id 
	join salary1 s on s.id = es.salary_id 
order by monthly_salary;
 
 30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
  
select employee_name, role_name, monthly_salary
from roles1 r 
	join roles_employee re on re.role_id = r.id 
	join employees e on e.id = re.employee_id 
	join employee_salary es on es.employee_id = e.id 
	join salary1 s on s.id = es.salary_id 
where monthly_salary between 1700 and 2300
order by monthly_salary; 

 31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
 
select employee_name, role_name, monthly_salary
from roles1 r 
	join roles_employee re on re.role_id = r.id 
	join employees e on e.id = re.employee_id 
	join employee_salary es on es.employee_id = e.id 
	join salary1 s on s.id = es.salary_id 
where monthly_salary<2300
order by monthly_salary;
 
 32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000

select employee_name, role_name, monthly_salary
from roles1 r 
	join roles_employee re on re.role_id = r.id 
	join employees e on e.id = re.employee_id 
	join employee_salary es on es.employee_id = e.id 
	join salary1 s on s.id = es.salary_id 
where monthly_salary = 1100 or monthly_salary = 1500 or monthly_salary = 2000
order by monthly_salary;