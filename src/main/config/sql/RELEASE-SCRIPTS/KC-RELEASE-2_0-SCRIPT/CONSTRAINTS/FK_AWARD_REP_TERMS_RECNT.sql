ALTER TABLE AWARD_REP_TERMS_RECNT 
    ADD CONSTRAINT FK1_AWARD_REP_TERMS_RECNT FOREIGN KEY (AWARD_REPORT_TERMS_ID) 
                REFERENCES AWARD_REPORT_TERMS (AWARD_REPORT_TERMS_ID) ;

ALTER TABLE AWARD_REP_TERMS_RECNT 
    ADD CONSTRAINT FK3_AWARD_REP_TERMS_RECNT FOREIGN KEY (ROLODEX_ID) 
                REFERENCES ROLODEX (ROLODEX_ID) ;