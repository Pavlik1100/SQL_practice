--1. ������� ���� ���������� ��� �������� ���� � ����, ������ � ����������.

select employee_name, monthly_salary 
from employee_salary 
	join employees on employee_id=employees.id
	join salary1 on salary_id=salary1.id;
 
 --2. ������� ���� ���������� � ������� �� ������ 2000.
 
 select employee_name, monthly_salary
 from employee_salary
 	join employees on employee_id=employees.id 
 	join salary1 on salary_id=salary1.id
 where monthly_salary<2000;
  
 --3. ������� ��� ���������� �������, �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
 
 select monthly_salary
 from salary1 s 
 	left join employee_salary es on s.id = es.salary_id
 	where employee_id is null;
 
select employee_name, monthly_salary
from employee_salary
	left join employees on employee_id=employees.id 
	join salary1 on salary_id=salary1.id
where employee_name is NULL;
 
 --4. ������� ��� ���������� �������  ������ 2100 �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
 
select employee_name, monthly_salary
from employee_salary
	left join employees on employee_id=employees.id 
	join salary1 on salary_id=salary1.id 
where employee_name is null and monthly_salary<2100;
 
 --5. ����� ���� ���������� ���� �� ��������� ��.
 
select employees.employee_name, monthly_salary 
from employees
	left join employee_salary on employees.id=employee_salary.id 
	left join salary1 on salary_id=salary1.id
where monthly_salary is null;
 
 --6. ������� ���� ���������� � ���������� �� ���������.
  
select employees.employee_name, roles1.role_name 
from roles_employee
	join employees on roles_employee.employee_id=employees.id
	join roles1 on roles1.id= roles_employee.role_id;

 --7. ������� ����� � ��������� ������ Java �������������.
 
select employee_name, role_name
from roles_employee
	join employees on employee_id=employees.id 
	join roles1 on role_id=roles1.id
where role_name like '%Java%';
 
 --8. ������� ����� � ��������� ������ Python �������������.
 
select employee_name, role_name
from roles_employee
	join employees on employee_id=employees.id 
	join roles1 on role_id=roles1.id 
where role_name like '%Python%';
 
 --9. ������� ����� � ��������� ���� QA ���������.

select employee_name, role_name
from roles_employee 
	join employees on employee_id=employees.id 
	join roles1 on role_id=roles1.id 
where role_name like '%QA%';
 
 --10. ������� ����� � ��������� ������ QA ���������.

select employee_name, role_name
from roles_employee 
	join employees on employee_id=employees.id 
	join roles1 on role_id=roles1.id 
where role_name like '%Manual%QA%';
 
 --11. ������� ����� � ��������� ��������������� QA

select employee_name, role_name
from roles_employee
	join employees on employee_id=employees.id 
	join roles1 on role_id=roles1.id 
where role_name like '%Automation%QA%'
 
 --12. ������� ����� � �������� Junior ������������

select employee_name, monthly_salary
from roles1 
	join roles_employee on roles1.id=roles_employee.role_id
	join employees on roles_employee.employee_id=employees.id
	join employee_salary on employee_salary.employee_id=employees.id
	join salary1 on salary1.id=salary_id
where role_name like '%Junior%';
 
 --13. ������� ����� � �������� Middle ������������

select employee_name, monthly_salary
from roles1 r 
	join roles_employee re on r.id=re.role_id 
	join employees e on e.id=re.employee_id 
	join employee_salary es on es.employee_id=e.id 
	join salary1 s on s.id=es.salary_id 
where role_name like '%Middle%';
 
 --14. ������� ����� � �������� Senior ������������

select employee_name, monthly_salary
from roles1 r 
	join roles_employee re on r.id = re.role_id 
	join employees e on e.id = re.employee_id 
	join employee_salary es on es.employee_id = e.id 
	join salary s on s.id = es.salary_id 
where role_name like '%Senior%';
 
 --15. ������� �������� Java �������������
 
select monthly_salary
from roles1 r 
	join roles_employee re on r.id = re.role_id 
	join employees e on e.id = re.employee_id 
	join employee_salary es on es.employee_id = re.employee_id 
	join salary1 s on s.id = es.salary_id 
where role_name like '%Java%';
 
 --16. ������� �������� Python �������������

select monthly_salary
from roles1 r 
	join roles_employee re on re.role_id = r.id 
	join employees e on e.id = re.employee_id 
	join employee_salary es on es.employee_id = re.employee_id 
	join salary1 s on s.id = es.salary_id 
where role_name like '%Python%';
 
 --17. ������� ����� � �������� Junior Python �������������
  
select employee_name, monthly_salary
from roles1 r 
	join roles_employee re on r.id = re.role_id  
	join employees e on e.id = re.employee_id 
	join employee_salary es on es.employee_id = e.id 
	join salary1 s on s.id = es.salary_id 
where role_name like '%Junior%Python%';

 --18. ������� ����� � �������� Middle JS �������������

select employee_name, monthly_salary
from roles1 r 
	join roles_employee re on re.role_id = r.id 
	join employees e on e.id = re.employee_id 
	join employee_salary es on es.employee_id = e.id 
	join salary1 s on s.id = es.salary_id 
where role_name like '%Middle%Java%';
 
 --19. ������� ����� � �������� Senior Java �������������

select employee_name, monthly_salary
from roles1 r 
	join roles_employee re on re.role_id = r.id 
	join employees e on e.id = re.employee_id 
	join employee_salary es on es.employee_id = e.id 
	join salary1 s on es.salary_id = s.id 
where role_name like '%Senior%Java%';
 
 --20. ������� �������� Junior QA ���������
 
select employee_name, monthly_salary
from roles1 r 
	join roles_employee re on r.id = re.role_id 
	join employees e on e.id = re.role_id 
	join employee_salary es on es.employee_id = e.id 
	join salary1 s on s.id = es.salary_id 
where role_name like '%Junior%QA%';
 
 --21. ������� ������� �������� ���� Junior ������������

select AVG(monthly_salary) as AVG_Salary_of_Juniors
from roles1 r 
	join roles_employee re on re.role_id = r.id 
	join employees e on e.id = re.employee_id 
	join employee_salary es on es.employee_id = e.id 
	join salary1 s on s.id = es.salary_id 
where role_name like '%Junior%';
 
 --22. ������� ����� ������� JS �������������
 
select SUM(monthly_salary) as sum_salary_of_JS_dev
from roles1 r 
	join roles_employee re on re.role_id = r.id 
	join employees e on e.id = re.employee_id 
	join employee_salary es on es.employee_id = e.id 
	join salary1 s on s.id = es.salary_id 
where role_name like '%Java%'

 --23. ������� ����������� �� QA ���������
 
select min(monthly_salary) as min_salary_of_QA
from roles1 r
	join roles_employee re on re.role_id = r.id 
	join employees e on e.id = re.employee_id 
	join employee_salary es on es.employee_id = e.id 
	join salary1 s on s.id = es.salary_id 
where role_name like '%QA%';
 
 --24. ������� ������������ �� QA ���������

select max(monthly_salary) as max_salary_of_QA
from roles1 r 
	join roles_employee re on re.role_id = r.id 
	join employees e on e.id = re.employee_id 
	join employee_salary es on es.employee_id = e.id 
	join salary1 s on s.id = es.salary_id 
where role_name like '%QA%';
 
 --25. ������� ���������� QA ���������

select count(employee_name) as count_of_QA_roles
from roles1 r 
	join roles_employee re on re.role_id = r.id 
	join employees e on e.id = re.employee_id 
	join employee_salary es on es.employee_id = e.id 
	--join salary1 s on s.id = es.salary_id 
where role_name like '%QA%';
 
 --26. ������� ���������� Middle ������������.
 
select count(employee_name) as count_of_Middle_roles
from roles1 r 
	join roles_employee re on re.role_id = r.id 
	join employees e on e.id = re.employee_id 
	join employee_salary es on es.employee_id = e.id 
	--join salary1 s on s.id = es.salary_id 
where role_name like '%Middle%';

 --27. ������� ���������� �������������
 
select count(employee_name) as count_of_employees
from roles1 r 
	join roles_employee re on re.role_id = r.id 
	join employees e on e.id = re.employee_id 
	join employee_salary es on es.employee_id = e.id; 
	--join salary1 s on s.id = es.salary_id; 	

 --28. ������� ���� (�����) �������� �������������.
      
select sum(monthly_salary) as sum_salary_of_all_employees
from roles1 r 
	join roles_employee re on re.role_id = r.id 
	join employees e on e.id = re.employee_id 
	join employee_salary es on es.employee_id = e.id 
	join salary1 s on s.id = es.salary_id; 	

 --29. ������� �����, ��������� � �� ���� ������������ �� �����������
 
select employee_name, role_name, monthly_salary
from roles1 r 
	join roles_employee re on re.role_id = r.id 
	join employees e on e.id = re.employee_id 
	join employee_salary es on es.employee_id = e.id 
	join salary1 s on s.id = es.salary_id 
order by monthly_salary;
 
 --30. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� �� 1700 �� 2300
  
select employee_name, role_name, monthly_salary
from roles1 r 
	join roles_employee re on re.role_id = r.id 
	join employees e on e.id = re.employee_id 
	join employee_salary es on es.employee_id = e.id 
	join salary1 s on s.id = es.salary_id 
where monthly_salary between 1700 and 2300
order by monthly_salary; 

 --31. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ������ 2300
 
select employee_name, role_name, monthly_salary
from roles1 r 
	join roles_employee re on re.role_id = r.id 
	join employees e on e.id = re.employee_id 
	join employee_salary es on es.employee_id = e.id 
	join salary1 s on s.id = es.salary_id 
where monthly_salary<2300
order by monthly_salary;
 
 --32. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ����� 1100, 1500, 2000

select employee_name, role_name, monthly_salary
from roles1 r 
	join roles_employee re on re.role_id = r.id 
	join employees e on e.id = re.employee_id 
	join employee_salary es on es.employee_id = e.id 
	join salary1 s on s.id = es.salary_id 
where monthly_salary = 1100 or monthly_salary = 1500 or monthly_salary = 2000
order by monthly_salary;