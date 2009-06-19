CREATE TABLE OSP$PROPOSAL_ADMIN_DETAILS ( 
  DEV_PROPOSAL_NUMBER        VARCHAR2 (8)  NOT NULL, 
  INST_PROPOSAL_NUMBER       VARCHAR2 (8), 
  INST_PROP_SEQUENCE_NUMBER  NUMBER (4), 
  DATE_SUBMITTED_BY_DEPT     DATE, 
  DATE_RETURNED_TO_DEPT      DATE, 
  DATE_APPROVED_BY_OSP       DATE, 
  DATE_SUBMITTED_TO_AGENCY   DATE, 
  INST_PROP_CREATE_DATE      DATE, 
  INST_PROP_CREATE_USER      VARCHAR2 (8), 
  SIGNED_BY                  VARCHAR2 (8), 
  SUBMISSION_TYPE            CHAR (1), 
  CONSTRAINT PK_PROPOSAL_ADMIN_DETAILS_KRA
  PRIMARY KEY ( DEV_PROPOSAL_NUMBER ) ) ; 