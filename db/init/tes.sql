SET ROLE backend_dev;

INSERT INTO SALAM.mahasiswas VALUES ('0505050', 'Mustaqim', 'Mustaqim@mail.com', 23);
UPDATE SALAM.mahasiswas SET umur = 24 WHERE nim = '0505050';
DELETE FROM SALAM.mahasiswas WHERE nim = '0505050';

----------------------------------
SET ROLE bi_dev;

SELECT * FROM SALAM.mahasiswas;  -- bisa
INSERT INTO SALAM.mahasiswas VALUES ('0505050', 'Irsyad', 'syad@mail.com', 22);  --gagal
UPDATE SALAM.mahasiswas SET umur = 25 WHERE nim = '0505050'; --  gagal

-----------------------------------
SET ROLE data_engineer;

-- buat tabel
CREATE TABLE SALAM.test_table (
    id SERIAL PRIMARY KEY,
    info TEXT
);

-- ubah tabel
ALTER TABLE SALAM.test_table ADD COLUMN waktu TIMESTAMP;
-- hapus tabel
DROP TABLE SALAM.test_table;
--  CRUD tabel mahasiswas
INSERT INTO SALAM.mahasiswas VALUES ('505050', 'Icad', 'Icad@mail.com', 20);
DELETE FROM SALAM.mahasiswas WHERE nim = '505050';
