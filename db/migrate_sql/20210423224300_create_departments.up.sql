CREATE TABLE departments (
  id bigserial PRIMARY KEY,

  department_name varchar NOT NULL,

  parent_department_id int8 NULL,

  description varchar NULL,

  created_at timestamp without time zone NOT NULL,

  updated_at timestamp without time zone NOT NULL 
);

COMMENT ON TABLE departments IS 'Departments';

-- Column comments

COMMENT ON COLUMN departments.id IS 'ID';

COMMENT ON COLUMN departments.department_name IS 'Department Name';

COMMENT ON COLUMN departments.parent_department_id IS 'Parent Department ID';

COMMENT ON COLUMN departments.description IS 'Description';

COMMENT ON COLUMN departments.created_at IS 'Created At';

COMMENT ON COLUMN departments.updated_at IS 'Updated At';