alter table BUDGET_SUB_AWARDS add ORGANIZATION_ID VARCHAR2(8)
/

update BUDGET_SUB_AWARDS set ORGANIZATION_ID = (select ORGANIZATION_ID from ORGANIZATION where ORGANIZATION_NAME = BUDGET_SUB_AWARDS.ORGANIZATION_NAME)
/

alter table BUDGET_SUB_AWARDS modify SUB_AWARD_XFD_FILE_NAME null
/

alter table BUDGET_SUB_AWARDS modify SUB_AWARD_XFD_FILE null
/
