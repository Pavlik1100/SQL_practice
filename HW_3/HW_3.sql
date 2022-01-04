--1. Âûâåñòè âñåõ ðàáîòíèêîâ ÷üè çàðïëàòû åñòü â áàçå, âìåñòå ñ çàðïëàòàìè.

select employee_name, monthly_salary 
from employee_salary 
	join employees on employee_id=employees.id
	join salary1 on salary_id=salary1.id;
 
 --2. Âûâåñòè âñåõ ðàáîòíèêîâ ó êîòîðûõ ÇÏ ìåíüøå 2000.
 
 select employee_name, monthly_salary
 from employee_salary
 	join employees on employee_id=employees.id 
 	join salary1 on salary_id=salary1.id
 where monthly_salary<2000;
  
 --3. Âûâåñòè âñå çàðïëàòíûå ïîçèöèè, íî ðàáîòíèê ïî íèì íå íàçíà÷åí. (ÇÏ åñòü, íî íå ïîíÿòíî êòî å¸ ïîëó÷àåò.)
 
 select monthly_salary
 from salary1 s 
 	left join employee_salary es on s.id = es.salary_id
 	where employee_id is null;
 
select employee_name, monthly_salary
from employee_salary
	left join employees on employee_id=employees.id 
	join salary1 on salary_id=salary1.id
where employee_name is NULL;
 
 --4. Âûâåñòè âñå çàðïëàòíûå ïîçèöèè  ìåíüøå 2100 íî ðàáîòíèê ïî íèì íå íàçíà÷åí. (ÇÏ åñòü, íî íå ïîíÿòíî êòî å¸ ïîëó÷àåò.)
 
select employee_name, monthly_salary
from employee_salary
	left join employees on employee_id=employees.id 
	join salary1 on salary_id=salary1.id 
where employee_name is null and monthly_salary<2100;
 
 --5. Íàéòè âñåõ ðàáîòíèêîâ êîìó íå íà÷èñëåíà ÇÏ.
 
select employees.employee_name, monthly_salary 
from employees
	left join employee_salary on employees.id=employee_salary.id 
	left join salary1 on salary_id=salary1.id
where monthly_salary is null;
 
 --6. Âûâåñòè âñåõ ðàáîòíèêîâ ñ íàçâàíèÿìè èõ äîëæíîñòè.
  
select employees.employee_name, roles1.role_name 
from roles_employee
	join employees on roles_employee.employee_id=employees.id
	join roles1 on roles1.id= roles_employee.role_id;

 --7. Âûâåñòè èìåíà è äîëæíîñòü òîëüêî Java ðàçðàáîò÷èêîâ.
 
select employee_name, role_name
from roles_employee
	join employees on employee_id=employees.id 
	join roles1 on role_id=roles1.id
where role_name like '%Java%';
 
 --8. Âûâåñòè èìåíà è äîëæíîñòü òîëüêî Python ðàçðàáîò÷èêîâ.
 
select employee_name, role_name
from roles_employee
	join employees on employee_id=employees.id 
	join roles1 on role_id=roles1.id 
where role_name like '%Python%';
 
 --9. Âûâåñòè èìåíà è äîëæíîñòü âñåõ QA èíæåíåðîâ.

select employee_name, role_name
from roles_employee 
	join employees on employee_id=employees.id 
	join roles1 on role_id=roles1.id 
where role_name like '%QA%';
 
 --10. Âûâåñòè èìåíà è äîëæíîñòü ðó÷íûõ QA èíæåíåðîâ.

select employee_name, role_name
from roles_employee 
	join employees on employee_id=employees.id 
	join roles1 on role_id=roles1.id 
where role_name like '%Manual%QA%';
 
 --11. Âûâåñòè èìåíà è äîëæíîñòü àâòîìàòèçàòîðîâ QA

select employee_name, role_name
from roles_employee
	join employees on employee_id=employees.id 
	join roles1 on role_id=roles1.id 
where role_name like '%Automation%QA%'
 
 --12. Âûâåñòè èìåíà è çàðïëàòû Junior ñïåöèàëèñòîâ

select employee_name, monthly_salary
from roles1 
	join roles_employee on roles1.id=roles_employee.role_id
	join employees on roles_employee.employee_id=employees.id
	join employee_salary on employee_salary.employee_id=employees.id
	join salary1 on salary1.id=salary_id
where role_name like '%Junior%';
 
 --13. Âûâåñòè èìåíà è çàðïëàòû Middle ñïåöèàëèñòîâ

select employee_name, monthly_salary
from roles1 r 
	join roles_employee re on r.id=re.role_id 
	join employees e on e.id=re.employee_id 
	join employee_salary es on es.employee_id=e.id 
	join salary1 s on s.id=es.salary_id 
where role_name like '%Middle%';
 
 --14. Âûâåñòè èìåíà è çàðïëàòû Senior ñïåöèàëèñòîâ

select employee_name, monthly_salary
from roles1 r 
	join roles_employee re on r.id = re.role_id 
	join employees e on e.id = re.employee_id 
	join employee_salary es on es.employee_id = e.id 
	join salary s on s.id = es.salary_id 
where role_name like '%Senior%';
 
 --15. Âûâåñòè çàðïëàòû Java ðàçðàáîò÷èêîâ
 
select monthly_salary
from roles1 r 
	join roles_employee re on r.id = re.role_id 
	join employees e on e.id = re.employee_id 
	join employee_salary es on es.employee_id = re.employee_id 
	join salary1 s on s.id = es.salary_id 
where role_name like '%Java%';
 
 --16. Âûâåñòè çàðïëàòû Python ðàçðàáîò÷èêîâ

select monthly_salary
from roles1 r 
	join roles_employee re on re.role_id = r.id 
	join employees e on e.id = re.employee_id 
	join employee_salary es on es.employee_id = re.employee_id 
	join salary1 s on s.id = es.salary_id 
where role_name like '%Python%';
 
 --17. Âûâåñòè èìåíà è çàðïëàòû Junior Python ðàçðàáîò÷èêîâ
  
select employee_name, monthly_salary
from roles1 r 
	join roles_employee re on r.id = re.role_id  
	join employees e on e.id = re.employee_id 
	join employee_salary es on es.employee_id = e.id 
	join salary1 s on s.id = es.salary_id 
where role_name like '%Junior%Python%';

 --18. Âûâåñòè èìåíà è çàðïëàòû Middle JS ðàçðàáîò÷èêîâ

select employee_name, monthly_salary
from roles1 r 
	join roles_employee re on re.role_id = r.id 
	join employees e on e.id = re.employee_id 
	join employee_salary es on es.employee_id = e.id 
	join salary1 s on s.id = es.salary_id 
where role_name like '%Middle%Java%';
 
 --19. Âûâåñòè èìåíà è çàðïëàòû Senior Java ðàçðàáîò÷èêîâ

select employee_name, monthly_salary
from roles1 r 
	join roles_employee re on re.role_id = r.id 
	join employees e on e.id = re.employee_id 
	join employee_salary es on es.employee_id = e.id 
	join salary1 s on es.salary_id = s.id 
where role_name like '%Senior%Java%';
 
 --20. Âûâåñòè çàðïëàòû Junior QA èíæåíåðîâ
 
select employee_name, monthly_salary
from roles1 r 
	join roles_employee re on r.id = re.role_id 
	join employees e on e.id = re.role_id 
	join employee_salary es on es.employee_id = e.id 
	join salary1 s on s.id = es.salary_id 
where role_name like '%Junior%QA%';
 
 --21. Âûâåñòè ñðåäíþþ çàðïëàòó âñåõ Junior ñïåöèàëèñòîâ

select AVG(monthly_salary) as AVG_Salary_of_Juniors
from roles1 r 
	join roles_employee re on re.role_id = r.id 
	join employees e on e.id = re.employee_id 
	join employee_salary es on es.employee_id = e.id 
	join salary1 s on s.id = es.salary_id 
where role_name like '%Junior%';
 
 --22. Âûâåñòè ñóììó çàðïëàò JS ðàçðàáîò÷èêîâ
 
select SUM(monthly_salary) as sum_salary_of_JS_dev
from roles1 r 
	join roles_employee re on re.role_id = r.id 
	join employees e on e.id = re.employee_id 
	join employee_salary es on es.employee_id = e.id 
	join salary1 s on s.id = es.salary_id 
where role_name like '%Java%'

 --23. Âûâåñòè ìèíèìàëüíóþ ÇÏ QA èíæåíåðîâ
 
select min(monthly_salary) as min_salary_of_QA
from roles1 r
	join roles_employee re on re.role_id = r.id 
	join employees e on e.id = re.employee_id 
	join employee_salary es on es.employee_id = e.id 
	join salary1 s on s.id = es.salary_id 
where role_name like '%QA%';
 
 --24. Âûâåñòè ìàêñèìàëüíóþ ÇÏ QA èíæåíåðîâ

select max(monthly_salary) as max_salary_of_QA
from roles1 r 
	join roles_employee re on re.role_id = r.id 
	join employees e on e.id = re.employee_id 
	join employee_salary es on es.employee_id = e.id 
	join salary1 s on s.id = es.salary_id 
where role_name like '%QA%';
 
 --25. Âûâåñòè êîëè÷åñòâî QA èíæåíåðîâ

select count(employee_name) as count_of_QA_roles
from roles1 r 
	join roles_employee re on re.role_id = r.id 
	join employees e on e.id = re.employee_id 
	join employee_salary es on es.employee_id = e.id 
	--join salary1 s on s.id = es.salary_id 
where role_name like '%QA%';
 
 --26. Âûâåñòè êîëè÷åñòâî Middle ñïåöèàëèñòîâ.
 
select count(employee_name) as count_of_Middle_roles
from roles1 r 
	join roles_employee re on re.role_id = r.id 
	join employees e on e.id = re.employee_id 
	join employee_salary es on es.employee_id = e.id 
	--join salary1 s on s.id = es.salary_id 
where role_name like '%Middle%';

 --27. Âûâåñòè êîëè÷åñòâî ðàçðàáîò÷èêîâ
 
select count(employee_name) as count_of_employees
from roles1 r 
	join roles_employee re on re.role_id = r.id 
	join employees e on e.id = re.employee_id 
	join employee_salary es on es.employee_id = e.id; 
	--join salary1 s on s.id = es.salary_id; 	

 --28. Âûâåñòè ôîíä (ñóììó) çàðïëàòû ðàçðàáîò÷èêîâ.
      
select sum(monthly_salary) as sum_salary_of_all_employees
from roles1 r 
	join roles_employee re on re.role_id = r.id 
	join employees e on e.id = re.employee_id 
	join employee_salary es on es.employee_id = e.id 
	join salary1 s on s.id = es.salary_id; 	

 --29. Âûâåñòè èìåíà, äîëæíîñòè è ÇÏ âñåõ ñïåöèàëèñòîâ ïî âîçðàñòàíèþ
 
select employee_name, role_name, monthly_salary
from roles1 r 
	join roles_employee re on re.role_id = r.id 
	join employees e on e.id = re.employee_id 
	join employee_salary es on es.employee_id = e.id 
	join salary1 s on s.id = es.salary_id 
order by monthly_salary;
 
 --30. Âûâåñòè èìåíà, äîëæíîñòè è ÇÏ âñåõ ñïåöèàëèñòîâ ïî âîçðàñòàíèþ ó ñïåöèàëèñòîâ ó êîòîðûõ ÇÏ îò 1700 äî 2300
  
select employee_name, role_name, monthly_salary
from roles1 r 
	join roles_employee re on re.role_id = r.id 
	join employees e on e.id = re.employee_id 
	join employee_salary es on es.employee_id = e.id 
	join salary1 s on s.id = es.salary_id 
where monthly_salary between 1700 and 2300
order by monthly_salary; 

 --31. Âûâåñòè èìåíà, äîëæíîñòè è ÇÏ âñåõ ñïåöèàëèñòîâ ïî âîçðàñòàíèþ ó ñïåöèàëèñòîâ ó êîòîðûõ ÇÏ ìåíüøå 2300
 
select employee_name, role_name, monthly_salary
from roles1 r 
	join roles_employee re on re.role_id = r.id 
	join employees e on e.id = re.employee_id 
	join employee_salary es on es.employee_id = e.id 
	join salary1 s on s.id = es.salary_id 
where monthly_salary<2300
order by monthly_salary;
 
 --32. Âûâåñòè èìåíà, äîëæíîñòè è ÇÏ âñåõ ñïåöèàëèñòîâ ïî âîçðàñòàíèþ ó ñïåöèàëèñòîâ ó êîòîðûõ ÇÏ ðàâíà 1100, 1500, 2000

select employee_name, role_name, monthly_salary
from roles1 r 
	join roles_employee re on re.role_id = r.id 
	join employees e on e.id = re.employee_id 
	join employee_salary es on es.employee_id = e.id 
	join salary1 s on s.id = es.salary_id 
where monthly_salary = 1100 or monthly_salary = 1500 or monthly_salary = 2000
order by monthly_salary; 
