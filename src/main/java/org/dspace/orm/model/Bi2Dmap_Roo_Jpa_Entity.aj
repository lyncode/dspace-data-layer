// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.dspace.orm.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import org.dspace.orm.model.Bi2Dmap;

privileged aspect Bi2Dmap_Roo_Jpa_Entity {
    
    declare @type: Bi2Dmap: @Entity;
    
    declare @type: Bi2Dmap: @Table(schema = "public", name = "bi_2_dmap");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "map_id")
    private Integer Bi2Dmap.mapId;
    
    public Integer Bi2Dmap.getMapId() {
        return this.mapId;
    }
    
    public void Bi2Dmap.setMapId(Integer id) {
        this.mapId = id;
    }
    
}