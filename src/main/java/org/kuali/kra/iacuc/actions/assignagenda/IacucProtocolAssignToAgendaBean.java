/*
 * Copyright 2005-2013 The Kuali Foundation
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
package org.kuali.kra.iacuc.actions.assignagenda;

import org.kuali.kra.iacuc.actions.IacucActionHelper;
import org.kuali.kra.iacuc.actions.IacucProtocolActionType;
import org.kuali.kra.iacuc.actions.genericactions.IacucProtocolGenericActionBean;
import org.kuali.kra.iacuc.correspondence.IacucProtocolActionsCorrespondence;
import org.kuali.kra.infrastructure.Constants;
import org.kuali.kra.infrastructure.KraServiceLocator;
import org.kuali.kra.printing.Printable;
import org.kuali.kra.protocol.actions.assignagenda.ProtocolAssignToAgendaBean;

/**
 * This class is really just a "form" for assigning a protocol to an agenda.
 */
public class IacucProtocolAssignToAgendaBean extends IacucProtocolGenericActionBean implements ProtocolAssignToAgendaBean {

    private static final long serialVersionUID = -1671485882883282877L;
    
    private String committeeId = "";
    private String committeName = "";
    private String scheduleDate = "";
    private boolean protocolAssigned;

    private transient IacucProtocolAssignToAgendaService agendaService;

    /**
     * Constructs a ProtocolAssignToAgendaBean.
     * @param actionHelper a reference back to the parent helper
     */
    public IacucProtocolAssignToAgendaBean(IacucActionHelper actionHelper) {
        super(actionHelper, Constants.PROTOCOL_ASSIGN_TO_AGENDA_ACTION_PROPERTY_KEY);
    }

    public void setCommitteeId(String committeeId) {
        this.committeeId = committeeId;
    }


    public void setCommitteName(String committeName) {
        this.committeName = committeName;
    }


    public void setScheduleDate(String scheduleDate) {
        this.scheduleDate = scheduleDate;
    }


    public void setProtocolAssigned(boolean protocolAssigned) {
        this.protocolAssigned = protocolAssigned;
    }

    private IacucProtocolAssignToAgendaService getProtocolAssignToAgendaService() {
        if (this.agendaService == null){
            this.agendaService = KraServiceLocator.getService(IacucProtocolAssignToAgendaService.class);
        }
        return this.agendaService;
    }


    public String getCommitteeId() {
        return committeeId;
    }


    public String getCommitteName() {
        return committeName;
    }


    public String getScheduleDate() {
        return scheduleDate;
    }


    public boolean isProtocolAssigned() {
        return protocolAssigned;
    }

    /**
     * Prepare the Assign to Committee and Schedule for rendering with JSP.
     */
    public void prepareView() {
        if (getProtocol() != null && getProtocol().getProtocolNumber() != null) {
            String assignedCommitteeId = getProtocolAssignToAgendaService().getAssignedCommitteeId(getProtocol());
            if (assignedCommitteeId != null) {
                this.committeeId = assignedCommitteeId;
                this.committeName = getProtocolAssignToAgendaService().getAssignedCommitteeName(getProtocol());
                this.setComments(getProtocolAssignToAgendaService().getAssignToAgendaComments(getProtocol()));
                this.protocolAssigned = getProtocolAssignToAgendaService().isAssignedToAgenda(getProtocol());
                this.scheduleDate = getProtocolAssignToAgendaService().getAssignedScheduleDate(getProtocol());
            }
            this.setComments("");
        }
        
        /*
         * The Assign to Agenda has to work with and without JavaScript. When JavaScript is enabled, the newly selected committee
         * and schedule are what we want to continue to display. When JavaScript is disabled, we have to change the schedule dates
         * that we display if the committee has changed.
         * Note: no known javascript issues at this, but leaving the code in place so it will be easy to put in if/when an issue arises.
         */
        if (getActionHelper().getProtocolForm().isJavaScriptEnabled()) {
        } else {
        }
    }
    
    /**
     * 
     * This method returns the appropriate printable for this class
     * @return a Printable
     */
    public Printable getCorrespondence() {
        IacucProtocolActionsCorrespondence correspondence = new IacucProtocolActionsCorrespondence(IacucProtocolActionType.ASSIGNED_TO_AGENDA);
        return correspondence;
    }
}
