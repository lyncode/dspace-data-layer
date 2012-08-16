// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.dspace.orm.model;

import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import org.dspace.orm.model.Eperson;
import org.dspace.orm.model.Tasklistitem;
import org.dspace.orm.model.Workflowitem;

privileged aspect Tasklistitem_Roo_DbManaged {
    
    @ManyToOne
    @JoinColumn(name = "eperson_id", referencedColumnName = "eperson_id")
    private Eperson Tasklistitem.epersonId;
    
    @ManyToOne
    @JoinColumn(name = "workflow_id", referencedColumnName = "workflow_id")
    private Workflowitem Tasklistitem.workflowId;
    
    public Eperson Tasklistitem.getEpersonId() {
        return epersonId;
    }
    
    public void Tasklistitem.setEpersonId(Eperson epersonId) {
        this.epersonId = epersonId;
    }
    
    public Workflowitem Tasklistitem.getWorkflowId() {
        return workflowId;
    }
    
    public void Tasklistitem.setWorkflowId(Workflowitem workflowId) {
        this.workflowId = workflowId;
    }
    
}
