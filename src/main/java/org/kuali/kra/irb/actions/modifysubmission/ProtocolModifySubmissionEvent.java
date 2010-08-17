/*
 * Copyright 2005-2010 The Kuali Foundation
 * 
 * Licensed under the Educational Community License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * 
 * http://www.opensource.org/licenses/ecl1.php
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.kuali.kra.irb.actions.modifysubmission;

import org.apache.commons.lang.StringUtils;
import org.kuali.kra.irb.ProtocolDocument;
import org.kuali.kra.irb.actions.approve.ProtocolApproveEvent;
import org.kuali.kra.rule.event.KraDocumentEventBase;
import org.kuali.rice.kns.rule.BusinessRule;

/**
 * 
 * This class deals with the event of modifying a protocol submisison.
 */
public class ProtocolModifySubmissionEvent extends KraDocumentEventBase {
    private static final org.apache.commons.logging.Log LOG = org.apache.commons.logging.LogFactory.getLog(ProtocolModifySubmissionEvent.class);
    private ProtocolModifySubmissionAction actionBean;
    
    /**
     * 
     * Constructs a ProtocolModifiySubmissionEvent.java.
     * @param document
     * @param actionBean
     */
    public ProtocolModifySubmissionEvent(ProtocolDocument document, ProtocolModifySubmissionAction actionBean) {
        super("Modifying Submission " + getDocumentId(document), "", document);
        this.actionBean = actionBean;
        logEvent();
        
    }
    @Override
    protected void logEvent() {
        StringBuffer logMessage = new StringBuffer(StringUtils.substringAfterLast(this.getClass().getName(), "."));
        logMessage.append(" with ");

        if (this.actionBean == null) {
            logMessage.append("null actionBean");
        } else {
            logMessage.append(actionBean.toString());
        }

        LOG.debug(logMessage);

    }

    public Class getRuleInterfaceClass() {
        return ExcecuteProtocolModifySubmissionRule.class;
    }
    
    /**
     * 
     * @see org.kuali.rice.kns.rule.event.KualiDocumentEvent#invokeRuleMethod(org.kuali.rice.kns.rule.BusinessRule)
     */
    public boolean invokeRuleMethod(BusinessRule rule) {
        return ((ExcecuteProtocolModifySubmissionRule) rule).processModifySubmissionRule((ProtocolDocument) getDocument(), actionBean);
    }
}