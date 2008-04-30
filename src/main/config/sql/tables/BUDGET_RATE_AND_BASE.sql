 CREATE TABLE BUDGET_RATE_AND_BASE 
   (	"PROPOSAL_NUMBER" VARCHAR2(12) constraint BUDGET_RATE_AND_BASEN1 NOT NULL ENABLE, 
	"VERSION_NUMBER" NUMBER constraint BUDGET_RATE_AND_BASEN2 NOT NULL ENABLE, 
	"BUDGET_PERIOD" NUMBER(3,0) constraint BUDGET_RATE_AND_BASEN3 NOT NULL ENABLE, 
	"LINE_ITEM_NUMBER" NUMBER(3,0) constraint BUDGET_RATE_AND_BASEN4 NOT NULL ENABLE, 
	"RATE_NUMBER" NUMBER(3,0) constraint BUDGET_RATE_AND_BASEN5 NOT NULL ENABLE, 
	"START_DATE" DATE constraint BUDGET_RATE_AND_BASEN6 NOT NULL ENABLE, 
	"END_DATE" DATE constraint BUDGET_RATE_AND_BASEN7 NOT NULL ENABLE, 
	"RATE_CLASS_CODE" NUMBER(3,0) constraint BUDGET_RATE_AND_BASEN8 NOT NULL ENABLE, 
	"RATE_TYPE_CODE" NUMBER(3,0) constraint BUDGET_RATE_AND_BASEN9 NOT NULL ENABLE, 
	"ON_OFF_CAMPUS_FLAG" CHAR(1) constraint BUDGET_RATE_AND_BASEN10 NOT NULL ENABLE, 
	"APPLIED_RATE" NUMBER(5,2) constraint BUDGET_RATE_AND_BASEN11 NOT NULL ENABLE, 
	"BASE_COST" NUMBER(14,2), 
	"BASE_COST_SHARING" NUMBER(14,2), 
	"CALCULATED_COST" NUMBER(14,2), 
	"CALCULATED_COST_SHARING" NUMBER(14,2), 
	"UPDATE_TIMESTAMP" DATE constraint BUDGET_RATE_AND_BASEN12 NOT NULL ENABLE, 
	"UPDATE_USER" VARCHAR2(60) constraint BUDGET_RATE_AND_BASEN13 NOT NULL ENABLE, 
	 "VER_NBR" NUMBER(8,0) DEFAULT 1  constraint  BUDGET_RATE_AND_BASEN14  NOT NULL ENABLE,
	"OBJ_ID" VARCHAR2(36) DEFAULT SYS_GUID()  constraint  BUDGET_RATE_AND_BASEN15  NOT NULL ENABLE,
	CONSTRAINT "PK_BUDGET_RATE_AND_BASE_KRA" PRIMARY KEY ("PROPOSAL_NUMBER", "VERSION_NUMBER", "BUDGET_PERIOD", "LINE_ITEM_NUMBER", "RATE_NUMBER", "RATE_CLASS_CODE", "RATE_TYPE_CODE") ENABLE
);
ALTER table BUDGET_RATE_AND_BASE modify RATE_CLASS_CODE VARCHAR2(3);
ALTER table BUDGET_RATE_AND_BASE modify RATE_TYPE_CODE VARCHAR2(3);
