ALTER TABLE PROTOCOL_PMC
  ADD CONSTRAINT FK_PROTOCOL_PMC_ID
  FOREIGN KEY (PERSON_MASS_CHANGE_ID) REFERENCES PERSON_MASS_CHANGE (PERSON_MASS_CHANGE_ID)
/