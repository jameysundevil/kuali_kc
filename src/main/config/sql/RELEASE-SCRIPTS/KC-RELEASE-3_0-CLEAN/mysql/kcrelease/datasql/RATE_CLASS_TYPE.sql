delimiter /
TRUNCATE TABLE RATE_CLASS_TYPE
/
INSERT INTO RATE_CLASS_TYPE (DESCRIPTION,OBJ_ID,PREFIX_ACTIVITY_TYPE,RATE_CLASS_TYPE,SORT_ID,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR)
  VALUES ('Fringe Benefits','052B527835094692B4D78A18A9D2AEDB','N','E',2,STR_TO_DATE( '20080219000000', '%Y%m%d%H%i%s' ),'KRADBA',1)
/
INSERT INTO RATE_CLASS_TYPE (DESCRIPTION,OBJ_ID,PREFIX_ACTIVITY_TYPE,RATE_CLASS_TYPE,SORT_ID,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR)
  VALUES ('Inflation','3C7FD62FAA574B708A09B24C3AD512C9','N','I',3,STR_TO_DATE( '20080219000000', '%Y%m%d%H%i%s' ),'KRADBA',1)
/
INSERT INTO RATE_CLASS_TYPE (DESCRIPTION,OBJ_ID,PREFIX_ACTIVITY_TYPE,RATE_CLASS_TYPE,SORT_ID,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR)
  VALUES ('Lab Allocation - Other','D7778846DF8346DB95F2CB1E04B22473','N','L',6,STR_TO_DATE( '20080219000000', '%Y%m%d%H%i%s' ),'KRADBA',1)
/
INSERT INTO RATE_CLASS_TYPE (DESCRIPTION,OBJ_ID,PREFIX_ACTIVITY_TYPE,RATE_CLASS_TYPE,SORT_ID,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR)
  VALUES ('F & A','7527AF26F59E44948EFF5DE80BF3116B','Y','O',1,STR_TO_DATE( '20080219000000', '%Y%m%d%H%i%s' ),'KRADBA',1)
/
INSERT INTO RATE_CLASS_TYPE (DESCRIPTION,OBJ_ID,PREFIX_ACTIVITY_TYPE,RATE_CLASS_TYPE,SORT_ID,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR)
  VALUES ('Vacation','057B5E85C5C34A878DD01907DB00AC46','N','V',4,STR_TO_DATE( '20080219000000', '%Y%m%d%H%i%s' ),'KRADBA',1)
/
INSERT INTO RATE_CLASS_TYPE (DESCRIPTION,OBJ_ID,PREFIX_ACTIVITY_TYPE,RATE_CLASS_TYPE,SORT_ID,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR)
  VALUES ('Other','93503B8C1EBF457FAB5D493AAD883974','N','X',7,STR_TO_DATE( '20080219000000', '%Y%m%d%H%i%s' ),'KRADBA',1)
/
INSERT INTO RATE_CLASS_TYPE (DESCRIPTION,OBJ_ID,PREFIX_ACTIVITY_TYPE,RATE_CLASS_TYPE,SORT_ID,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR)
  VALUES ('Lab Allocation - Salaries','3EC6A90B3CCF46D9AF6BC11CCB305850','N','Y',5,STR_TO_DATE( '20080219000000', '%Y%m%d%H%i%s' ),'KRADBA',1)
/
delimiter ;
