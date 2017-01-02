--------------------------------------------------------
--  File created - Kamis-September-29-2016   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence TPL_M_CUSTOMER_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "TPL_M_CUSTOMER_SEQ"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence TPL_M_USER_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "TPL_M_USER_SEQ"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence TPL_T_DTL_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "TPL_T_DTL_SEQ"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence TPL_T_GR_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "TPL_T_GR_SEQ"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence TPL_T_HDR_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "TPL_T_HDR_SEQ"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence TPL_T_STOK_OPNAME_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "TPL_T_STOK_OPNAME_SEQ"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence TPL_T_STOK_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "TPL_T_STOK_SEQ"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table TPL_M_CUSTOMER   点到
--------------------------------------------------------

  CREATE TABLE "TPL_M_CUSTOMER" 
   (	"ID_CUSTOMER" NUMBER(*,0), 
	"KD_CUSTOMER" VARCHAR2(12 BYTE), 
	"NM_CUSTOMER" VARCHAR2(100 BYTE), 
	"ADDRESS" VARCHAR2(200 BYTE), 
	"GROUP_CUSTOMER" VARCHAR2(20 BYTE), 
	"ORG" NUMBER, 
	"KD_DISTRIK" VARCHAR2(12 BYTE), 
	"NM_DISTRIK" VARCHAR2(100 BYTE), 
	"KD_PROVINCE" VARCHAR2(12 BYTE), 
	"NM_PROVINCE" VARCHAR2(100 BYTE), 
	"KD_KECAMATAN" VARCHAR2(12 BYTE), 
	"NM_KECAMATAN" VARCHAR2(100 BYTE), 
	"LATITUDE" VARCHAR2(15 BYTE), 
	"LONGITUDE" VARCHAR2(15 BYTE), 
	"KAPASITAS" FLOAT(126), 
	"KD_SOLD_TO" VARCHAR2(10 BYTE), 
	"NM_SOLD_TO" VARCHAR2(100 BYTE), 
	"AREA" VARCHAR2(50 BYTE), 
	"CREATE_DATE" TIMESTAMP (6), 
	"UPDATE_DATE" TIMESTAMP (6), 
	"CREATE_BY" VARCHAR2(30 BYTE), 
	"UPDATE_BY" VARCHAR2(30 BYTE), 
	"DELETE_MARK" NUMBER(*,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table TPL_M_DISTRIBUTOR
--------------------------------------------------------

  CREATE TABLE "TPL_M_DISTRIBUTOR" 
   (	"KD_DISTRIBUTOR" VARCHAR2(12 BYTE), 
	"NM_DISTRIBUTOR" VARCHAR2(100 BYTE), 
	"ORG" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table TPL_M_USER
--------------------------------------------------------

  CREATE TABLE "TPL_M_USER" 
   (	"ID_USER" NUMBER(*,0), 
	"USERNAME" VARCHAR2(30 BYTE), 
	"PASSWORD" VARCHAR2(30 BYTE), 
	"KD_GUDANG" VARCHAR2(12 BYTE), 
	"NM_GUDANG" VARCHAR2(100 BYTE), 
	"KD_DISTRIBUTOR" VARCHAR2(12 BYTE), 
	"NM_DISTRIBUTOR" VARCHAR2(100 BYTE), 
	"CREATE_DATE" TIMESTAMP (6), 
	"UPDATE_DATE" TIMESTAMP (6), 
	"CREATE_BY" VARCHAR2(30 BYTE), 
	"UPDATE_BY" VARCHAR2(30 BYTE), 
	"DELETE_MARK" NUMBER(*,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table TPL_T_DTL
--------------------------------------------------------

  CREATE TABLE "TPL_T_DTL" 
   (	"ID_DTL" NUMBER(*,0), 
	"ID_HDR" NUMBER(*,0), 
	"KD_SHIPTO" VARCHAR2(12 BYTE), 
	"NM_SHIPTO" VARCHAR2(100 BYTE), 
	"KD_DISTRIBUTOR" VARCHAR2(12 BYTE), 
	"NM_DISTRIBUTOR" VARCHAR2(100 BYTE), 
	"TGL_KIRIM" DATE, 
	"KD_PRODUK" VARCHAR2(12 BYTE), 
	"NM_PRODUK" VARCHAR2(100 BYTE), 
	"QTY" NUMBER, 
	"SATUAN" VARCHAR2(3 BYTE), 
	"HARGA" NUMBER, 
	"CREATE_DATE" TIMESTAMP (6), 
	"UPDATE_DATE" TIMESTAMP (6), 
	"CREATE_BY" DATE, 
	"UPDATE_BY" DATE, 
	"DELETE_MARK" NUMBER(*,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table TPL_T_GR
--------------------------------------------------------

  CREATE TABLE "TPL_T_GR" 
   (	"ID_GR" NUMBER(*,0), 
	"KD_CUSTOMER" VARCHAR2(12 BYTE), 
	"NM_CUSTOMER" VARCHAR2(100 BYTE), 
	"KD_SOLD_TO" VARCHAR2(12 BYTE), 
	"NM_SOLD_TO" VARCHAR2(100 BYTE), 
	"KD_PRODUK" VARCHAR2(12 BYTE), 
	"NM_PRODUK" VARCHAR2(100 BYTE), 
	"ORG" NUMBER, 
	"TGL_GR" DATE, 
	"NO_SPJ" VARCHAR2(12 BYTE), 
	"DATE_SPJ" DATE, 
	"KD_PLANT" VARCHAR2(4 BYTE), 
	"NM_PLANT" VARCHAR2(100 BYTE), 
	"QTY_TERIMA" NUMBER, 
	"QTY" NUMBER, 
	"QTY_RUSAK" NUMBER, 
	"QTY_PECAH" NUMBER, 
	"NO_POL" VARCHAR2(10 BYTE), 
	"SUPIR" VARCHAR2(100 BYTE), 
	"KD_EKSPEDITUR" VARCHAR2(12 BYTE), 
	"NM_EKSPEDITUR" VARCHAR2(100 BYTE), 
	"KD_CUSTOMER_ASAL" VARCHAR2(12 BYTE), 
	"NM_CUSTOMER_ASAL" VARCHAR2(100 BYTE), 
	"CREATE_DATE" TIMESTAMP (6), 
	"UPDATE_DATE" TIMESTAMP (6), 
	"CREATE_BY" VARCHAR2(30 BYTE), 
	"UPDATE_BY" VARCHAR2(30 BYTE), 
	"DELETE_MARK" NUMBER(*,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table TPL_T_HDR
--------------------------------------------------------

  CREATE TABLE "TPL_T_HDR" 
   (	"ID_HDR" NUMBER(*,0), 
	"KD_GUDANG" VARCHAR2(12 BYTE), 
	"NM_GUDANG" VARCHAR2(100 BYTE), 
	"KD_DISTRIBUTOR" VARCHAR2(12 BYTE), 
	"NM_DISTRIBUTOR" VARCHAR2(100 BYTE), 
	"TGL_KIRIM" DATE, 
	"ORG" NUMBER, 
	"CREATE_DATE" TIMESTAMP (6), 
	"UPDATE_DATE" TIMESTAMP (6), 
	"CREATE_BY" DATE, 
	"UPDATE_BY" DATE, 
	"DELETE_MARK" NUMBER(*,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table TPL_T_STOK
--------------------------------------------------------

  CREATE TABLE "TPL_T_STOK" 
   (	"ID_STOK" NUMBER(*,0), 
	"KD_CUSTOMER" VARCHAR2(12 BYTE), 
	"NM_CUSTOMER" VARCHAR2(100 BYTE), 
	"KD_PRODUK" VARCHAR2(12 BYTE), 
	"NM_PRODUK" VARCHAR2(100 BYTE), 
	"STOK" NUMBER DEFAULT 0, 
	"CREATE_DATE" TIMESTAMP (6), 
	"UPDATE_DATE" TIMESTAMP (6), 
	"CREATE_BY" VARCHAR2(30 BYTE), 
	"UPDATE_BY" VARCHAR2(30 BYTE), 
	"DELETE_MARK" NUMBER(*,0) DEFAULT 0
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table TPL_T_STOK_OPNAME
--------------------------------------------------------

  CREATE TABLE "TPL_T_STOK_OPNAME" 
   (	"ID_STOK_OPNAME" NUMBER(*,0), 
	"KD_CUSTOMER" VARCHAR2(12 BYTE), 
	"NM_CUSTOMER" VARCHAR2(100 BYTE), 
	"KD_PRODUK" VARCHAR2(12 BYTE), 
	"NM_PRODUK" VARCHAR2(100 BYTE), 
	"STOK_LAMA" NUMBER, 
	"STOK_BARU" NUMBER, 
	"KETERANGAN" VARCHAR2(1000 BYTE), 
	"CRATE_DATE" TIMESTAMP (6), 
	"UPDATE_DATE" TIMESTAMP (6), 
	"CREATE_BY" VARCHAR2(30 BYTE), 
	"UPDATE_BY" VARCHAR2(30 BYTE), 
	"DELETE_MARK" NUMBER(*,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into TPL_M_CUSTOMER
SET DEFINE OFF;
REM INSERTING into TPL_M_DISTRIBUTOR
SET DEFINE OFF;
REM INSERTING into TPL_M_USER
SET DEFINE OFF;
REM INSERTING into TPL_T_DTL
SET DEFINE OFF;
REM INSERTING into TPL_T_GR
SET DEFINE OFF;
REM INSERTING into TPL_T_HDR
SET DEFINE OFF;
REM INSERTING into TPL_T_STOK
SET DEFINE OFF;
REM INSERTING into TPL_T_STOK_OPNAME
SET DEFINE OFF;
--------------------------------------------------------
--  DDL for Index TPL_T_STOK_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TPL_T_STOK_PK" ON "TPL_T_STOK" ("ID_STOK") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index TPL_T_DTL_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TPL_T_DTL_PK" ON "TPL_T_DTL" ("ID_DTL") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index TPL_T_GR_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TPL_T_GR_PK" ON "TPL_T_GR" ("ID_GR") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index TPL_T_STOK_OPNAME_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TPL_T_STOK_OPNAME_PK" ON "TPL_T_STOK_OPNAME" ("ID_STOK_OPNAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index TPL_T_HDR_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TPL_T_HDR_PK" ON "TPL_T_HDR" ("ID_HDR") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index TPL_M_DISTRIBUTOR_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TPL_M_DISTRIBUTOR_PK" ON "TPL_M_DISTRIBUTOR" ("KD_DISTRIBUTOR") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index TPL_M_CUSTOMER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TPL_M_CUSTOMER_PK" ON "TPL_M_CUSTOMER" ("ID_CUSTOMER") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index TPL_M_USER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TPL_M_USER_PK" ON "TPL_M_USER" ("ID_USER") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table TPL_M_DISTRIBUTOR
--------------------------------------------------------

  ALTER TABLE "TPL_M_DISTRIBUTOR" MODIFY ("KD_DISTRIBUTOR" NOT NULL ENABLE);
 
  ALTER TABLE "TPL_M_DISTRIBUTOR" ADD CONSTRAINT "TPL_M_DISTRIBUTOR_PK" PRIMARY KEY ("KD_DISTRIBUTOR")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table TPL_M_CUSTOMER
--------------------------------------------------------

  ALTER TABLE "TPL_M_CUSTOMER" MODIFY ("ID_CUSTOMER" NOT NULL ENABLE);
 
  ALTER TABLE "TPL_M_CUSTOMER" ADD CONSTRAINT "TPL_M_CUSTOMER_PK" PRIMARY KEY ("ID_CUSTOMER")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table TPL_M_USER
--------------------------------------------------------

  ALTER TABLE "TPL_M_USER" MODIFY ("ID_USER" NOT NULL ENABLE);
 
  ALTER TABLE "TPL_M_USER" ADD CONSTRAINT "TPL_M_USER_PK" PRIMARY KEY ("ID_USER")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table TPL_T_HDR
--------------------------------------------------------

  ALTER TABLE "TPL_T_HDR" MODIFY ("ID_HDR" NOT NULL ENABLE);
 
  ALTER TABLE "TPL_T_HDR" ADD CONSTRAINT "TPL_T_HDR_PK" PRIMARY KEY ("ID_HDR")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table TPL_T_STOK
--------------------------------------------------------

  ALTER TABLE "TPL_T_STOK" MODIFY ("ID_STOK" NOT NULL ENABLE);
 
  ALTER TABLE "TPL_T_STOK" MODIFY ("KD_CUSTOMER" NOT NULL ENABLE);
 
  ALTER TABLE "TPL_T_STOK" MODIFY ("NM_CUSTOMER" NOT NULL ENABLE);
 
  ALTER TABLE "TPL_T_STOK" MODIFY ("KD_PRODUK" NOT NULL ENABLE);
 
  ALTER TABLE "TPL_T_STOK" MODIFY ("DELETE_MARK" NOT NULL ENABLE);
 
  ALTER TABLE "TPL_T_STOK" ADD CONSTRAINT "TPL_T_STOK_PK" PRIMARY KEY ("ID_STOK")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table TPL_T_GR
--------------------------------------------------------

  ALTER TABLE "TPL_T_GR" MODIFY ("ID_GR" NOT NULL ENABLE);
 
  ALTER TABLE "TPL_T_GR" ADD CONSTRAINT "TPL_T_GR_PK" PRIMARY KEY ("ID_GR")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table TPL_T_DTL
--------------------------------------------------------

  ALTER TABLE "TPL_T_DTL" MODIFY ("ID_DTL" NOT NULL ENABLE);
 
  ALTER TABLE "TPL_T_DTL" ADD CONSTRAINT "TPL_T_DTL_PK" PRIMARY KEY ("ID_DTL")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table TPL_T_STOK_OPNAME
--------------------------------------------------------

  ALTER TABLE "TPL_T_STOK_OPNAME" MODIFY ("ID_STOK_OPNAME" NOT NULL ENABLE);
 
  ALTER TABLE "TPL_T_STOK_OPNAME" ADD CONSTRAINT "TPL_T_STOK_OPNAME_PK" PRIMARY KEY ("ID_STOK_OPNAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TPL_T_DTL
--------------------------------------------------------

  ALTER TABLE "TPL_T_DTL" ADD CONSTRAINT "ID_HDR_DTL_HDR" FOREIGN KEY ("ID_HDR")
	  REFERENCES "TPL_T_HDR" ("ID_HDR") ENABLE;
--------------------------------------------------------
--  DDL for Trigger CUSTOMER_ID_TRIGGER
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "CUSTOMER_ID_TRIGGER" 
BEFORE INSERT ON TPL_M_CUSTOMER 
FOR EACH ROW
BEGIN
  SELECT TPL_M_CUSTOMER_SEQ.NEXTVAL
  INTO   :new.ID_CUSTOMER
  FROM   dual;
END;
/
ALTER TRIGGER "CUSTOMER_ID_TRIGGER" ENABLE;
--------------------------------------------------------
--  DDL for Trigger DTL_ID_TRIGGER
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "DTL_ID_TRIGGER" 
BEFORE INSERT ON TPL_T_DTL
FOR EACH ROW
BEGIN
  SELECT TPL_T_DTL_SEQ.NEXTVAL
  INTO   :new.ID_DTL
  FROM   dual;
END;
/
ALTER TRIGGER "DTL_ID_TRIGGER" ENABLE;
--------------------------------------------------------
--  DDL for Trigger GR_ID_TRIGGER
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "GR_ID_TRIGGER" 
BEFORE INSERT ON TPL_T_GR 
FOR EACH ROW
BEGIN
  SELECT TPL_T_GR_SEQ.NEXTVAL
  INTO   :new.ID_GR
  FROM   dual;
END;
/
ALTER TRIGGER "GR_ID_TRIGGER" ENABLE;
--------------------------------------------------------
--  DDL for Trigger HDR_ID_TRIGGER
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "HDR_ID_TRIGGER" 
BEFORE INSERT ON TPL_T_HDR 
FOR EACH ROW
BEGIN
  SELECT TPL_T_HDR_SEQ.NEXTVAL
  INTO   :new.ID_HDR
  FROM   dual;
END;
/
ALTER TRIGGER "HDR_ID_TRIGGER" ENABLE;
--------------------------------------------------------
--  DDL for Trigger STOK_ID_TRIGGER
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "STOK_ID_TRIGGER" 
BEFORE INSERT ON TPL_T_STOK 
FOR EACH ROW
BEGIN
  SELECT TPL_T_STOK_SEQ.NEXTVAL
  INTO   :new.ID_STOK
  FROM   dual;
END;
/
ALTER TRIGGER "STOK_ID_TRIGGER" ENABLE;
--------------------------------------------------------
--  DDL for Trigger STOK_OPNAME_ID_TRIGGER
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "STOK_OPNAME_ID_TRIGGER" 
BEFORE INSERT ON TPL_T_STOK_OPNAME
FOR EACH ROW
BEGIN
  SELECT TPL_T_STOK_OPNAME_SEQ.NEXTVAL
  INTO   :new.ID_STOK_OPNAME
  FROM   dual;
END;
/
ALTER TRIGGER "STOK_OPNAME_ID_TRIGGER" ENABLE;
--------------------------------------------------------
--  DDL for Trigger USER_ID_TRIGGER
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "USER_ID_TRIGGER" 
BEFORE INSERT ON TPL_M_USER 
FOR EACH ROW
BEGIN
  SELECT TPL_M_USER_SEQ.NEXTVAL
  INTO   :new.ID_USER
  FROM   dual;
END;
/
ALTER TRIGGER "USER_ID_TRIGGER" ENABLE;
