create table employees (
	id serial primary key,
	employee_name Varchar(50) not null
);

insert into employees (employee_name)
values
('Teegan Dennis'),
('Derek Chen'),
('John Bullock'),
('Felix Johns'),
('Venus Hogan'),
('Abdul Griffith'),
('Ira Stephenson'),
('Aaron Fields'),
('Vielka Fitzgerald'),
('Cleo O''Neill'),
('Caesar Mccarty'),
('Harlan Welch'),
('Violet York'),
('Russell Hardin'),
('Aladdin Robles'),
('Dora Miller'),
('Reese Sosa'),
('Quamar Dorsey'),
('Callie Mclean'),
('Autumn Adams'),
('Ray Monroe'),
('Dieter Mcdowell'),
('Anthony Raymond'),
('Jacob Lara'),
('Brenden Hayes'),
('Alvin Davidson'),
('Victoria Morse'),
('Ignatius Ruiz'),
('Keelie Ray'),
('Chester Floyd'),
('Callie Raymond'),
('Garrett Cobb'),
('Kessie Kirby'),
('Emi Guzman'),
('Amela Cardenas'),
('Joshua Simpson'),
('Xander Crosby'),
('Brody Barlow'),
('Ifeoma Neal'),
('Hedley Wallace'),
('Fleur Shields'),
('Courtney Hancock'),
('Declan Gillespie'),
('Mufutau Quinn'),
('Jaime Greer'),
('Eric Gay'),
('Stone Matthews'),
('Carly Huffman'),
('Jaquelyn Moreno'),
('Sasha Rich');
insert into employees (employee_name)
values
('Amethyst Morin'),
  ('Porter Bird'),
  ('Faith Olson'),
  ('Daquan Maxwell'),
  ('Emma Berger'),
  ('Alexis Roberson'),
  ('Melanie Montgomery'),
  ('Violet Mcmahon'),
  ('Hadassah Hutchinson'),
  ('Tanner Patterson'),
  ('Donovan Franks'),
  ('Nero Martin'),
  ('Emerson Oliver'),
  ('Hilda Shannon'),
  ('Idona Wallace'),
  ('Jared Lloyd'),
  ('Lester Key'),
  ('Kirestin Barry'),
  ('Quyn Stevens'),
  ('Darryl Mccall');


select * from employees;


create table salary (
	id serial primary key,
	monthly_salary Int not null
);

insert into salary (monthly_salary)
values
	(1000),
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
	(2400);

select * from salary;
	

create table employee_salary (
	id serial primary key,
	employee_id Int not null unique,
	salary_id Int not null
);

insert into employee_salary (employee_id, salary_id)
values
(8,3),
(15,2),
(137,6),
(36,5),
(37,14),
(558,14),
(25,4),
(444,9),
(1,12),
(133,3),
(53,6),
(45,6),
(58,14),
(514,1),
(66,2),
(29,9),
(549,3),
(50,13),
(67,12),
(30,9),
(35,2),
(485,14),
(9,4),
(7,10),
(51,4),
(18,7),
(87,1),
(56,7),
(46,10),
(34,2),
(61,4),
(95,7),
(60,6),
(69,6),
(63,9),
(39,9),
(44,4),
(28,14),
(77,4),
(52,8);
 
 select * from employee_salary;


create table roles (
	id serial primary key,
	role_name Int not null unique
);

alter table roles alter column role_name TYPE varchar(30);

insert into roles (role_name)
values
('Junior Python developer'),
('Middle Python developer'),
('Senior Python developer'),
('Junior Java developer'),
('Middle Java developer'),
('Senior Java developer'),
('Junior JavaScript developer'),
('Middle JavaScript developer'),
('Senior JavaScript developer'),
('Junior Manual QA engineer'),
('Middle Manual QA engineer'),
('Senior Manual QA engineer'),
('Project Manager'),
('Designer'),
('HR'),
('CEO'),
('Sales manager'),
('Junior Automation QA engineer'),
('Middle Automation QA engineer'),
('Senior Automation QA engineer');

select * from roles;



create table roles_employee (
	id serial primary key,
	employee_id Int not null unique,
	role_id Int not null,
	foreign key(employee_id)
		references employees(id),
	foreign key(role_id)
		references roles(id)
);

insert into roles_employee (employee_id, role_id)
values
  (1,4),
  (2,16),
  (3,5),
  (4,13),
  (5,14),
  (6,7),
  (7,12),
  (8,13),
  (9,9),
  (10,3),
  (11,5),
  (12,7),
  (13,17),
  (14,5),
  (15,15),
  (16,11),
  (17,14),
  (18,14),
  (19,4),
  (20,3),
  (21,16),
  (22,20),
  (23,7),
  (24,11),
  (25,9),
  (26,13),
  (27,10),
  (28,9),
  (29,20),
  (30,12),
  (31,3),
  (32,7),
  (33,13),
  (34,9),
  (35,1),
  (36,16),
  (37,17),
  (38,14),
  (39,7),
  (40,10);
 
 select * from roles_employee;


drop table employees, salary, employee_salary, roles, roles_employee;
