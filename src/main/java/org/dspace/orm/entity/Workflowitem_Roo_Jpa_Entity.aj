// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.dspace.orm.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import org.dspace.orm.entity.Workflowitem;

privileged aspect Workflowitem_Roo_Jpa_Entity {
    
    declare @type: Workflowitem: @Entity;
    
    declare @type: Workflowitem: @Table(schema = "public", name = "workflowitem");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "workflow_id")
    private Integer Workflowitem.workflowId;
    
    public Integer Workflowitem.getWorkflowId() {
        return this.workflowId;
    }
    
    public void Workflowitem.setWorkflowId(Integer id) {
        this.workflowId = id;
    }
    
}