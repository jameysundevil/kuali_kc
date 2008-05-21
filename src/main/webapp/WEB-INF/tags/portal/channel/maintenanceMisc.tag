<%--
 Copyright 2006 The Kuali Foundation.
 
 Licensed under the Educational Community License, Version 1.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at
 
 http://www.opensource.org/licenses/ecl1.php
 
 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
--%>
<%@ include file="/WEB-INF/jsp/kraTldHeader.jsp"%>

<channel:portalChannelTop channelTitle="Miscellaneous" />
<div class="body">
  <ul class="chan">
    <li>Argument Values</li>
    <li>Closeout Type</li>
    <li><portal:portalLink displayTitle="true" title="Country" url="kr/lookup.do?methodToCall=start&businessObjectClassName=org.kuali.kra.bo.Country&docFormKey=88888888&returnLocation=${ConfigProperties.application.url}/portal.do&hideReturnLink=true" /></li>
    <li>EDI Enabled Sponsors</li>
    <li>Investigators Credit Type</li>
    <li>Module Names</li>
    <li>Negotiation Activity Type</li>
    <li>Negotiation Status</li>
    <li>Organization Type</li>
    <li>Rule Functions</li>
    <li>Rule Functions Argument</li>
    <li>Rule Variables</li>
    <li>School Code</li>
    <li><portal:portalLink displayTitle="true" title="Sponsor" url="kr/lookup.do?methodToCall=start&businessObjectClassName=org.kuali.kra.bo.Sponsor&docFormKey=88888888&returnLocation=${ConfigProperties.application.url}/portal.do&hideReturnLink=true" /></li>
    <li>Sponsor Contact Type</li>
    <li>Sponsor Forms</li>
    <li>Sponsor Hierarchy</li>
    <li><portal:portalLink displayTitle="true" title="Sponsor Type" url="kr/lookup.do?methodToCall=start&businessObjectClassName=org.kuali.kra.bo.SponsorType&docFormKey=88888888&returnLocation=${ConfigProperties.application.url}/portal.do&hideReturnLink=true" /></li>
    <li><portal:portalLink displayTitle="true" title="State" url="kr/lookup.do?methodToCall=start&businessObjectClassName=org.kuali.kra.bo.State&docFormKey=88888888&returnLocation=${ConfigProperties.application.url}/portal.do&hideReturnLink=true" /></li>
    <li>Sub-Contract Status</li>
    <li>Training</li>
    <li>User Preference Variables</li>
    <li>Unit Administrator Type</li>
    <li><portal:portalLink displayTitle="true" title="Unit Hierarchy" url="unitHierarchy.do" /></li>
    <li>Valid Rates</li>
  </ul>
</div>
<channel:portalChannelBottom />