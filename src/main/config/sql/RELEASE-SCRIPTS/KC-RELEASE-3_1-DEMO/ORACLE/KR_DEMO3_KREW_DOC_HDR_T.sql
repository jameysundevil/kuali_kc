--REM INSERTING into KREW_DOC_HDR_T
INSERT INTO KREW_DOC_HDR_T (DOC_HDR_ID,DOC_TYP_ID,DOC_HDR_STAT_CD,RTE_LVL,STAT_MDFN_DT,CRTE_DT,APRV_DT,FNL_DT,RTE_STAT_MDFN_DT,TTL,DOC_VER_NBR,INITR_PRNCPL_ID,VER_NBR,RTE_PRNCPL_ID,OBJ_ID) 
VALUES (3091,3909,'F',0,TO_TIMESTAMP('08-JUL-10','DD-MON-RR HH.MI.SSXFF AM'),TO_TIMESTAMP('08-JUL-10','DD-MON-RR HH.MI.SSXFF AM'),TO_TIMESTAMP('08-JUL-10','DD-MON-RR HH.MI.SSXFF AM'),TO_TIMESTAMP('08-JUL-10','DD-MON-RR HH.MI.SSXFF AM'),TO_TIMESTAMP('08-JUL-10','DD-MON-RR HH.MI.SSXFF AM'),'New Questionnaire - IRB Long V1 ',1,'10000000001',10,'10000000001',SYS_GUID())
/

INSERT INTO KREW_DOC_HDR_T (DOC_HDR_ID,DOC_TYP_ID,DOC_HDR_STAT_CD,RTE_LVL,STAT_MDFN_DT,CRTE_DT,APRV_DT,FNL_DT,RTE_STAT_MDFN_DT,TTL,DOC_VER_NBR,INITR_PRNCPL_ID,VER_NBR,RTE_PRNCPL_ID,OBJ_ID) 
VALUES (3092,3909,'F',0,TO_TIMESTAMP('08-JUL-10','DD-MON-RR HH.MI.SSXFF AM'),TO_TIMESTAMP('08-JUL-10','DD-MON-RR HH.MI.SSXFF AM'),TO_TIMESTAMP('08-JUL-10','DD-MON-RR HH.MI.SSXFF AM'),TO_TIMESTAMP('08-JUL-10','DD-MON-RR HH.MI.SSXFF AM'),TO_TIMESTAMP('08-JUL-10','DD-MON-RR HH.MI.SSXFF AM'),'New Questionnaire - IRB Short V1 ',1,'10000000001',10,'10000000001',SYS_GUID())
/

INSERT INTO KREW_DOC_HDR_T (DOC_HDR_ID,DOC_TYP_ID,DOC_HDR_STAT_CD,RTE_LVL,STAT_MDFN_DT,CRTE_DT,APRV_DT,FNL_DT,RTE_STAT_MDFN_DT,TTL,DOC_VER_NBR,INITR_PRNCPL_ID,VER_NBR,RTE_PRNCPL_ID,OBJ_ID) 
VALUES (3093,3909,'F',0,TO_TIMESTAMP('08-JUL-10','DD-MON-RR HH.MI.SSXFF AM'),TO_TIMESTAMP('08-JUL-10','DD-MON-RR HH.MI.SSXFF AM'),TO_TIMESTAMP('08-JUL-10','DD-MON-RR HH.MI.SSXFF AM'),TO_TIMESTAMP('08-JUL-10','DD-MON-RR HH.MI.SSXFF AM'),TO_TIMESTAMP('08-JUL-10','DD-MON-RR HH.MI.SSXFF AM'),'Edit Questionnaire - IRB Long V2 ',1,'10000000001',10,'10000000001',SYS_GUID())
/

INSERT INTO KREW_DOC_HDR_T (DOC_HDR_ID,DOC_TYP_ID,DOC_HDR_STAT_CD,RTE_LVL,STAT_MDFN_DT,CRTE_DT,APRV_DT,FNL_DT,RTE_STAT_MDFN_DT,TTL,DOC_VER_NBR,INITR_PRNCPL_ID,VER_NBR,RTE_PRNCPL_ID,OBJ_ID) 
VALUES (3094,3789,'F',0,TO_TIMESTAMP('08-JUL-10','DD-MON-RR HH.MI.SSXFF AM'),TO_TIMESTAMP('08-JUL-10','DD-MON-RR HH.MI.SSXFF AM'),TO_TIMESTAMP('08-JUL-10','DD-MON-RR HH.MI.SSXFF AM'),TO_TIMESTAMP('08-JUL-10','DD-MON-RR HH.MI.SSXFF AM'),TO_TIMESTAMP('08-JUL-10','DD-MON-RR HH.MI.SSXFF AM'),'Committee Document - IRB Committee',1,'10000000001',24,'10000000001',SYS_GUID())
/

--REM PROTOCOL STAGE DATA
INSERT INTO KREW_DOC_HDR_T (CRTE_DT,DOC_HDR_ID,DOC_HDR_STAT_CD,DOC_TYP_ID,DOC_VER_NBR,INITR_PRNCPL_ID,OBJ_ID,RTE_LVL,RTE_STAT_MDFN_DT,STAT_MDFN_DT,TTL,VER_NBR)
  VALUES (TO_DATE( '20100923222728', 'YYYYMMDDHH24MISS' ),4073,'S',10006,1,'10000000001',SYS_GUID(),0,TO_DATE( '20100923222737', 'YYYYMMDDHH24MISS' ),TO_DATE( '20100923222743', 'YYYYMMDDHH24MISS' ),'KC Protocol - Staged for Admin Corr - Pending/In Prog',9)
/
INSERT INTO KREW_DOC_HDR_T (CRTE_DT,DOC_HDR_ID,DOC_HDR_STAT_CD,DOC_TYP_ID,DOC_VER_NBR,INITR_PRNCPL_ID,OBJ_ID,RTE_LVL,RTE_PRNCPL_ID,RTE_STAT_MDFN_DT,STAT_MDFN_DT,TTL,VER_NBR)
  VALUES (TO_DATE( '20100923222853', 'YYYYMMDDHH24MISS' ),4074,'R',10006,1,'10000000001',SYS_GUID(),1,'10000000001',TO_DATE( '20100923223606', 'YYYYMMDDHH24MISS' ),TO_DATE( '20100923223608', 'YYYYMMDDHH24MISS' ),'KC Protocol - Staged for Admin Corr - Withdrawn',21)
/
INSERT INTO KREW_DOC_HDR_T (CRTE_DT,DOC_HDR_ID,DOC_HDR_STAT_CD,DOC_TYP_ID,DOC_VER_NBR,INITR_PRNCPL_ID,OBJ_ID,RTE_LVL,RTE_PRNCPL_ID,RTE_STAT_MDFN_DT,STAT_MDFN_DT,TTL,VER_NBR)
  VALUES (TO_DATE( '20100923223559', 'YYYYMMDDHH24MISS' ),4075,'R',10007,1,'10000000001',SYS_GUID(),2,'10000000001',TO_DATE( '20100923223604', 'YYYYMMDDHH24MISS' ),TO_DATE( '20100923223610', 'YYYYMMDDHH24MISS' ),'KC Protocol Review - Researcher/Protocol# 1009000019',20)
/
INSERT INTO KREW_DOC_HDR_T (CRTE_DT,DOC_HDR_ID,DOC_HDR_STAT_CD,DOC_TYP_ID,DOC_VER_NBR,FNL_DT,INITR_PRNCPL_ID,OBJ_ID,RTE_LVL,RTE_PRNCPL_ID,RTE_STAT_MDFN_DT,STAT_MDFN_DT,TTL,VER_NBR)
  VALUES (TO_DATE( '20100923225959', 'YYYYMMDDHH24MISS' ),4076,'X',10006,1,TO_DATE( '20100923230201', 'YYYYMMDDHH24MISS' ),'10000000001',SYS_GUID(),1,'10000000001',TO_DATE( '20100923230201', 'YYYYMMDDHH24MISS' ),TO_DATE( '20100923230201', 'YYYYMMDDHH24MISS' ),'KC Protocol - Staged for Admin Corr - SMRR',30)
/
INSERT INTO KREW_DOC_HDR_T (CRTE_DT,DOC_HDR_ID,DOC_HDR_STAT_CD,DOC_TYP_ID,DOC_VER_NBR,INITR_PRNCPL_ID,OBJ_ID,RTE_LVL,RTE_PRNCPL_ID,RTE_STAT_MDFN_DT,STAT_MDFN_DT,TTL,VER_NBR)
  VALUES (TO_DATE( '20100923230021', 'YYYYMMDDHH24MISS' ),4077,'R',10007,1,'10000000001',SYS_GUID(),2,'10000000001',TO_DATE( '20100923230025', 'YYYYMMDDHH24MISS' ),TO_DATE( '20100923230033', 'YYYYMMDDHH24MISS' ),'KC Protocol Review - Researcher/Protocol# 1009000028',20)
/
INSERT INTO KREW_DOC_HDR_T (CRTE_DT,DOC_HDR_ID,DOC_HDR_STAT_CD,DOC_TYP_ID,DOC_VER_NBR,INITR_PRNCPL_ID,OBJ_ID,RTE_LVL,RTE_STAT_MDFN_DT,STAT_MDFN_DT,TTL,VER_NBR)
  VALUES (TO_DATE( '20100923230157', 'YYYYMMDDHH24MISS' ),4078,'S',10006,1,'10000000001',SYS_GUID(),0,TO_DATE( '20100923230157', 'YYYYMMDDHH24MISS' ),TO_DATE( '20100923230206', 'YYYYMMDDHH24MISS' ),'KC Protocol - Staged for Admin Corr - SMRR',12)
/
INSERT INTO KREW_DOC_HDR_T (CRTE_DT,DOC_HDR_ID,DOC_HDR_STAT_CD,DOC_TYP_ID,DOC_VER_NBR,FNL_DT,INITR_PRNCPL_ID,OBJ_ID,RTE_LVL,RTE_PRNCPL_ID,RTE_STAT_MDFN_DT,STAT_MDFN_DT,TTL,VER_NBR)
  VALUES (TO_DATE( '20100923230348', 'YYYYMMDDHH24MISS' ),4079,'X',10006,1,TO_DATE( '20100923230838', 'YYYYMMDDHH24MISS' ),'10000000001',SYS_GUID(),1,'10000000001',TO_DATE( '20100923230838', 'YYYYMMDDHH24MISS' ),TO_DATE( '20100923230838', 'YYYYMMDDHH24MISS' ),'KC Protocol - Staged for Admin Corr - SRR',30)
/
INSERT INTO KREW_DOC_HDR_T (CRTE_DT,DOC_HDR_ID,DOC_HDR_STAT_CD,DOC_TYP_ID,DOC_VER_NBR,INITR_PRNCPL_ID,OBJ_ID,RTE_LVL,RTE_PRNCPL_ID,RTE_STAT_MDFN_DT,STAT_MDFN_DT,TTL,VER_NBR)
  VALUES (TO_DATE( '20100923230411', 'YYYYMMDDHH24MISS' ),4080,'R',10007,1,'10000000001',SYS_GUID(),2,'10000000001',TO_DATE( '20100923230414', 'YYYYMMDDHH24MISS' ),TO_DATE( '20100923230422', 'YYYYMMDDHH24MISS' ),'KC Protocol Review - Researcher/Protocol# 1009000049',20)
/
INSERT INTO KREW_DOC_HDR_T (CRTE_DT,DOC_HDR_ID,DOC_HDR_STAT_CD,DOC_TYP_ID,DOC_VER_NBR,INITR_PRNCPL_ID,OBJ_ID,RTE_LVL,RTE_STAT_MDFN_DT,STAT_MDFN_DT,TTL,VER_NBR)
  VALUES (TO_DATE( '20100923230834', 'YYYYMMDDHH24MISS' ),4081,'S',10006,1,'10000000001',SYS_GUID(),0,TO_DATE( '20100923230835', 'YYYYMMDDHH24MISS' ),TO_DATE( '20100923230843', 'YYYYMMDDHH24MISS' ),'KC Protocol - Staged for Admin Corr - SRR',12)
/
