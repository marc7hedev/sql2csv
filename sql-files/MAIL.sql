IF(OBJECT_ID('MAIL_EBA') IS NOT NULL) BEGIN DROP TABLE MAIL_EBA END
GO
CREATE TABLE MAIL_EBA (CONTRACT VARCHAR(50), CUSTOMER VARCHAR(200), EMAIL VARCHAR(100), IS_PRIMARY BIT)
GO
INSERT INTO MAIL_EBA VALUES ('A-00001','JOHN SMIT','sample@gmail.com','1');
INSERT INTO MAIL_EBA VALUES ('A-00002','JOHN SMIT','sample@gmail.com','1');
INSERT INTO MAIL_EBA VALUES ('A-00003','JOHN SMIT','sample@gmail.com','1');
INSERT INTO MAIL_EBA VALUES ('A-00004','JOHN SMIT','sample@gmail.com','1');
INSERT INTO MAIL_EBA VALUES ('A-00005','JOHN SMIT','sample@gmail.com','0');
INSERT INTO MAIL_EBA VALUES ('A-00006','JOHN SMIT','sample@gmail.com','1');
INSERT INTO MAIL_EBA VALUES ('A-00007','JOHN SMIT','sample@gmail.com','1');
INSERT INTO MAIL_EBA VALUES ('A-00008''JOHN SMIT','sample@gmail.com','0');
INSERT INTO MAIL_EBA VALUES ('A-00009''JOHN SMIT','sample@gmail.com','0');
INSERT INTO MAIL_EBA VALUES ('A-00010''JOHN SMIT','sample@gmail.com','1');
INSERT INTO MAIL_EBA VALUES ('A-00011''JOHN SMIT','sample@gmail.com','1');
INSERT INTO MAIL_EBA VALUES ('A-00012''JOHN SMIT','sample@gmail.com','0');
INSERT INTO MAIL_EBA VALUES ('A-00013','JOHN SMIT','sample@gmail.com','1');
INSERT INTO MAIL_EBA VALUES ('A-00014','JOHN SMIT','sample@gmail.com','1');
