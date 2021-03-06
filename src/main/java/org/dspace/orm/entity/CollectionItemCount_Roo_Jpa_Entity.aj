// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.dspace.orm.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import org.dspace.orm.entity.CollectionItemCount;

privileged aspect CollectionItemCount_Roo_Jpa_Entity {
    
    declare @type: CollectionItemCount: @Entity;
    
    declare @type: CollectionItemCount: @Table(schema = "public", name = "collection_item_count");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "collection_id")
    private Integer CollectionItemCount.collectionId;
    
    public Integer CollectionItemCount.getCollectionId() {
        return this.collectionId;
    }
    
    public void CollectionItemCount.setCollectionId(Integer id) {
        this.collectionId = id;
    }
    
}
