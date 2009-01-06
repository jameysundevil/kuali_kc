/*
 * Copyright 2006-2008 The Kuali Foundation
 * 
 * Licensed under the Educational Community License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * 
 * http://www.osedu.org/licenses/ECL-2.0
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

/* Table Script */ 
CREATE TABLE AWARD_SCIENCE_KEYWORD ( 
	AWARD_SCIENCE_KEYWORD_ID NUMBER(12,0) NOT NULL, 
	AWARD_ID NUMBER(12,0) NOT NULL, 
	VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL, 
	OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL, 
	SCIENCE_KEYWORD_CODE VARCHAR2(15) NOT NULL, 
	UPDATE_TIMESTAMP DATE NOT NULL, 
	UPDATE_USER VARCHAR2(60) NOT NULL)
/

/* Primary Key Constraint */ 
ALTER TABLE AWARD_SCIENCE_KEYWORD 
ADD CONSTRAINT PK_AWARD_SCIENCE_KEYWORD 
PRIMARY KEY (AWARD_SCIENCE_KEYWORD_ID)
/

/* *************** MODIFIED PRIMARY KEY COLUMN - Introduced new primary key for existing composite key ************ 
ALTER TABLE AWARD_SCIENCE_CODE 
ADD CONSTRAINT PK_AWARD_SCIENCE_CODE 
PRIMARY KEY (MIT_AWARD_NUMBER, SEQUENCE_NUMBER, SCIENCE_CODE)
/
*************** MODIFIED PRIMARY KEY COLUMN - Introduced new primary key for existing composite key ************ */ 
 

/* *************** UNIQUE CONSTRAINT DEFINED FOR COMPOSITE KEY COLUMNS ************  
ALTER TABLE AWARD_SCIENCE_KEYWORD 
ADD CONSTRAINT UQ_AWARD_SCIENCE_KEYWORD 
UNIQUE (MIT_AWARD_NUMBER, SEQUENCE_NUMBER, SCIENCE_KEYWORD_CODE)
*/

/* Foreign Key Constraint(s) */ 
ALTER TABLE AWARD_SCIENCE_KEYWORD 
ADD CONSTRAINT FK_AWARD_SCIENCE_KEYWORD 
FOREIGN KEY (AWARD_ID) 
REFERENCES AWARD (AWARD_ID) 
/

ALTER TABLE AWARD_SCIENCE_KEYWORD 
ADD CONSTRAINT FK_AWARD_SCIENCE_KEYWORD2 
FOREIGN KEY (SCIENCE_KEYWORD_CODE) 
REFERENCES SCIENCE_KEYWORD (SCIENCE_KEYWORD_CODE) 
/

/* *************** MODIFIED FOREIGN KEY COLUMN - Composite keys are removed from KCRA ************ 
ALTER TABLE AWARD_SCIENCE_CODE 
ADD CONSTRAINT FK_AWARD_SCIENCE_CODE 
FOREIGN KEY (MIT_AWARD_NUMBER, SEQUENCE_NUMBER) 
REFERENCES OSP$AWARD (MIT_AWARD_NUMBER, SEQUENCE_NUMBER) 
/

*************** MODIFIED FOREIGN KEY COLUMN - Composite keys are removed from KCRA ************ */ 



/* View for Coeus compatibility */
CREATE OR REPLACE VIEW OSP$AWARD_SCIENCE_CODE(MIT_AWARD_NUMBER, 
	SEQUENCE_NUMBER, 
	SCIENCE_CODE, 
	UPDATE_TIMESTAMP, 
	UPDATE_USER)
	AS SELECT 
	B.AWARD_NUMBER, 
	B.SEQUENCE_NUMBER, 
	A.SCIENCE_KEYWORD_CODE, 
	A.UPDATE_TIMESTAMP, 
	A.UPDATE_USER
FROM AWARD_SCIENCE_KEYWORD A,AWARD B
	where A.AWARD_ID=B.AWARD_ID
/
/* Sequence for AWARD1 table */
CREATE SEQUENCE SEQ_AWARD_SCIENCE_KEYWORD_ID INCREMENT BY 1 START WITH 1;


