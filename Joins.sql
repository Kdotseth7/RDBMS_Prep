insert into "tblPerson" (name, email, gender_id)
values ('Klay', 'klay@email.com', null);

select * from "tblPerson";
commit;

select *
from "tblGender";

select *
from "tblEmployee";

select *
from "tblDepartment";

Insert into "tblDepartment" (dept_name, location, dept_head) values ('IT', 'London', 'Rick');
Insert into "tblDepartment" (dept_name, location, dept_head) values ('Payroll', 'Delhi', 'Ron');
Insert into "tblDepartment" (dept_name, location, dept_head) values ('HR', 'New York', 'Christie');
Insert into "tblDepartment" (dept_name, location, dept_head) values ('Other Department', 'Sydney', 'Cindrella');

Insert into "tblEmployee" (name, gender, salary, dept_id) values ('Tom', 'Male', 4000, 1);
Insert into "tblEmployee" (name, gender, salary, dept_id) values ('Pam', 'Female', 3000, 3);
Insert into "tblEmployee" (name, gender, salary, dept_id) values ('John', 'Male', 3500, 1);
Insert into "tblEmployee" (name, gender, salary, dept_id) values ('Sam', 'Male', 4500, 2);
Insert into "tblEmployee" (name, gender, salary, dept_id) values ('Todd', 'Male', 2800, 2);
Insert into "tblEmployee" (name, gender, salary, dept_id) values ('Ben', 'Male', 7000, 1);
Insert into "tblEmployee" (name, gender, salary, dept_id) values ('Sara', 'Female', 4800, 3);
Insert into "tblEmployee" (name, gender, salary, dept_id) values ('Valarie', 'Female', 5500, 1);
Insert into "tblEmployee" (name, gender, salary, dept_id) values ('James', 'Male', 6500, NULL);
Insert into "tblEmployee" (name, gender, salary, dept_id) values ('Russell', 'Male', 8800, NULL);

/*Inner Join*/
select e.name, e.gender, e.salary, d.dept_name
from "tblEmployee" e
inner join "tblDepartment" d
on e.dept_id = d.id;

/*Left Join*/
select e.name, e.gender, e.salary, d.dept_name
from "tblEmployee" e
left join "tblDepartment" d
on e.dept_id = d.id;

/*Right Join*/
select e.name, e.gender, e.salary, d.dept_name
from "tblEmployee" e
right join "tblDepartment" d
on e.dept_id = d.id;

/*Full Join*/
select e.name, e.gender, e.salary, d.dept_name
from "tblEmployee" e
full join "tblDepartment" d
on e.dept_id = d.id;

/*Cross Join*/
select e.name, e.gender, e.salary, d.dept_name
from "tblEmployee" e
cross join "tblDepartment" d;

/*Non-Matching Rows from Left Table*/
select e.name, e.gender, e.salary, d.dept_name
from "tblEmployee" e
left join "tblDepartment" d
on e.dept_id = d.id
where e.dept_id IS NULL;

/*Non-Matching Rows from Right Table*/
select e.name, e.gender, e.salary, d.dept_name
from "tblEmployee" e
right join "tblDepartment" d
on e.dept_id = d.id
where e.dept_id IS NULL;

/*Non-Matching Rows from Both Table*/
select e.name, e.gender, e.salary, d.dept_name
from "tblEmployee" e
full join "tblDepartment" d
on e.dept_id = d.id
where e.dept_id IS NULL
or d.id IS NULL;

Insert into "table_Employee" (name, manager_id) values ('Mike', 3);
Insert into "table_Employee" (name, manager_id) values ('Rob', 1);
Insert into "table_Employee" (name, manager_id) values ('Todd', NULL);
Insert into "table_Employee" (name, manager_id) values ('Ben', 1);
Insert into "table_Employee" (name, manager_id) values ('Sam', 1);

commit;

/*Self-Joins*/

/*Inner Join*/
select e.name as Employee, m.name as Manager
from "table_Employee" e
inner join "table_Employee" m
on e.manager_id = m.emp_id;

/*Left Join*/
select e.name as Employee, m.name as Manager
from "table_Employee" e
left join "table_Employee" m
on e.manager_id = m.emp_id;

/*Right Join*/
select e.name as Employee, m.name as Manager
from "table_Employee" e
right join "table_Employee" m
on e.manager_id = m.emp_id;

/*Full Join*/
select e.name as Employee, m.name as Manager
from "table_Employee" e
full join "table_Employee" m
on e.manager_id = m.emp_id;

/*Cross Join*/
select e.name as Employee, m.name as Manager
from "table_Employee" e
cross join "table_Employee" m;
