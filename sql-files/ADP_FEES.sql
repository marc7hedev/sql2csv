IF(OBJECT_ID('CLUB_FEES_EBA') IS NOT NULL) BEGIN DROP TABLE CLUB_FEES_EBA END
GO
CREATE TABLE CLUB_FEES_EBA ([Contract] [varchar](50) NOT NULL,
	[idCharge] [bigint] NULL,
	[Concept] [nvarchar](100) NULL,
	[DocType] [varchar](50) NULL,
	[C_TransactionCode] [varchar](50) NULL,
	[DueDate] [smalldatetime] NULL,
	[TrxDate] [smalldatetime] NULL,
	[Amount] [money] NULL,
	[User] [varchar](81) NOT NULL,
	[BReservation] [varchar](50) NULL,
	[Cumm_ToPay] [decimal](34, 4) NULL,
	[Current_Status] [varchar](8) NOT NULL,
	[ChargeReference] [varchar](150) NULL,
	[ChargeCancelationReason] [varchar](50) NOT NULL,
	[applyReverseCharge] [bigint] NULL,
	[ResortName] [varchar](72) NULL,
	[FromContractCharge] [nvarchar](50) NULL,
	[IdPay] [bigint] NULL,
	[ConceptPayment] [nvarchar](100) NULL,
	[DocType_Pay] [varchar](50) NULL,
	[P_TransactionCode] [varchar](50) NOT NULL,
	[TrxDate_Pay] [smalldatetime] NULL,
	[AmountBC] [money] NULL,
	[AmountFC] [money] NOT NULL,
	[Aplied] [decimal](33, 4) NULL,
	[Curr] [varchar](50) NULL,
	[Reference] [varchar](150) NULL,
	[Authorization] [varchar](50) NULL,
	[CreditCompletionCard] [varchar](4) NOT NULL,
	[InstCode] [varchar](50) NULL,
	[bank] [varchar](50) NULL,
	[User_Pay] [varchar](81) NULL,
	[Status_Payment] [varchar](8) NOT NULL,
	[PaymentCancelationReason] [varchar](50) NOT NULL,
	[applyReversePayment] [bigint] NULL,
	[FromContractPayment] [nvarchar](50) NULL,
	[ExchangeRate] [money] NULL)
GO
INSERT INTO CLUB_FEES_EBA VALUES('A-00001',1086872,'ADP','Invoice','','Jan 31 2022 12:00AM','Sep 22 2021 11:20PM',1423.24,'EBA Administrator ','',1423.2400,'','','',0,'','',1127772,'ADP','PAYMENT','','Nov 23 2021 12:00AM',50.00,50.00,0.0000,'USD','21T11638','82537D/0614','','VISA','RESORT DOLARES','Test Customer','Canceled','Entry Error',1128610,'',1.00);
INSERT INTO CLUB_FEES_EBA VALUES('A-00001',1087260,'ADP','Invoice','','Jan 31 2022 12:00AM','Sep 22 2021 11:20PM',1062.67,'EBA Administrator ','',0.0000,'','','',0,'','',1107411,'ADP','CREDIT MEMO','Descuento','Oct 25 2021 12:00AM',10.63,10.63,10.6300,'USD','DPPP 1.00%','','','','','Test Customer','','',0,'',1.00);
INSERT INTO CLUB_FEES_EBA VALUES('A-00002',1088357,'ADP','Invoice','','Jan 31 2022 12:00AM','Sep 22 2021 11:20PM',1062.67,'EBA Administrator ','',0.0000,'','','',0,'','',1803436,'ADP','PAYMENT','','Feb 20 2024 12:00AM',909.16,909.16,909.1600,'USD','24F470151','CH 729','','CHEQUE','RESORT DOLARES','Test Customer','','',0,'',1.00);
INSERT INTO CLUB_FEES_EBA VALUES('A-00003',1088372,'ADP','Invoice','','Jan 31 2022 12:00AM','Sep 22 2021 11:20PM',1349.46,'EBA Administrator ','',0.0000,'','','',0,'','',1129520,'ADP','CREDIT MEMO','Descuento','Nov 26 2021 12:00AM',13.50,13.50,13.5000,'USD','DPPP 1.00%','032684/0614','','','','Test Customer','','',0,'',1.00);
INSERT INTO CLUB_FEES_EBA VALUES('A-00004',1087698,'ADP','Invoice','','Jan 31 2022 12:00AM','Sep 22 2021 11:20PM',105.91,'EBA Administrator ','',1.0600,'','','',0,'','',1095248,'ADP','PAYMENT','','Oct  1 2021 12:00AM',104.85,104.85,104.8500,'USD','21T0801556','03661P/0614','','VISA','RESORT DOLARES','Test Customer','','',0,'',1.00);
INSERT INTO CLUB_FEES_EBA VALUES('A-00004',1082990,'ADP','Invoice','','Jan 31 2022 12:00AM','Sep 22 2021 11:20PM',1704.08,'EBA Administrator ','',0.0000,'','','',0,'','',1148846,'ADP','PAYMENT','','Jan  3 2022 12:00AM',1704.08,1704.08,1704.0800,'USD','21T121980','103653/0614','','VISA','RESORT DOLARES','Test Customer','','',0,'',1.00);
INSERT INTO CLUB_FEES_EBA VALUES('A-00004',1085048,'ADP','Invoice','','Jan 31 2022 12:00AM','Sep 22 2021 11:20PM',5692.96,'EBA Administrator ','',0.0000,'','','',0,'','',1141227,'ADP','CREDIT MEMO','Condonacion','Dec 16 2021 12:00AM',5692.96,5692.96,5692.9600,'USD','PIERDE DERECHO DE USO 2022','281703/0614','','','','Test Customer','','',0,'',1.00);
INSERT INTO CLUB_FEES_EBA VALUES('A-00005',1085298,'ADP','Invoice','','Jan 31 2022 12:00AM','Sep 22 2021 11:20PM',1349.46,'EBA Administrator ','',0.0000,'','','',0,'','',1192492,'ADP','PAYMENT','','Mar  9 2022 12:00AM',1349.46,1349.46,1349.4600,'USD','22T032279','07464I/0614','','VISA','RESORT DOLARES','Test Customer','','',0,'',1.00);
INSERT INTO CLUB_FEES_EBA VALUES('A-00005',1089342,'ADP','Invoice','','Jan 31 2022 12:00AM','Sep 22 2021 11:20PM',1329.23,'EBA Administrator ','',26.5800,'','','',0,'','',1096854,'ADP','PAYMENT','','Oct  4 2021 12:00AM',1302.65,1302.65,1302.6500,'USD','21O739904','CH-3609','','CHEQUE','RESORT DOLARES','Test Customer','','',0,'',1.00);
INSERT INTO CLUB_FEES_EBA VALUES('A-00006',1084536,'ADP','Invoice','','Jan 31 2022 12:00AM','Sep 22 2021 11:20PM',1049.58,'EBA Administrator ','',10.5000,'','','',0,'','',1142027,'ADP','PAYMENT','','Dec 18 2021 12:00AM',198.00,198.00,198.0000,'USD','FM21DIC09 PAGO 19 OCTUBRE 2021','00449C/0614','','VISA','RESORT DOLARES','STest Customer','','',0,'',1.00);
INSERT INTO CLUB_FEES_EBA VALUES('A-00007',918866,'ADP','Invoice','','Oct 13 2020 12:00AM','Oct 14 2020  1:27PM',39.74,'EBA Administrator','',0.0000,'','ANT MTTO 2022','',0,'','',919802,'ADP','PAYMENT','','Oct 16 2020 12:00AM',39.74,39.74,39.7400,'USD','Reaplicacion 13ct20 por no tener factura','20O410519','','CHEQUE','RESORT DOLARES','Test Customer','','',0,'',1.00);
INSERT INTO CLUB_FEES_EBA VALUES('A-00008',781673,'ADP','Invoice','','Dec 31 2019 12:00AM','Dec 31 2019 10:25AM',44.88,'EBA Administrator','',0.0000,'','','',0,'','',781677,'ADP','PAYMENT','','Dec 30 2019 12:00AM',44.88,44.88,44.8800,'USD','19T125851','','','VISA','RESORT DOLARES','Test Customer','','',0,'',1.00);
INSERT INTO CLUB_FEES_EBA VALUES('A-00009',921071,'ADP','Invoice','','Oct 19 2020 12:00AM','Oct 20 2020  7:25AM',34.71,'EBA Administrator','',0.0000,'','ANT MTTO 2022','',0,'','',921101,'ADP','PAYMENT','','Oct 19 2020 12:00AM',34.71,34.71,34.7100,'USD','20O410534','','','CHEQUE','RESORT DOLARES','Test Customer','','',0,'',1.00);
INSERT INTO CLUB_FEES_EBA VALUES('A-00010',1084430,'ADP','Invoice','','Jan 31 2022 12:00AM','Sep 22 2021 11:20PM',1423.24,'EBA Administrator ','',14.2300,'','','',0,'','',1124007,'ADP','PAYMENT','','Nov 16 2021 12:00AM',1409.01,1409.01,1409.0100,'USD','21T110622','267950/0614','','AMERICAN EXPRESS','RESORT DOLARES','Test Customer','','',0,'',1.00);
