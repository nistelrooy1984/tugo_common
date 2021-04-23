CREATE TABLE roles (
  id bigserial PRIMARY KEY,

  role_name varchar NULL,

  parent_role varchar NULL,

  depth int8 NULL,

  created_at timestamp without time zone NOT NULL,

  updated_at timestamp without time zone NOT NULL 
);

COMMENT ON TABLE roles IS 'Roles';

-- Column comments