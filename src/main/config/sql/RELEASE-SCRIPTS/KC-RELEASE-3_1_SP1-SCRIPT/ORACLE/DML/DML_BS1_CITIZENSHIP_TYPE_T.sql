-- insert data
INSERT INTO CITIZENSHIP_TYPE_T(CITIZENSHIP_TYPE_CODE, DESCRIPTION, ACTIVE_FLAG, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID)
VALUES (1, 'US CITIZEN OR NONCITIZEN NATIONAL', 'Y', SYSDATE, 'kradev', 1, SYS_GUID());

INSERT INTO CITIZENSHIP_TYPE_T(CITIZENSHIP_TYPE_CODE, DESCRIPTION, ACTIVE_FLAG, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID)
VALUES (2, 'PERMANENT RESIDENT OF US', 'Y', SYSDATE, 'kradev', 1, SYS_GUID());

INSERT INTO CITIZENSHIP_TYPE_T(CITIZENSHIP_TYPE_CODE, DESCRIPTION, ACTIVE_FLAG, UPDATE_TIMESTAMP, UPDATE_USER, VER_NBR, OBJ_ID)
VALUES (3, 'NON US CITIZEN WITH TEMPORARY VISA', 'Y', SYSDATE, 'kradev', 1, SYS_GUID());

COMMIT;
