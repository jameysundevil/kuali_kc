/*
 * Copyright 2006-2009 The Kuali Foundation
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
package org.kuali.kra.award.budget;

import java.util.LinkedHashMap;

import org.kuali.kra.award.home.Award;
import org.kuali.kra.budget.core.Budget;

public class AwardBudgetExt extends Budget { 
    

    private static final long serialVersionUID = 1L;

    public static final String AWARD_BUDGET_TYPE_NEW_PARAMETER = "AWARD_BUDGET_TYPE_NEW_PARAMETER";

    private String awardBudgetStatusCode; 
    private String awardBudgetTypeCode; 
    
    private AwardBudgetStatus awardBudgetStatus; 
    private AwardBudgetType awardBudgetType; 
    
    public AwardBudgetExt() { 

    } 
    
    public String getAwardBudgetStatusCode() {
        return awardBudgetStatusCode;
    }

    public void setAwardBudgetStatusCode(String awardBudgetStatusCode) {
        this.awardBudgetStatusCode = awardBudgetStatusCode;
    }

    public String getAwardBudgetTypeCode() {
        return awardBudgetTypeCode;
    }

    public void setAwardBudgetTypeCode(String awardBudgetTypeCode) {
        this.awardBudgetTypeCode = awardBudgetTypeCode;
    }

    public AwardBudgetStatus getAwardBudgetStatus() {
        return awardBudgetStatus;
    }

    public void setAwardBudgetStatus(AwardBudgetStatus awardBudgetStatus) {
        this.awardBudgetStatus = awardBudgetStatus;
    }

    public AwardBudgetType getAwardBudgetType() {
        return awardBudgetType;
    }

    public void setAwardBudgetType(AwardBudgetType awardBudgetType) {
        this.awardBudgetType = awardBudgetType;
    }

    /** {@inheritDoc} */
    @Override 
    protected LinkedHashMap<String, Object> toStringMapper() {
        LinkedHashMap<String, Object> hashMap = new LinkedHashMap<String, Object>();
        hashMap.put("budgetId", this.getBudgetId());
        hashMap.put("awardBudgetStatusCode", this.getAwardBudgetStatusCode());
        hashMap.put("awardBudgetTypeCode", this.getAwardBudgetTypeCode());
        return hashMap;
    }

    /**
     * Gets the ohRatesNonEditable attribute. 
     * @return Returns the ohRatesNonEditable.
     */
    public boolean getOhRatesNonEditable() {
        Award award = (Award)getBudgetDocument().getParentDocument().getBudgetParent();
        return award.getAwardFandaRate().isEmpty()?false:true;
    }

    /**
     * Gets the ebRatesNonEditable attribute. 
     * @return Returns the ebRatesNonEditable.
     */
    public boolean getEbRatesNonEditable() {
        Award award = (Award)getBudgetDocument().getParentDocument().getBudgetParent();
        return ((award.getSpecialEbRateOffCampus()!=null && award.getSpecialEbRateOffCampus().isPositive())||
                 (award.getSpecialEbRateOnCampus()!=null && award.getSpecialEbRateOnCampus().isPositive()))?true:false;
    }
    
}