// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.dspace.orm.entity;

import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import org.dspace.orm.entity.Epersongroup;
import org.dspace.orm.entity.Group2group;

privileged aspect Group2group_Roo_DbManaged {
    
    @ManyToOne
    @JoinColumn(name = "parent_id", referencedColumnName = "eperson_group_id")
    private Epersongroup Group2group.parentId;
    
    @ManyToOne
    @JoinColumn(name = "child_id", referencedColumnName = "eperson_group_id")
    private Epersongroup Group2group.childId;
    
    public Epersongroup Group2group.getParentId() {
        return parentId;
    }
    
    public void Group2group.setParentId(Epersongroup parentId) {
        this.parentId = parentId;
    }
    
    public Epersongroup Group2group.getChildId() {
        return childId;
    }
    
    public void Group2group.setChildId(Epersongroup childId) {
        this.childId = childId;
    }
    
}
