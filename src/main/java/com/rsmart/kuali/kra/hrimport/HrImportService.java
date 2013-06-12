package com.rsmart.kuali.kra.hrimport;

import static org.kuali.kra.logging.BufferedLogger.*;

import org.kuali.rice.kim.api.identity.IdentityService;
import org.kuali.rice.kim.impl.identity.entity.EntityBo;
import org.kuali.rice.kim.impl.identity.principal.PrincipalBo;
import org.kuali.rice.kim.impl.identity.type.EntityTypeContactInfoBo;
import org.kuali.rice.krad.service.BusinessObjectService;

public class HrImportService {
	protected BusinessObjectService boService;
	protected IdentityService idService;
	
  public BusinessObjectService getBusinessObjectService() {
    return boService;
  }
  public void setBusinessObjectService(BusinessObjectService boService) {
    this.boService = boService;
  }
  public IdentityService getIdentityService() {
    return idService;
  }
  public void setIdentityService(IdentityService idService) {
    this.idService = idService;
  }
  
  protected void delete(final EntityBo entity) {
    final BusinessObjectService service = getBusinessObjectService();
    
    service.delete(entity.getPrincipals());
    service.delete(entity.getNames());
    service.delete(entity.getAffiliations());
    service.delete(entity.getEmploymentInformation());
    
    for (final EntityTypeContactInfoBo contactInfo : entity.getEntityTypeContactInfos()) {
        service.delete(contactInfo.getPhoneNumbers());
        service.delete(contactInfo.getEmailAddresses());
        contactInfo.refresh();
        contactInfo.refreshNonUpdateableReferences();
    }
    service.delete(entity.getEntityTypeContactInfos());
    entity.refresh();
    entity.refreshNonUpdateableReferences();        
    service.delete(entity);
  }

  public void updateEntity () {
    new Thread(new Runnable() {

      @Override
      public void run() {
        try {
          Thread.sleep(120 * 1000);
        } catch (InterruptedException ie) {
          error("sleep interrupted", ie);
        }
        
        info ("updateEntity called");
        final BusinessObjectService service = getBusinessObjectService();
        final PrincipalBo principal = new PrincipalBo();
        
        EntityBo entity = EntityBo.from(getIdentityService().getEntity("12345"));

        boolean isValid = true;
        if (entity != null) { // Did not find an existing entity
            // debug("Couldn't find an existing BO. Creating a new one.");
            try {
                entity.refresh();
                entity.refreshNonUpdateableReferences();
                delete(entity);
            }
            catch (Exception e) {
                // Ignore exceptions trying to delete
            }
        }
        
        entity = new EntityBo();

        entity.setId("12345");
        principal.setPrincipalId("000001");
        principal.setPrincipalName("johndoe");
        principal.setEntityId(entity.getId());
        principal.setActive(true);
        
        entity.getPrincipals().add(principal);
        entity.setActive(true);
        
        service.save(entity);
        info ("updateEntity finished");     }
      
    }).run();

  }
}
