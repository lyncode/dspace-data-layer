// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.dspace.orm.model;

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.dspace.orm.model.Eperson;
import org.dspace.orm.model.Epersongroup;
import org.dspace.orm.model.Resourcepolicy;
import org.springframework.format.annotation.DateTimeFormat;

privileged aspect Resourcepolicy_Roo_DbManaged {
    
    @ManyToOne
    @JoinColumn(name = "eperson_id", referencedColumnName = "eperson_id")
    private Eperson Resourcepolicy.epersonId;
    
    @ManyToOne
    @JoinColumn(name = "epersongroup_id", referencedColumnName = "eperson_group_id")
    private Epersongroup Resourcepolicy.epersongroupId;
    
    @Column(name = "resource_type_id")
    private Integer Resourcepolicy.resourceTypeId;
    
    @Column(name = "resource_id")
    private Integer Resourcepolicy.resourceId;
    
    @Column(name = "action_id")
    private Integer Resourcepolicy.actionId;
    
    @Column(name = "start_date")
    @Temporal(TemporalType.DATE)
    @DateTimeFormat(style = "M-")
    private Date Resourcepolicy.startDate;
    
    @Column(name = "end_date")
    @Temporal(TemporalType.DATE)
    @DateTimeFormat(style = "M-")
    private Date Resourcepolicy.endDate;
    
    public Eperson Resourcepolicy.getEpersonId() {
        return epersonId;
    }
    
    public void Resourcepolicy.setEpersonId(Eperson epersonId) {
        this.epersonId = epersonId;
    }
    
    public Epersongroup Resourcepolicy.getEpersongroupId() {
        return epersongroupId;
    }
    
    public void Resourcepolicy.setEpersongroupId(Epersongroup epersongroupId) {
        this.epersongroupId = epersongroupId;
    }
    
    public Integer Resourcepolicy.getResourceTypeId() {
        return resourceTypeId;
    }
    
    public void Resourcepolicy.setResourceTypeId(Integer resourceTypeId) {
        this.resourceTypeId = resourceTypeId;
    }
    
    public Integer Resourcepolicy.getResourceId() {
        return resourceId;
    }
    
    public void Resourcepolicy.setResourceId(Integer resourceId) {
        this.resourceId = resourceId;
    }
    
    public Integer Resourcepolicy.getActionId() {
        return actionId;
    }
    
    public void Resourcepolicy.setActionId(Integer actionId) {
        this.actionId = actionId;
    }
    
    public Date Resourcepolicy.getStartDate() {
        return startDate;
    }
    
    public void Resourcepolicy.setStartDate(Date startDate) {
        this.startDate = startDate;
    }
    
    public Date Resourcepolicy.getEndDate() {
        return endDate;
    }
    
    public void Resourcepolicy.setEndDate(Date endDate) {
        this.endDate = endDate;
    }
    
}