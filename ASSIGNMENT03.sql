

--ZAID INAMDAR---
--1

select ename from emp where job='MANAGER'

--2

select ename,sal from emp where sal>1000

--3

select ename,sal from emp where ename<>'JAMES'

--4

select * from emp where ename like 'S%'

--5

select ename from emp where ename like '%A%'

--6

select ename from emp where ename like '__L%'

--7

Select ename,sal/30 as daily_salary from emp where ename='JONES'

--8

select ename,sal*12 as total_monthlysalary from emp

--9

Select avg(sal*12) as avg_salary from emp

--10

Select ename,job,sal,deptno from emp where job not in('SALESMAN') and deptno=30

--11

select distinct emp.deptno,dept.dname from emp inner join dept on emp.deptno=dept.deptno 

--12

select ename as employees,sal as monthly_salary,deptno from emp where sal>1500 and (deptno=10 or deptno=30)


--13

select ename,job,sal from emp where (job='MANAGER'or job='ANALYST') and (sal not in(1000,3000,5000))


--14

select ename,sal,comm from emp where comm is not null and comm>(sal*0.1)

--15

select ename from emp where ename like '%L%L%' and (deptno=30 or mgr=7782)

--16

select ename,deptno,datediff(year,hiredate,getdate()) as experience from emp where (datediff(year,hiredate,getdate())>10 ) and (datediff(year,hiredate,getdate())<20)

--17

select dept.dname,emp.ename from emp inner join dept on emp.deptno=dept.deptno order by dept.dname asc,emp.ename desc

--18
select datediff(year,hiredate,getdate()) as experience from emp where ename='MILLER'
