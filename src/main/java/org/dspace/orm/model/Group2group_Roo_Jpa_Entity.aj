// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.dspace.orm.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import org.dspace.orm.model.Group2group;

privileged aspect Group2group_Roo_Jpa_Entity {
    
    declare @type: Group2group: @Entity;
    
    declare @type: Group2group: @Table(schema = "public", name = "group2group");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Integer Group2group.id;
    
    public Integer Group2group.getId() {
        return this.id;
    }
    
    public void Group2group.setId(Integer id) {
        this.id = id;
    }
    
}
