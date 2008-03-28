<%--
 Copyright 2005-2006 The Kuali Foundation.

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

<%@ attribute name="periodNum" required="true"%>

<c:set var="budgetModularAttributes" value="${DataDictionary.BudgetModular.attributes}" />
<c:set var="budgetModularIdcAttributes" value="${DataDictionary.BudgetModularIdc.attributes}" />

<c:choose>
	<c:when test="${periodNum > 0}">
		<c:set var="periodDisplay" value="true"/>
		<c:set var="periodLabel" value="Period ${periodNum}"/>
    </c:when>
    <c:otherwise>
    	<c:set var="periodDisplay" value="false"/>
    	<c:set var="periodLabel" value="Project"/>
    </c:otherwise>
</c:choose>

<kul:tabTop tabTitle="Modular Budget Overview (${periodLabel})" defaultOpen="true">
	<div class="tab-container" align="center">
   		<div class="h2-container">
   			<span class="subhead-left"><h2>Modular Budget Overview (${periodLabel})</h2></span>
   			<span class="subhead-right"><kul:help businessObjectClassName="fillMeIn" altText="help"/></span>
       	</div>
        <table cellpadding="0" cellspacing="0" summary="Overview Breakdown">
            <tr>
              	<th width="35%"><div align="right">${periodLabel} Start Date:</div></th>
              	<td>
              		<c:choose>
              			<c:when test="${periodNum > 0}">
              				<bean:write name="KualiForm" property="document.budgetPeriod[${periodNum - 1}].startDate"/>
              			</c:when>
              			<c:otherwise>
              				${KualiForm.document.proposal.requestedStartDateInitial}
              			</c:otherwise>
              		</c:choose>
              	</td>
              	<th>
              		<c:choose>
              			<c:when test="${periodNum > 0}">
              				<div align="right">${periodLabel} Total Requested Cost:</div>
              			</c:when>
              			<c:otherwise>
              				&nbsp;
              			</c:otherwise>
              		</c:choose>
              	</th>
              	<td>
              		<c:choose>
              			<c:when test="${periodNum > 0}">
              				$ <bean:write name="KualiForm" property="document.budgetPeriod[${periodNum - 1}].budgetModular.totalRequestedCost"/>
              			</c:when>
              			<c:otherwise>
              				&nbsp;
              			</c:otherwise>
              		</c:choose>
              	</td>
            </tr>
            <tr>
              	<th><div align="right"><label for="end date">${periodLabel} End Date:</label></div></th>
              	<td>
              		<c:choose>
              			<c:when test="${periodNum > 0}">
              				<bean:write name="KualiForm" property="document.budgetPeriod[${periodNum - 1}].endDate"/>
              			</c:when>
              			<c:otherwise>
              				${KualiForm.document.proposal.requestedEndDateInitial}
              			</c:otherwise>
              		</c:choose>
              	</td>
              	<th><div align="right">Project Total Requested Cost:</div></th>
              	<td>$ ${KualiForm.budgetModularSummary.totalRequestedCost}</td>
            </tr>
    	</table>
    </div>
</kul:tabTop>

<kul:tab tabTitle="Direct Cost" defaultOpen="false">
	<div class="tab-container" align="center">
   		<div class="h2-container">
   			<span class="subhead-left"><h2>Direct Cost</h2></span>
   			<span class="subhead-right"><kul:help businessObjectClassName="fillMeIn" altText="help"/></span>
       	</div>
		<table cellpadding=0 cellspacing="0" summary="Direct Cost Breakdown">
            <tr>
              	<th width="35%"><div align="right">Direct Cost Less Consortium F&amp;A: </div></th>
              	<td>
              		<c:choose>
              			<c:when test="${periodNum > 0}">
              				$ <kul:htmlControlAttribute property="document.budgetPeriod[${periodNum - 1}].budgetModular.directCostLessConsortiumFna" attributeEntry="${budgetModularAttributes.directCostLessConsortiumFna}" />
              			</c:when>
              			<c:otherwise>
              				$ ${KualiForm.budgetModularSummary.directCostLessConsortiumFna}
              			</c:otherwise>
              		</c:choose>
              	</td>
            </tr>
            <tr>
              	<th><div align="right"><label for="label2">Consortium F&amp;A:</label></div></th>
				<td>
                	<c:choose>
              			<c:when test="${periodNum > 0}">
              				$ <kul:htmlControlAttribute property="document.budgetPeriod[${periodNum - 1}].budgetModular.consortiumFna" attributeEntry="${budgetModularAttributes.consortiumFna}" />
              			</c:when>
              			<c:otherwise>
              				$ ${KualiForm.budgetModularSummary.consortiumFna}
              			</c:otherwise>
              		</c:choose>
                </td>
            </tr>
            <tr>
              	<th><div align="right">&nbsp;Total Direct Cost:</div></th>
              	<td>
              		<c:choose>
              			<c:when test="${periodNum > 0}">
              				$ <bean:write name="KualiForm" property="document.budgetPeriod[${periodNum - 1}].budgetModular.totalDirectCost"/>
              			</c:when>
              			<c:otherwise>
              				$ ${KualiForm.budgetModularSummary.totalDirectCost}
              			</c:otherwise>
              		</c:choose>
              	</td>
            </tr>
    	</table>
   	</div>
</kul:tab>

<kul:tab tabTitle="F&A" defaultOpen="false">
	<div class="tab-container" align="center">
   		<div class="h2-container">
   			<span class="subhead-left"><h2>F&A</h2></span>
   			<span class="subhead-right"><kul:help businessObjectClassName="fillMeIn" altText="help"/></span>
       	</div>
		<table align="center" border="0" cellpadding="2" cellspacing="0" width="98%">
        	<tbody>
             	<tr align="center" valign="top">
               		<th>&nbsp;</th>
               		<th>Unrecovered F&amp;A Rate Type</th>
               		<th>IDC Rate</th>
               		<th>IDC Base</th>
               		<th>Funds Requested</th>
               		<c:if test="${periodDisplay}"><th>Actions</th></c:if>
             	</tr>
             	<c:if test="${periodNum > 0}">
	             	<tr>
	               		<th class="infoline"><div align="center">Add:</div></th>
	            		<td nowrap class="infoline">
	            			<div align="center">
	            				<kul:htmlControlAttribute property="newBudgetModularIdc.description" attributeEntry="${budgetModularIdcAttributes.description}"/>
	              			</div>
	              		</td>
	            		<td class="infoline">
	            			<div align="center">
	            				<kul:htmlControlAttribute property="newBudgetModularIdc.idcRate" attributeEntry="${budgetModularIdcAttributes.idcRate}"/> %
	              			</div>
	              		</td>
	           	 		<td nowrap class="infoline">
	           	 			<div align="center">
	           	 				$ <kul:htmlControlAttribute property="newBudgetModularIdc.idcBase" attributeEntry="${budgetModularIdcAttributes.idcBase}"/>
	              			</div>
	              		</td>
	            			<td nowrap class="infoline">
	              			<div align="right">
	              				&nbsp;
	                		</div>
	                	</td>
	                	<c:if test="${periodDisplay}">
	                		<td class="infoline">
	                			<div align=center>
	                				<html:image property="methodToCall.add" src='${ConfigProperties.kra.externalizable.images.url}tinybutton-add1.gif' />
	                			</div>
	                		</td>
	                	</c:if>
	             	</tr>
	            </c:if>
             	
            	<c:choose>
            		<c:when test="${periodNum > 0}">
            			<c:forEach var="budgetPeriod" items="${KualiForm.document.budgetPeriods}" varStatus="periodStatus">
            				<c:if test="${periodStatus.index + 1 == periodNum}">
            					<c:forEach var="budgetModularIdc" items="${budgetPeriod.budgetModular.budgetModularIdcs}" varStatus="idcStatus">
            						<tr>
	            						<th class="infoline"><div align="center">${idcStatus.index + 1}</div></th>
					            		<td nowrap class="infoline">
					            			<div align="center">
					            				<kul:htmlControlAttribute property="document.budgetPeriod[${periodStatus.index}].budgetModular.budgetModularIdc[${idcStatus.index}].description" attributeEntry="${budgetModularIdcAttributes.description}"/>
					              			</div>
					              		</td>
					            		<td class="infoline">
					            			<div align="center">
					            				<kul:htmlControlAttribute property="document.budgetPeriod[${periodStatus.index}].budgetModular.budgetModularIdc[${idcStatus.index}].idcRate" attributeEntry="${budgetModularIdcAttributes.idcRate}"/> %
					              			</div>
					              		</td>
						           	 	<td nowrap class="infoline">
						           	 		<div align="center">
						           	 			$ <kul:htmlControlAttribute property="document.budgetPeriod[${periodStatus.index}].budgetModular.budgetModularIdc[${idcStatus.index}].idcBase" attributeEntry="${budgetModularIdcAttributes.idcBase}"/>
						              		</div>
						              	</td>
						            	<td nowrap class="infoline">
						              		<div align="right">
						              			$ <kul:htmlControlAttribute property="document.budgetPeriod[${periodStatus.index}].budgetModular.budgetModularIdc[${idcStatus.index}].fundsRequested" attributeEntry="${budgetModularIdcAttributes.fundsRequested}" readOnly="true"/>
						                	</div>
						                </td>
						                <td class="infoline">
						                	<div align=center>
						                		<html:image property="methodToCall.delete.line${idcStatus.index}.x" src='${ConfigProperties.kra.externalizable.images.url}tinybutton-delete1.gif' />
						                	</div>
						                </td>
				             		</tr>
            					</c:forEach>
            				</c:if>
            			</c:forEach>
					</c:when>
					<c:otherwise>
						<c:forEach var="budgetModularIdc" items="${KualiForm.budgetModularSummary.budgetModularIdcs}" varStatus="status">
          					<tr>
           						<th class="infoline"><div align="center">${status.index + 1}</div></th>
			            		<td nowrap class="infoline">
			            			<div align="center">
			            				${budgetModularIdc.rateClass.description}
			              			</div>
			              		</td>
			            		<td class="infoline">
			            			<div align="center">
			            				${budgetModularIdc.idcRate} %
			              			</div>
			              		</td>
				           	 	<td nowrap class="infoline">
				           	 		<div align="center">
				           	 			$ ${budgetModularIdc.idcBase}
				              		</div>
				              	</td>
				            	<td nowrap class="infoline">
				              		<div align="right">
				              			$ ${budgetModularIdc.fundsRequested}
				                	</div>
				                </td>
		             		</tr>
            			</c:forEach>
					</c:otherwise>
				</c:choose>
            	<tr>
              		<th valign="top" class="">&nbsp;</th>
              		<td colspan="3" class="infoline"><div align="right"><strong>Total:</strong></div></td>
              		<td class="infoline">
              			<div align="right">
              				<c:choose>
              					<c:when test="${periodNum > 0}">
              						<strong>$ <bean:write name="KualiForm" property="document.budgetPeriod[${periodNum - 1}].budgetModular.totalFnaRequested"/> </strong>
              					</c:when>
              					<c:otherwise>
              						$ ${KualiForm.budgetModularSummary.totalFnaRequested}
              					</c:otherwise>
              				</c:choose>
              			</div>
              		</td>
              		<c:if test="${periodDisplay}">
						<td class="infoline">
              				<div align="center">
              					<html:image property="methodToCall.recalculate" src='${ConfigProperties.kra.externalizable.images.url}tinybutton-recalculate.gif' />
              				</div>
              			</td>
              		</c:if>
            	</tr>
			</tbody>
         </table>
   	</div>
</kul:tab>
	
<kul:panelFooter />