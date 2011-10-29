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
package org.kuali.kra.coi.personfinancialentity;

import java.io.Serializable;
import java.util.Map;

public class FinancialEntitySummaryBean implements Serializable {
    /**
     * Comment for <code>serialVersionUID</code>
     */
    private static final long serialVersionUID = -8525835671837464825L;
    private String address;
    private String relationshipDescription;
    private Long sponsorCode;
    private String statusCode;
    private String ownershipType;
    private String details;
    private Map<String, String> relationshipDetails;
    private FinancialEntityForm financialEntityForm;
    
    
    
    public FinancialEntitySummaryBean(FinancialEntityForm financialEntityForm) {
        this.financialEntityForm = financialEntityForm;
    }
    public FinancialEntityForm getFinancialEntityForm() {
        return financialEntityForm;
    }
    public void setFinancialEntityForm(FinancialEntityForm financialEntityForm) {
        this.financialEntityForm = financialEntityForm;
    }
    public String getDetails() {
        return details;
    }
    public void setDetails(String details) {
        this.details = details;
    }
    public Map<String, String> getRelationshipDetails() {
        return relationshipDetails;
    }
    public void setRelationshipDetails(Map<String, String> relationshipDetails) {
        this.relationshipDetails = relationshipDetails;
    }
    public String getAddress() {
        return address;
    }
    public void setAddress(String address) {
        this.address = address;
    }
    public String getRelationshipDescription() {
        return relationshipDescription;
    }
    public void setRelationshipDescription(String relationshipDescription) {
        this.relationshipDescription = relationshipDescription;
    }
    public Long getSponsorCode() {
        return sponsorCode;
    }
    public void setSponsorCode(Long sponsorCode) {
        this.sponsorCode = sponsorCode;
    }
    public String getStatusCode() {
        return statusCode;
    }
    public void setStatusCode(String statusCode) {
        this.statusCode = statusCode;
    }
    public String getOwnershipType() {
        return ownershipType;
    }
    public void setOwnershipType(String ownershipType) {
        this.ownershipType = ownershipType;
    }
    
    
    
    
}