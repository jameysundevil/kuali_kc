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
package org.kuali.kra.authorizer;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

import org.kuali.rice.kim.api.KimConstants;
import org.kuali.rice.kim.api.identity.Person;
import org.kuali.rice.kns.document.authorization.MaintenanceDocumentAuthorizerBase;
import org.kuali.rice.krad.util.KRADConstants;

public class TrainingMaintenanceDocumentAuthorizer extends MaintenanceDocumentAuthorizerBase {
    public static final String PERMISSION_MAINTAIN_TRAINING = "Maintain Training";
    public static final String KC_SYS = "KC-SYS";
    
    
    @Override
    public boolean canInitiate(String documentTypeName, Person user) {
        String nameSpaceCode = KRADConstants.KUALI_RICE_SYSTEM_NAMESPACE;
        Map<String, String> permissionDetails = new HashMap<String, String>();
        permissionDetails.put(KimConstants.AttributeConstants.DOCUMENT_TYPE_NAME, documentTypeName);
        
        return getPermissionService().isAuthorized(user.getPrincipalId(), KC_SYS, PERMISSION_MAINTAIN_TRAINING, permissionDetails);
    }
    
    @Override
    public boolean canMaintain(Object dataObject, Person user) {
        boolean retVal = this.isAuthorized(dataObject, KC_SYS,  PERMISSION_MAINTAIN_TRAINING, user.getPrincipalId());
        return retVal;
    }
}
