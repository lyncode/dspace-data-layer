// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.dspace.orm.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import org.dspace.orm.model.HarvestedCollection;

privileged aspect HarvestedCollection_Roo_Jpa_Entity {
    
    declare @type: HarvestedCollection: @Entity;
    
    declare @type: HarvestedCollection: @Table(schema = "public", name = "harvested_collection");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Integer HarvestedCollection.id;
    
    public Integer HarvestedCollection.getId() {
        return this.id;
    }
    
    public void HarvestedCollection.setId(Integer id) {
        this.id = id;
    }
    
}
