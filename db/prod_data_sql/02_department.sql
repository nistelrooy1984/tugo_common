INSERT INTO departments(id,department_name,parent_department_id,description,created_at,updated_at) VALUES 
(1,'General Management',null,'General Management',now(),now()),
(2,'Marketing',1,'Marketing Department',now(),now()),
(3,'Operations',1,'Operations Department',now(),now()),
(4,'Finance',1,'Finance Department',now(),now()),
(5,'Sales',1,'Sales Department',now(),now()),
(6,'HR',1,'Human Resource Department',now(),now()),
(7,'Purchase',1,'Purchase Department',now(),now())
