IF(OBJECT_ID('ADDRESS_EBA') IS NOT NULL) BEGIN DROP TABLE ADDRESS_EBA END
GO
CREATE TABLE ADDRESS_EBA (CONTRACT VARCHAR(50), ADDRESS VARCHAR(500), ADDRESS_TYPE VARCHAR(50), CITY VARCHAR(150), REGION VARCHAR(150), POSTAL_CODE VARCHAR(50), COUNTRY VARCHAR(100))
GO
INSERT INTO ADDRESS_EBA VALUES ('A-00001','# 107 DR DRIVE ST','Main','NORTH VANCOUVER','British Columbia','V7G 2S5','CANADA');
INSERT INTO ADDRESS_EBA VALUES ('A-00002','# 107 DR DRIVE ST','Main','SANTA FE','New Mexico','87501','UNITED STATES');
INSERT INTO ADDRESS_EBA VALUES ('A-00003','# 107 DR DRIVE ST','Main','HUNTINGTON','New York','11743','UNITED STATES');
INSERT INTO ADDRESS_EBA VALUES ('A-00004','# 107 DR DRIVE ST','Main','GRANITE CITY','Illinois','62040','UNITED STATES');
INSERT INTO ADDRESS_EBA VALUES ('A-00005','# 107 DR DRIVE ST','Main','ACTON','Massachusetts','01720','UNITED STATES');
INSERT INTO ADDRESS_EBA VALUES ('A-00006','# 107 DR DRIVE ST','Main','RICHMOND','British Columbia','V7C 4T1','CANADA');
INSERT INTO ADDRESS_EBA VALUES ('A-00007','# 107 DR DRIVE ST','Main','GRINDROD','British Columbia','V0E 1Y0','CANADA');
INSERT INTO ADDRESS_EBA VALUES ('A-00008','# 107 DR DRIVE ST','Main','RICHMOND HILL','Ontario','L4C 0J4','CANADA');
INSERT INTO ADDRESS_EBA VALUES ('A-00009','# 107 DR DRIVE ST','Postal','KAMLOOPS','British Columbia','V1S 1P6','CANADA');
INSERT INTO ADDRESS_EBA VALUES ('A-00010','# 107 DR DRIVE ST','Main','WHISTLER','British Columbia','V0N 1B2','CANADA');
