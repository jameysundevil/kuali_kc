-- Table Script 
CREATE TABLE COMM_MEMBER_ROLES (
    COMM_MEMBER_ROLES_ID NUMBER (12, 0) NOT NULL, 
    COMM_MEMBERSHIP_ID_FK NUMBER (12, 0) NOT NULL, 
    MEMBERSHIP_ROLE_CODE VARCHAR2 (3) NOT NULL, 
    START_DATE DATE NOT NULL, 
    END_DATE DATE NOT NULL, 
    UPDATE_TIMESTAMP DATE NOT NULL, 
    UPDATE_USER VARCHAR2 (60) NOT NULL, 
    VER_NBR NUMBER (8, 0) DEFAULT 1 NOT NULL, 
    OBJ_ID VARCHAR2 (36) DEFAULT SYS_GUID () NOT NULL) ;

-- Primary Key Constraint 
ALTER TABLE comm_member_roles 
    ADD CONSTRAINT PK_COMM_MEMBER_ROLES 
            PRIMARY KEY (comm_member_roles_id) ; 