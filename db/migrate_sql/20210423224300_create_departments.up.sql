CREATE TABLE departments (
  id bigserial PRIMARY KEY,

  department_name varchar NULL,

  parent_department_id int8 NULL,

  description varchar NULL,

  created_at timestamp without time zone NOT NULL,

  updated_at timestamp without time zone NOT NULL 
);

COMMENT ON TABLE departments IS 'Departments';

-- Column comments