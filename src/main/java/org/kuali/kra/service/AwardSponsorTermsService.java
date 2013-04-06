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
package org.kuali.kra.service;

import org.kuali.kra.award.AwardForm;

/**
 * This is the Award Sponsor Term Interface.
 */
public interface AwardSponsorTermsService {

    /**
     * 
     * This method prepares the AwardSponsorTerm and related objects for the display of UI.
     * This should get called everytime Payment, Reports and Terms page is loaded.
     * 
     * @param awardForm
     */
    void doPreparations(AwardForm awardForm);
    
}
