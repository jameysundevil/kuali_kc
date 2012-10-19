DELIMITER /
ALTER TABLE IACUC_BATCH_CORRESP_DETAIL 
ADD CONSTRAINT FK_IAC_BATCH_CORRESP_DETAIL_1 
FOREIGN KEY (PROTO_CORRESP_TYPE_CODE) 
REFERENCES IACUC_PROTOCOL_CORRESP_TYPE (PROTO_CORRESP_TYPE_CODE)
/

ALTER TABLE IACUC_BATCH_CORRESP_DETAIL 
ADD CONSTRAINT FK_IAC_BATCH_CORRESP_DETAIL_2 
FOREIGN KEY (BATCH_CORRESPONDENCE_TYPE_CODE) 
REFERENCES IACUC_BATCH_CORRESPONDENCE (BATCH_CORRESPONDENCE_TYPE_CODE)
/


DELIMITER ;