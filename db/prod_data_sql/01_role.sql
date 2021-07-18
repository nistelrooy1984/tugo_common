INSERT INTO roles(id,role_id,role_name,parent_role,depth,description,created_at,updated_at) VALUES 
(1,'H1','Organization','H1',0,'Organization',now(),now()),
(2,'H2','CEO','H1::H2',1,'CEO',now(),now()),
(3,'H3','Vice President','H1::H2::H3',2,'Vice President',now(),now()),
(4,'H4','Sales Manager','H1::H2::H3::H4',3,'Sales Manager',now(),now()),
(5,'H5','Sales Person','H1::H2::H3::H4::H5',4,'Sales Person',now(),now())
