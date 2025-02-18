IF(OBJECT_ID('RESERVATION_EBA') IS NOT NULL) BEGIN DROP TABLE RESERVATION_EBA END
GO
CREATE TABLE RESERVATION_EBA ([CROSS_REFERENCE] [varchar](50) NOT NULL,
	[INVENTORY] [varchar](100) NOT NULL,
	[RESORT] [varchar](72) NOT NULL,
	[ARRIVAL_DATE] [datetime] NOT NULL,
	[DEPARTURE_DATE] [datetime] NOT NULL,
	[UNIT_TYPE] [varchar](100) NOT NULL,
	[ADULTS] [int] NOT NULL,
	[JUNIORS] [int] NOT NULL,
	[CHILDRENS] [int] NOT NULL,
	[INFANTS] [int] NOT NULL,
	[SENIORS] [int] NULL,
	[RESERVATION_TYPE] [varchar](100) NULL,
	[RESERVATION_NUMBER] [varchar](50) NOT NULL,
	[RESERVATION_COST] [int] NOT NULL,
	[MEMBER] [varchar](501) NULL,
	[GUEST_CERTIFICATE] [varchar](81) NULL,
	[NOTES] [varchar](500) NULL,
	[SPECIAL_NOTES] [varchar](max) NULL,
	[RESERVATION_STATUS] [varchar](50) NOT NULL,
	[CREATE_USER] [varchar](150) NOT NULL,
	[DATE_MADE] [datetime] NULL,
	[CANCEL_DATE] [datetime] NULL,
	[CANCELLATION_USER] [varchar](81) NULL,
	[CANCELLATION_REASON] [varchar](1024) NULL,
	[CANCELLATION_NOTES] [varchar](1024) NULL)
GO
INSERT INTO RESERVATION_EBA VALUES('A-00001','REGULAR WEEK','TEST RESORT','Jan 16 2011 12:00AM','Jan 23 2011 12:00AM','MASTER SUITE','2','0','0','0','0','Regular','1428','7','JOHN SMITH','','Test Reservation comment','','Confirmed','EBA Administrator ','Aug  9 2011 12:00AM',NULL,'','','');
INSERT INTO RESERVATION_EBA VALUES('A-00001','REGULAR WEEK','TEST RESORT','Oct 13 2012 12:00AM','Oct 20 2012 12:00AM','MASTER SUITE SELVA','2','0','0','0','0','Regular','3789','7','JOHN SMITH','','Test Reservation comment','','Confirmed','EBA Administrator ','Sep  1 2012 12:00AM',NULL,'','','');
INSERT INTO RESERVATION_EBA VALUES('A-00002','REGULAR WEEK','TEST RESORT','Apr 23 2023  5:00AM','Apr 30 2023  5:00AM','MASTER SUITE','2','0','0','0','0','RCI Deposit','WK-16-23 RCI RW-2023','7','JOHN SMITH',' ','Test Reservation comment','','Confirmed','Mayanin Valdez','Dec  8 2022  6:39PM',NULL,'','','');
INSERT INTO RESERVATION_EBA VALUES('A-00003','REGULAR WEEK','TEST RESORT','Mar 14 2009 12:00AM','Mar 21 2009 12:00AM','MASTER SUITE','2','0','0','0','0','Regular','51','7','JOHN SMITH','','Test Reservation comment','','Confirmed','EBA Administrator ','Apr 28 2010 12:00AM',NULL,'','','');
INSERT INTO RESERVATION_EBA VALUES('A-00004','REGULAR WEEK','TEST RESORT','Jan 23 2011 12:00AM','Jan 30 2011 12:00AM','MASTER SUITE','2','0','0','0','0','Regular','1429','7','JOHN SMITH','','Test Reservation comment','','Confirmed','EBA Administrator ','Aug  9 2011 12:00AM',NULL,'','','');
INSERT INTO RESERVATION_EBA VALUES('A-00004','REGULAR WEEK','TEST RESORT','Jul 26 2014 12:00AM','Aug  2 2014 12:00AM','MASTER SUITE','2','0','0','0','0','Regular','11812','7','JOHN SMITH','','Test Reservation comment','','Confirmed','EBA Administrator ','Mar  3 2015 12:00AM',NULL,'','','');
INSERT INTO RESERVATION_EBA VALUES('A-00004','REGULAR WEEK','TEST RESORT','Jan  9 2011 12:00AM','Jan 16 2011 12:00AM','MASTER SUITE','2','0','0','0','0','Regular','1427','7','JOHN SMITH','','Test Reservation comment','','Confirmed','EBA Administrator ','Aug  9 2011 12:00AM',NULL,'','','');
INSERT INTO RESERVATION_EBA VALUES('A-00005','REGULAR WEEK','TEST RESORT','Jul 22 2017 12:00AM','Jul 29 2017 12:00AM','MASTER SUITE','2','0','0','0','0','Regular','23020','7','JOHN SMITH','','Test Reservation comment','','Confirmed','EBA Administrator ','Jan 16 2018 12:00AM',NULL,'','','');
INSERT INTO RESERVATION_EBA VALUES('A-00005','REGULAR WEEK','TEST RESORT','Jan  3 2016 12:00AM','Jan 10 2016 12:00AM','MASTER SUITE','2','0','0','0','0','Regular','18669','7','JOHN SMITH','','Test Reservation comment','','Confirmed','EBA Administrator ','Jan 10 2017 12:00AM',NULL,'','','');
INSERT INTO RESERVATION_EBA VALUES('A-00006','REGULAR WEEK','TEST RESORT','Jul  5 2015 12:00AM','Jul 12 2015 12:00AM','VILLA PLUS','2','0','0','0','0','Regular','8727','7','JOHN SMITH','','Test Reservation comment','','Confirmed','EBA Administrator ','Apr 21 2014 12:00AM',NULL,'','','');
INSERT INTO RESERVATION_EBA VALUES('A-00007','REGULAR WEEK','TEST RESORT','Aug  3 2019  5:00AM','Aug 10 2019  5:00AM','MASTER SUITE','2','0','0','0','0','RCI Deposit','Week 31 - 2019','7','JOHN SMITH',' ','Test Reservation comment','','Confirmed','Alejandra (EBA) Valdez','Mar 13 2020  5:49PM',NULL,'','','');
INSERT INTO RESERVATION_EBA VALUES('A-00008','REGULAR WEEK','TEST RESORT','Dec  2 2018  6:00AM','Dec  9 2018  6:00AM','MASTER SUITE','2','0','0','0','0','RCI Deposit','Week 48 - 2018','7','JOHN SMITH',' ','Test Reservation comment','','Confirmed','Alejandra (EBA) Valdez','Mar 10 2020  7:21PM',NULL,'','','');
INSERT INTO RESERVATION_EBA VALUES('A-00008','REGULAR WEEK','TEST RESORT','Dec 19 2014 12:00AM','Dec 26 2014 12:00AM','VILLA','2','0','0','0','0','Regular','9649','7','JOHN SMITH','','Test Reservation comment','','Confirmed','EBA Administrator ','Aug 13 2014 12:00AM',NULL,'','','0');
INSERT INTO RESERVATION_EBA VALUES('A-00008','REGULAR WEEK','TEST RESORT','Nov  5 2011 12:00AM','Nov 12 2011 12:00AM','MASTER SUITE SELVA','2','0','0','0','0','Regular','1536','7','JOHN SMITH','','Test Reservation comment','','Confirmed','EBA Administrator ','Sep  5 2011 12:00AM',NULL,'','','');
INSERT INTO RESERVATION_EBA VALUES('A-00008','REGULAR WEEK','TEST RESORT','Aug 30 2015 12:00AM','Sep  6 2015 12:00AM','MASTER SUITE','2','0','0','0','0','Regular','11813','7','JOHN SMITH','','Test Reservation comment','','Confirmed','EBA Administrator ','Mar  3 2015 12:00AM',NULL,'','','');
INSERT INTO RESERVATION_EBA VALUES('A-00009','REGULAR WEEK','TEST RESORT','Mar  7 2020  6:00AM','Mar 14 2020  6:00AM','MASTER SUITE','2','0','0','0','0','RCI Deposit','Week 10 - 2020','7','JOHN SMITH',' ','Test Reservation comment','','Confirmed','Alejandra (EBA) Valdez','Mar 13 2020  5:51PM',NULL,'','','');
INSERT INTO RESERVATION_EBA VALUES('A-00009','REGULAR WEEK','TEST RESORT','Feb 17 2013 12:00AM','Feb 24 2013 12:00AM','MASTER SUITE','2','0','0','0','0','Regular','4522','7','JOHN SMITH','','Test Reservation comment','','Confirmed','EBA Administrator ','Dec 19 2012 12:00AM',NULL,'','','');
INSERT INTO RESERVATION_EBA VALUES('A-00010','REGULAR WEEK','TEST RESORT','Jul 30 2022  5:00AM','Aug  6 2022  5:00AM','MASTER SUITE','2','0','0','0','0','RCI Deposit','WK-31-22 RCI RW 2022','7','JOHN SMITH',' ','Test Reservation comment','','Confirmed','Mayanin Valdez','Dec  8 2022  6:35PM',NULL,'','','');
INSERT INTO RESERVATION_EBA VALUES('A-00011','REGULAR WEEK','TEST RESORT','Jan 16 2012 12:00AM','Jan 23 2012 12:00AM','GRAND CLASS','2','0','0','0','0','Regular','2081','7','JOHN SMITH','','Test Reservation comment','','Confirmed','EBA Administrator ','Jan  5 2012 12:00AM',NULL,'','','');
