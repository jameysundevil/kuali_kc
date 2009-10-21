/*
 * Copyright 2006-2008 The Kuali Foundation
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
package org.kuali.kra.budget.printing.print;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Map;

import javax.xml.transform.Source;

import org.apache.xmlbeans.XmlObject;
import org.kuali.kra.budget.printing.BudgetPrintType;
import org.kuali.kra.document.ResearchDocumentBase;
import org.kuali.kra.printing.PrintingException;
import org.kuali.kra.printing.print.AbstractPrint;
import org.kuali.kra.printing.util.PrintingUtils;

/**
 * This class provides the implementation for printing Budget Total Report. It
 * generates XML that conforms with Salary Report XSD, fetches XSL style-sheets
 * applicable to this XML, returns XML and XSL for any consumer that would use
 * this XML and XSls for any purpose like report generation, PDF streaming etc.
 * 
 */
public class BudgetTotalPrint extends AbstractPrint {

	/**
	 * Fetches the {@link ResearchDocumentBase}
	 * 
	 * @return {@link ResearchDocumentBase} document
	 */
	public ResearchDocumentBase getDocument() {
		return document;
	}

	/**
	 * This method fetches the XSL style-sheets required for transforming the
	 * generated XML into PDF.
	 * 
	 * @return {@link ArrayList}} of {@link Source} XSLs
	 */
	public ArrayList<Source> getXSLT() {
		ArrayList<Source> sourceList = PrintingUtils
				.getXSLTforReport(BudgetPrintType.BUDGET_TOTAL_REPORT
						.getBudgetPrintType());
		return sourceList;
	}

	/**
	 * This method generates the XML that conforms to Salary Report XSD returns
	 * it as {@link InputStream}
	 * 
	 * @return {@link InputStream} of generated XML
	 * @throws PrintingException
	 *             in case of any errors occur during XML generation
	 */
	public Map<String, InputStream> renderXML() throws PrintingException {
		Map<String, InputStream> xmlStreamMap = new LinkedHashMap<String, InputStream>();
		Map<String, XmlObject> xmlObjectMap = getXmlStream().generateXmlStream(
				getDocument(), getReportParameters());
		for (String xmlObjectKey : xmlObjectMap.keySet()) {
			xmlStreamMap.put(xmlObjectKey, xmlObjectMap.get(xmlObjectKey)
					.newInputStream());
		}
		return xmlStreamMap;
	}
}
