// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.dspace.orm.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import org.dspace.orm.model.Epersongroup;

privileged aspect Epersongroup_Roo_Jpa_Entity {
    
    declare @type: Epersongroup: @Entity;
    
    declare @type: Epersongroup: @Table(schema = "public", name = "epersongroup");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "eperson_group_id")
    private Integer Epersongroup.epersonGroupId;
    
    public Integer Epersongroup.getEpersonGroupId() {
        return this.epersonGroupId;
    }
    
    public void Epersongroup.setEpersonGroupId(Integer id) {
        this.epersonGroupId = id;
    }
    
}
