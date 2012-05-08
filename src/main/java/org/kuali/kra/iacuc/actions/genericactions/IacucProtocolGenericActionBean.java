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
package org.kuali.kra.iacuc.actions.genericactions;

import java.io.Serializable;
import java.sql.Date;

import org.kuali.kra.iacuc.actions.IacucActionHelper;
import org.kuali.kra.iacuc.actions.IacucProtocolActionBean;

/**
 * This class is really just a "form" for generic actions.
 */
//TODO public class ProtocolGenericActionBean extends ProtocolActionBean implements ProtocolOnlineReviewCommentable, Serializable {
public class IacucProtocolGenericActionBean extends IacucProtocolActionBean implements Serializable {

    private static final long serialVersionUID = 1098390205989217539L;
    
    private String comments = "";
    private Date actionDate = new Date(System.currentTimeMillis());
    
    private String errorPropertyKey;
    
//TODO    private ReviewCommentsBean reviewCommentsBean;
//TODO    private ReviewAttachmentsBean reviewAttachmentsBean;
    
    /**
     * Constructs a ProtocolGenericActionBean.
     * @param actionHelper Reference back to the action helper for this bean
     */
    public IacucProtocolGenericActionBean(IacucActionHelper actionHelper, String errorPropertyKey) {
        super(actionHelper);
        
        this.errorPropertyKey = errorPropertyKey;
//TODO        reviewCommentsBean = new ReviewCommentsBean(errorPropertyKey);
//TODO        reviewAttachmentsBean = new ReviewAttachmentsBean(errorPropertyKey);
    }

    public String getComments() {
        return comments;
    }
    
    public void setComments(String comments) {
        this.comments = comments;
    }
    
    public Date getActionDate() {
        return actionDate;
    }
    
    public void setActionDate(Date actionDate) {
        this.actionDate = actionDate;
    }
    
    public String getErrorPropertyKey() {
        return errorPropertyKey;
    }

//TODO    public ReviewCommentsBean getReviewCommentsBean() {
//        return reviewCommentsBean;
//    }
//
//    public ReviewAttachmentsBean getReviewAttachmentsBean() {
//        return reviewAttachmentsBean;
//    }
//
//    public void setReviewAttachmentsBean(ReviewAttachmentsBean reviewAttachmentsBean) {
//        this.reviewAttachmentsBean = reviewAttachmentsBean;
//    }
    
}