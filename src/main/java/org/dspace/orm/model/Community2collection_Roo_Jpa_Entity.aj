// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.dspace.orm.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import org.dspace.orm.model.Community2collection;

privileged aspect Community2collection_Roo_Jpa_Entity {
    
    declare @type: Community2collection: @Entity;
    
    declare @type: Community2collection: @Table(schema = "public", name = "community2collection");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Integer Community2collection.id;
    
    public Integer Community2collection.getId() {
        return this.id;
    }
    
    public void Community2collection.setId(Integer id) {
        this.id = id;
    }
    
}
