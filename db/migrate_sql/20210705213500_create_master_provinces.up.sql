CREATE TABLE master_provinces (
  id bigserial PRIMARY KEY,

  "name" varchar NOT NULL,

  "order" int4 NOT NULL,

  is_usable bool NOT NULL,

  master_country_id int8 NOT NULL,

  created_at timestamp without time zone NOT NULL,

  updated_at timestamp without time zone NOT NULL
);

COMMENT ON TABLE master_provinces IS 'Province';

-- Column comments

COMMENT ON COLUMN master_provinces.id IS 'ID';

COMMENT ON COLUMN master_provinces."name" IS 'Name';

COMMENT ON COLUMN master_provinces."order" IS 'Order';

COMMENT ON COLUMN master_provinces.is_usable IS 'Is Usable';

COMMENT ON COLUMN master_provinces.master_country_id IS 'Country ID';

COMMENT ON COLUMN master_provinces.created_at IS 'Created At';

COMMENT ON COLUMN master_provinces.updated_at IS 'Updated At';
