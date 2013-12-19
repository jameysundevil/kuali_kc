DELIMITER /

DROP TABLE IACUC_PROC_PERSON_RESPONSIBLE
/

CREATE TABLE IACUC_PROC_PERSON_RESPONSIBLE ( 
    IACUC_PROC_PERS_RESP_ID DECIMAL(12,0) NOT NULL, 
    IACUC_PROTOCOL_STUDY_GROUP_ID DECIMAL(12,0) NOT NULL, 
    PROTOCOL_PERSON_ID DECIMAL(12) NOT NULL,
    UPDATE_TIMESTAMP DATE NOT NULL, 
    UPDATE_USER VARCHAR(60) NOT NULL, 
    VER_NBR DECIMAL(8,0) DEFAULT 1 NOT NULL, 
    OBJ_ID VARCHAR(36) NOT NULL) 
/


ALTER TABLE IACUC_PROC_PERSON_RESPONSIBLE 
ADD CONSTRAINT PK_IACUC_PROC_PERSON_RESPONS 
PRIMARY KEY (IACUC_PROC_PERS_RESP_ID) 
/

DELIMITER ;