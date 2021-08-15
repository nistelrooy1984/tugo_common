INSERT INTO users(id,user_name,encrypted_password,first_name,last_name,email,phone,department_id,role_id,reports_to_id,is_admin,modified_by_id,description,deleted,created_at,updated_at) VALUES 
(1,'admin','$2a$12$LWUNa0KGyssVfe6hCHc1Cup2LCs8zjJ0rlpl2YdMWaEhF5k7cCJrG',null,'Administrator','admin@gmail.com','0973494293',1,1,1,true,1,null,0,now(),now()),
(2,'ceo','$2a$12$LWUNa0KGyssVfe6hCHc1Cup2LCs8zjJ0rlpl2YdMWaEhF5k7cCJrG',null,'CEO','ceo@gmail.com',null,1,2,1,false,1,null,0,now(),now()),
(3,'vice_president','$2a$12$LWUNa0KGyssVfe6hCHc1Cup2LCs8zjJ0rlpl2YdMWaEhF5k7cCJrG',null,'Vice President','vice_president@gmail.com',null,1,3,2,false,1,null,0,now(),now()),
(4,'sales_manager','$2a$12$LWUNa0KGyssVfe6hCHc1Cup2LCs8zjJ0rlpl2YdMWaEhF5k7cCJrG',null,'Sales Manager','sales_manager@gmail.com',null,5,4,3,false,1,null,0,now(),now()),
(5,'sales_person','$2a$12$LWUNa0KGyssVfe6hCHc1Cup2LCs8zjJ0rlpl2YdMWaEhF5k7cCJrG',null,'Sales Person','sales_person@gmail.com',null,5,5,4,false,1,null,0,now(),now())
