// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.dspace.orm.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import org.dspace.orm.model.Metadataschemaregistry;

privileged aspect Metadataschemaregistry_Roo_Jpa_Entity {
    
    declare @type: Metadataschemaregistry: @Entity;
    
    declare @type: Metadataschemaregistry: @Table(schema = "public", name = "metadataschemaregistry");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "metadata_schema_id")
    private Integer Metadataschemaregistry.metadataSchemaId;
    
    public Integer Metadataschemaregistry.getMetadataSchemaId() {
        return this.metadataSchemaId;
    }
    
    public void Metadataschemaregistry.setMetadataSchemaId(Integer id) {
        this.metadataSchemaId = id;
    }
    
}