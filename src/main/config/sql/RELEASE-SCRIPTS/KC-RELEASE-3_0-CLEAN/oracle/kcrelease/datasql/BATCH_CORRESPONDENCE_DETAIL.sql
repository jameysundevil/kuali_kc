TRUNCATE TABLE BATCH_CORRESPONDENCE_DETAIL DROP STORAGE
/
INSERT INTO BATCH_CORRESPONDENCE_DETAIL (BATCH_CORRESPONDENCE_DETAIL_ID,BATCH_CORRESPONDENCE_TYPE_CODE,DAYS_TO_EVENT,PROTO_CORRESP_TYPE_CODE,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR)
  VALUES (2,'1',60,'20',TO_DATE( '20100128120000', 'YYYYMMDDHH24MISS' ),'admin',1)
/
INSERT INTO BATCH_CORRESPONDENCE_DETAIL (BATCH_CORRESPONDENCE_DETAIL_ID,BATCH_CORRESPONDENCE_TYPE_CODE,DAYS_TO_EVENT,PROTO_CORRESP_TYPE_CODE,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR)
  VALUES (3,'1',15,'21',TO_DATE( '20100128120000', 'YYYYMMDDHH24MISS' ),'admin',1)
/
INSERT INTO BATCH_CORRESPONDENCE_DETAIL (BATCH_CORRESPONDENCE_DETAIL_ID,BATCH_CORRESPONDENCE_TYPE_CODE,DAYS_TO_EVENT,PROTO_CORRESP_TYPE_CODE,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR)
  VALUES (5,'2',15,'23',TO_DATE( '20100128120000', 'YYYYMMDDHH24MISS' ),'admin',1)
/
