CREATE TABLE users (
  id bigserial PRIMARY KEY,

  user_name varchar NULL,

  encrypted_password varchar NULL,

  first_name varchar NULL,

  last_name varchar NOT NULL,

  email varchar NULL,

  phone varchar NULL,

  department_id int8 NULL,

  role_id int8 NULL,

  reports_to_id int8 NULL,

  is_admin bool NULL,

  modified_by_id int8 NULL,

  description varchar NULL,

  deleted int8 NULL,

  created_at timestamp without time zone NOT NULL,

  updated_at timestamp without time zone NOT NULL 
);

COMMENT ON TABLE users IS 'Users';

-- Column comments