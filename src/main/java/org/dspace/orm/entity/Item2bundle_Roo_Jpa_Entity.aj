// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.dspace.orm.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import org.dspace.orm.entity.Item2bundle;

privileged aspect Item2bundle_Roo_Jpa_Entity {
    
    declare @type: Item2bundle: @Entity;
    
    declare @type: Item2bundle: @Table(schema = "public", name = "item2bundle");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Integer Item2bundle.id;
    
    public Integer Item2bundle.getId() {
        return this.id;
    }
    
    public void Item2bundle.setId(Integer id) {
        this.id = id;
    }
    
}
