CREATE TABLE users (
  id bigserial PRIMARY KEY,

  user_name varchar NOT NULL,

  encrypted_password varchar NOT NULL,

  first_name varchar NULL,

  last_name varchar NOT NULL,

  email varchar NULL,

  phone varchar NULL,

  department_id int8 NULL,

  role_id int8 NOT NULL,

  reports_to_id int8 NULL,

  is_admin bool NULL,

  modified_by_id int8 NOT NULL,

  description varchar NULL,

  deleted int8 NULL,

  created_at timestamp without time zone NOT NULL,

  updated_at timestamp without time zone NOT NULL 
);

COMMENT ON TABLE users IS 'Users';

-- Column comments

COMMENT ON COLUMN users.id IS 'ID';

COMMENT ON COLUMN users.user_name IS 'User Name';

COMMENT ON COLUMN users.encrypted_password IS 'Password';

COMMENT ON COLUMN users.first_name IS 'First Name';

COMMENT ON COLUMN users.last_name IS 'Last Name';

COMMENT ON COLUMN users.email IS 'Email';

COMMENT ON COLUMN users.phone IS 'Phone';

COMMENT ON COLUMN users.department_id IS 'Department ID';

COMMENT ON COLUMN users.role_id IS 'Role ID';

COMMENT ON COLUMN users.reports_to_id IS 'Reports To ID';

COMMENT ON COLUMN users.is_admin IS 'Is Admin';

COMMENT ON COLUMN users.modified_by_id IS 'Modified By ID';

COMMENT ON COLUMN users.deleted IS 'Deleted';

COMMENT ON COLUMN users.created_at IS 'Created At';

COMMENT ON COLUMN users.updated_at IS 'Updated At';
