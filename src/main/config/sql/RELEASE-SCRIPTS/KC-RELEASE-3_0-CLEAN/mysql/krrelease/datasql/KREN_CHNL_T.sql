delimiter /
TRUNCATE TABLE KREN_CHNL_T
/
INSERT INTO KREN_CHNL_T (CHNL_ID,DESC_TXT,NM,SUBSCRB_IND,VER_NBR)
  VALUES (500,'Builtin channel for KEW','KEW','N',1)
/
INSERT INTO KREN_CHNL_T (CHNL_ID,DESC_TXT,NM,SUBSCRB_IND,VER_NBR)
  VALUES (1000,'Channel dedicated for KC System generated Notifications','KC Notification Channel','N',1)
/
delimiter ;
