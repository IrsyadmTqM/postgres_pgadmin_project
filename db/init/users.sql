-- user backend_dev
CREATE ROLE backend_dev LOGIN PASSWORD 'be123';

-- user bi_dev
CREATE ROLE bi_dev LOGIN PASSWORD 'bi123';

-- user data_engineer
CREATE ROLE data_engineer LOGIN PASSWORD 'en123';


-- Grouping Hak Akses
CREATE ROLE crud_role;
CREATE ROLE readonly_role;
CREATE ROLE engineer_role;



-- CRUD Role
GRANT CONNECT ON DATABASE postgres TO crud_role;
GRANT USAGE ON SCHEMA SALAM TO crud_role;
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA SALAM TO crud_role;

ALTER DEFAULT PRIVILEGES IN SCHEMA SALAM
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLES TO crud_role;

-- Read-only Role
GRANT CONNECT ON DATABASE postgres TO readonly_role;
GRANT USAGE ON SCHEMA SALAM TO readonly_role;
GRANT SELECT ON ALL TABLES IN SCHEMA SALAM TO readonly_role;

ALTER DEFAULT PRIVILEGES IN SCHEMA SALAM
GRANT SELECT ON TABLES TO readonly_role;

-- Engineer Role
GRANT CONNECT ON DATABASE postgres TO engineer_role;
GRANT CREATE, USAGE ON SCHEMA SALAM TO engineer_role;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA SALAM TO engineer_role;

ALTER DEFAULT PRIVILEGES IN SCHEMA SALAM
GRANT ALL PRIVILEGES ON TABLES TO engineer_role;


-- Hubungkan Role ke User
GRANT crud_role TO backend_dev;
GRANT readonly_role TO bi_dev;
GRANT engineer_role TO data_engineer;
