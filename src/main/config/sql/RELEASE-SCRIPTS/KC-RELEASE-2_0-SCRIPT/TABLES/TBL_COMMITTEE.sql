CREATE TABLE COMMITTEE (
    ID NUMBER (12, 0) NOT NULL, 
    SEQUENCE_NUMBER NUMBER (4, 0) NOT NULL, 
    DOCUMENT_NUMBER NUMBER (10) NOT NULL, 
    COMMITTEE_ID VARCHAR2 (15) NOT NULL, 
    COMMITTEE_NAME VARCHAR2 (60) NOT NULL, 
    HOME_UNIT_NUMBER VARCHAR2 (8) NOT NULL, 
    DESCRIPTION VARCHAR2 (2000) , 
    SCHEDULE_DESCRIPTION VARCHAR2 (2000) , 
    COMMITTEE_TYPE_CODE VARCHAR2 (3) NOT NULL, 
    MINIMUM_MEMBERS_REQUIRED NUMBER (3, 0) , 
    MAX_PROTOCOLS NUMBER (4, 0) , 
    ADV_SUBMISSION_DAYS_REQ NUMBER (3, 0) , 
    DEFAULT_REVIEW_TYPE_CODE VARCHAR2 (3) , 
    APPLICABLE_REVIEW_TYPE_CODE VARCHAR2 (3) NOT NULL, 
    CREATE_TIMESTAMP DATE, 
    CREATE_USER VARCHAR2 (8) , 
    UPDATE_TIMESTAMP DATE NOT NULL, 
    UPDATE_USER VARCHAR2 (60) NOT NULL, 
    VER_NBR NUMBER (8, 0) DEFAULT 1 NOT NULL, 
    OBJ_ID VARCHAR2 (36) DEFAULT SYS_GUID () NOT NULL) ;

ALTER TABLE COMMITTEE 
    ADD CONSTRAINT PK_COMMITTEE 
            PRIMARY KEY (ID) ;

ALTER TABLE COMMITTEE 
    ADD CONSTRAINT UQ_COMMITTEE_ID 
            UNIQUE (COMMITTEE_ID, SEQUENCE_NUMBER) ;