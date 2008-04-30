 CREATE TABLE BUDGET_DETAILS_CAL_AMTS 
   (	"PROPOSAL_NUMBER" VARCHAR2(12) constraint BUDGET_DETAILS_CAL_AMTSN1 NOT NULL ENABLE, 
	"VERSION_NUMBER" NUMBER(3,0) constraint BUDGET_DETAILS_CAL_AMTSN2 NOT NULL ENABLE, 
	"BUDGET_PERIOD" NUMBER(3,0) constraint BUDGET_DETAILS_CAL_AMTSN3 NOT NULL ENABLE, 
	"LINE_ITEM_NUMBER" NUMBER(3,0) constraint BUDGET_DETAILS_CAL_AMTSN4 NOT NULL ENABLE, 
	"RATE_CLASS_CODE" VARCHAR2(3) constraint BUDGET_DETAILS_CAL_AMTSN5 NOT NULL ENABLE, 
	"RATE_TYPE_CODE" VARCHAR2(3) constraint BUDGET_DETAILS_CAL_AMTSN6 NOT NULL ENABLE, 
	"APPLY_RATE_FLAG" CHAR(1) constraint BUDGET_DETAILS_CAL_AMTSN7 NOT NULL ENABLE, 
	"CALCULATED_COST" NUMBER(12,2), 
	"CALCULATED_COST_SHARING" NUMBER(12,2), 
	"UPDATE_TIMESTAMP" DATE constraint BUDGET_DETAILS_CAL_AMTSN8 NOT NULL ENABLE, 
	"UPDATE_USER" VARCHAR2(60) constraint BUDGET_DETAILS_CAL_AMTSN9 NOT NULL ENABLE, 
	 "VER_NBR" NUMBER(8,0) DEFAULT 1  constraint  BUDGET_DETAILS_CAL_AMTSN10  NOT NULL ENABLE,
	"OBJ_ID" VARCHAR2(36) DEFAULT SYS_GUID()  constraint  BUDGET_DETAILS_CAL_AMTSN11  NOT NULL ENABLE,
	CONSTRAINT "PK_BUDGET_DETAILS_CAL_AMTS_KRA" PRIMARY KEY ("PROPOSAL_NUMBER", "VERSION_NUMBER", "BUDGET_PERIOD", "LINE_ITEM_NUMBER", "RATE_CLASS_CODE", "RATE_TYPE_CODE") ENABLE
);

ALTER table BUDGET_DETAILS_CAL_AMTS modify RATE_CLASS_CODE VARCHAR2(3);
ALTER table BUDGET_DETAILS_CAL_AMTS modify RATE_TYPE_CODE VARCHAR2(3);

ALTER TABLE BUDGET_DETAILS_CAL_AMTS ADD (CONSTRAINT "FK_BUDGET_DETAILS_CAL_AMTS_KRA" FOREIGN KEY ("PROPOSAL_NUMBER", "VERSION_NUMBER", "BUDGET_PERIOD", "LINE_ITEM_NUMBER")
	  REFERENCES "BUDGET_DETAILS" ("PROPOSAL_NUMBER", "VERSION_NUMBER", "BUDGET_PERIOD", "LINE_ITEM_NUMBER") ON DELETE CASCADE ); 

ALTER TABLE BUDGET_DETAILS_CAL_AMTS ADD (CONSTRAINT "FK_BUDGET_DETAILS_CAL_RATE_KRA" FOREIGN KEY ("RATE_CLASS_CODE", "RATE_TYPE_CODE")
	  REFERENCES "RATE_TYPE" ("RATE_CLASS_CODE", "RATE_TYPE_CODE") );


 