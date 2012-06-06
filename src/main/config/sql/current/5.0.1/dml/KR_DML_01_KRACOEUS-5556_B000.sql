INSERT INTOINSERT INTO KRIM_PERM_T (PERM_ID, OBJ_ID, VER_NBR, PERM_TMPL_ID, NMSPC_CD, NM, DESC_TXT, ACTV_IND) 
    VALUES (KRIM_PERM_ID_BS_S.NEXTVAL, SYS_GUID(), 1, 
            (SELECT PERM_TMPL_ID FROM KRIM_PERM_TMPL_T WHERE NM = 'View Document Section'), 
            'KC-B', 'View Personnel Salaries', 'View Personnel Salaries', 'Y')
/
INSERT INTO KRIM_PERM_ATTR_DATA_T (ATTR_DATA_ID, OBJ_ID, VER_NBR, PERM_ID, KIM_TYP_ID, KIM_ATTR_DEFN_ID, ATTR_VAL) 
  VALUES (KRIM_ATTR_DATA_ID_BS_S.NEXTVAL, SYS_GUID(), 1, 
         (SELECT PERM_ID FROM KRIM_PERM_T WHERE NM = 'VIEW_PROP_PERSON_INST_SALARIES'), 
         (SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NM = 'Document Section'), 
         (SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NM = 'sectionName'), 
         'personnel_salaries')
/

INSERT INTO KRIM_ROLE_PERM_T (ROLE_PERM_ID, OBJ_ID, VER_NBR, ROLE_ID, PERM_ID, ACTV_IND) 
  VALUES (KRIM_ROLE_PERM_ID_BS_S.NEXTVAL, SYS_GUID(), 1, 
         (SELECT ROLE_ID FROM KRIM_ROLE_T WHERE ROLE_NM = 'Award Budget Administrator'), 
         (SELECT PERM_ID FROM KRIM_PERM_T WHERE NM = 'View Personnel Salaries'), 'Y')
/

INSERT INTO KRIM_ROLE_PERM_T (ROLE_PERM_ID, OBJ_ID, VER_NBR, ROLE_ID, PERM_ID, ACTV_IND) 
  VALUES (KRIM_ROLE_PERM_ID_BS_S.NEXTVAL, SYS_GUID(), 1, 
         (SELECT ROLE_ID FROM KRIM_ROLE_T WHERE ROLE_NM = 'Award Budget Maintainer'), 
         (SELECT PERM_ID FROM KRIM_PERM_T WHERE NM = 'View Personnel Salaries'), 'Y')
/

INSERT INTO KRIM_ROLE_PERM_T (ROLE_PERM_ID, OBJ_ID, VER_NBR, ROLE_ID, PERM_ID, ACTV_IND) 
  VALUES (KRIM_ROLE_PERM_ID_BS_S.NEXTVAL, SYS_GUID(), 1, 
         (SELECT ROLE_ID FROM KRIM_ROLE_T WHERE ROLE_NM = 'Award Budget Aggregator'), 
         (SELECT PERM_ID FROM KRIM_PERM_T WHERE NM = 'View Personnel Salaries'), 'Y')
/

INSERT INTO KRIM_ROLE_PERM_T (ROLE_PERM_ID, OBJ_ID, VER_NBR, ROLE_ID, PERM_ID, ACTV_IND) 
  VALUES (KRIM_ROLE_PERM_ID_BS_S.NEXTVAL, SYS_GUID(), 1, 
         (SELECT ROLE_ID FROM KRIM_ROLE_T WHERE ROLE_NM = 'Award Budget Approver'), 
         (SELECT PERM_ID FROM KRIM_PERM_T WHERE NM = 'View Personnel Salaries'), 'Y')
/

INSERT INTO KRIM_ROLE_PERM_T (ROLE_PERM_ID, OBJ_ID, VER_NBR, ROLE_ID, PERM_ID, ACTV_IND) 
  VALUES (KRIM_ROLE_PERM_ID_BS_S.NEXTVAL, SYS_GUID(), 1, 
         (SELECT ROLE_ID FROM KRIM_ROLE_T WHERE ROLE_NM = 'Award Budget Modifier'), 
         (SELECT PERM_ID FROM KRIM_PERM_T WHERE NM = 'View Personnel Salaries'), 'Y')
/

INSERT INTO KRIM_ROLE_PERM_T (ROLE_PERM_ID, OBJ_ID, VER_NBR, ROLE_ID, PERM_ID, ACTV_IND) 
  VALUES (KRIM_ROLE_PERM_ID_BS_S.NEXTVAL, SYS_GUID(), 1, 
         (SELECT ROLE_ID FROM KRIM_ROLE_T WHERE ROLE_NM = 'Award Budget Viewer'), 
         (SELECT PERM_ID FROM KRIM_PERM_T WHERE NM = 'View Personnel Salaries'), 'Y')
/

DECLARE 
cur_role VARCHAR2(40);
CURSOR CURRENT_ROLES IS
	SELECT ROLE_ID FROM KRIM_ROLE_PERM_T WHERE ACTV_IND = 'Y' AND 
	(PERM_ID = (SELECT PERM_ID FROM KRIM_PERM_T WHERE NMSPC_CD = 'KC-PD' AND NM = 'VIEW_INSTITUTIONAL_SALARIES') OR
		PERM_ID = (SELECT PERM_ID FROM KRIM_PERM_T WHERE NMSPC_CD = 'KC-PD' AND NM = 'VIEW_PROP_PERSON_INST_SALARIES'));
BEGIN
	OPEN current_roles;
	FETCH current_roles INTO cur_role;
		INSERT INTO KRIM_ROLE_PERM_T (ROLE_PERM_ID, OBJ_ID, VER_NBR, ROLE_ID, PERM_ID, ACTV_IND) 
  			VALUES (KRIM_ROLE_PERM_ID_BS_S.NEXTVAL, SYS_GUID(), 1, 
         cur_role, 
         (SELECT PERM_ID FROM KRIM_PERM_T WHERE NM = 'View Personnel Salaries'), 'Y');
    CLOSE current_roles;
END;

UPDATE KRIM_ROLE_PERM_T SET ACTV_IND = 'N' WHERE 
	PERM_ID = (SELECT PERM_ID FROM KRIM_PERM_T WHERE NMSPC_CD = 'KC-PD' AND NM = 'VIEW_INSTITUTIONAL_SALARIES')
/

UPDATE KRIM_ROLE_PERM_T SET ACTV_IND = 'N' WHERE
	PERM_ID = (SELECT PERM_ID FROM KRIM_PERM_T WHERE NMSPC_CD = 'KC-PD' AND NM = 'VIEW_PROP_PERSON_INST_SALARIES')
/

UPDATE KRIM_PERM_T SET ACTV_IND = 'N' WHERE NMSPC_CD = 'KC-PD' AND NM = 'VIEW_INSTITUTIONAL_SALARIES'
/

UPDATE KRIM_PERM_T SET ACTV_IND = 'N' WHERE NMSPC_CD = 'KC-PD' AND NM = 'VIEW_PROP_PERSON_INST_SALARIES'
/
