DROP DATABASE IF EXISTS DBTH6;
CREATE DATABASE DBTH6;

USE DBTH6;

CREATE TABLE THISINH (
	SOBD VARCHAR(12) , CONSTRAINT PK_SOBD PRIMARY KEY (SOBD) , 
	HOTEN VARCHAR(50), 
	LOPCHUYEN VARCHAR(6)
);
CREATE TABLE MONTHI(
	MON VARCHAR(6) NOT NULL UNIQUE,
    HESO INT,
    GHICHU VARCHAR (50)
);

CREATE TABLE KETQUA(
	SOBD VARCHAR(12),
    MON VARCHAR(6),
    DIEM INT,
	CONSTRAINT FK_KQ_MON FOREIGN KEY(MON) REFERENCES MONTHI(MON)
);

# Thêm khoá chính sau khi đã tạo bảng
ALTER TABLE MONTHI ADD CONSTRAINT PK_MON PRIMARY KEY(MON);

# Thêm khoá ngoại sau khi đã tạo bảng
ALTER TABLE THISINH ADD CONSTRAINT FK_TS_LC FOREIGN KEY(LOPCHUYEN) REFERENCES MONTHI(MON);
ALTER TABLE KETQUA ADD CONSTRAINT FK_KQ_SBD FOREIGN KEY(SOBD) REFERENCES THISINH(SOBD);

# THÊM DỮ LIỆU VÀO BẢNG MONTHI
INSERT INTO MONTHI VALUES ('TIN',2,'Môn chuyên cho lớp chuyên Tin');
INSERT INTO MONTHI VALUES ('TOAN',2,'Môn chung cho tất cả thí sinh');
INSERT INTO MONTHI VALUES ('VAN',1,'Mon chung cho tất cả thí sinh');
INSERT INTO MONTHI VALUES ('TOANCH',2,'Môn chuyên cho lớp chuyên Toán');
INSERT INTO MONTHI VALUES ('VANCH',2,'Môn chuyên cho lớp chuyên Văn');


INSERT INTO THISINH VALUES('120001', 'NGUYEN DUY KHANH', 'TIN');
INSERT INTO THISINH VALUES('120002', 'NGUYEN VAN HUNG', 'TIN');
INSERT INTO THISINH VALUES('120003', 'NGUYEN HUU CHINH', 'VANCH');
INSERT INTO THISINH VALUES('120004', 'TRAN THI NAU', 'VANCH');
INSERT INTO THISINH VALUES('120005', 'NGUYEN THANH NGHIA', 'TOANCH');
INSERT INTO THISINH VALUES('120006', 'NGUYEN THI TRINH', 'TOANCH');


# THÊM DỮ LIỆU VÀO BẢNG KETQUA
INSERT INTO KETQUA VALUES ('120001','TIN',10);
INSERT INTO KETQUA VALUES ('120001','TOAN',5);
INSERT INTO KETQUA VALUES ('120001','VAN',8);
INSERT INTO KETQUA VALUES ('120002','TIN',10);
INSERT INTO KETQUA VALUES ('120002','TOAN',8);
INSERT INTO KETQUA VALUES ('120002','VAN',10);
INSERT INTO KETQUA VALUES ('120003','TOAN',2);
INSERT INTO KETQUA VALUES ('120003','VAN',2);
INSERT INTO KETQUA VALUES ('120003','VANCH',1);
INSERT INTO KETQUA VALUES ('120004','TOAN',0);
INSERT INTO KETQUA VALUES ('120004','VAN',0);
INSERT INTO KETQUA VALUES ('120004','VANCH',0);
INSERT INTO KETQUA VALUES ('120005','TOAN',10);
INSERT INTO KETQUA VALUES ('120005','TOANCH',10);
INSERT INTO KETQUA VALUES ('120005','VAN',8);
INSERT INTO KETQUA VALUES ('120006','TOAN',6);
INSERT INTO KETQUA VALUES ('120006','TOANCH',4);
INSERT INTO KETQUA VALUES ('120006','VAN',5);




# ...


