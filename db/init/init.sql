CREATE SCHEMA SALAM;

CREATE TABLE SALAM.mahasiswas (
    nim VARCHAR(10) PRIMARY KEY,         
    nama VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,          
    umur INT CHECK (umur >= 17 AND umur <= 40)  
);

bukti primary key constraint bekerja : 
INSERT INTO SALAM.mahasiswas VALUES ('1237050050', 'Muhammad', 'Muhammad@mail.com', 21);
INSERT INTO SALAM.mahasiswas VALUES ('1237050050', 'Irsyad', 'Irsyad@mail.com', 22);

bukti unique constraint bekerja 
INSERT INTO SALAM.mahasiswas VALUES ('1227050050', 'Irsyad', 'Irsyad@mail.com', 23);
INSERT INTO SALAM.mahasiswas VALUES ('1217050050', 'Mustaqim', 'Irsyad@mail.com', 25);

cek constraint umur : 
INSERT INTO SALAM.mahasiswas VALUES ('1247050050', 'Mus', 'Mus@mail.com', 15);

cek data : 
INSERT INTO SALAM.mahasiswas VALUES ('1207050050', 'Muhammad Irsyad Mustaqim', 'MuhammadIrsyad@mail.com', 21);
SELECT * FROM SALAM.mahasiswas;
