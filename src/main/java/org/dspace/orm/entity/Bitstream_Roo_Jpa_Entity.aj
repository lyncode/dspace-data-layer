// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.dspace.orm.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import org.dspace.orm.entity.Bitstream;

privileged aspect Bitstream_Roo_Jpa_Entity {
    
    declare @type: Bitstream: @Entity;
    
    declare @type: Bitstream: @Table(schema = "public", name = "bitstream");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "bitstream_id")
    private Integer Bitstream.bitstreamId;
    
    public Integer Bitstream.getBitstreamId() {
        return this.bitstreamId;
    }
    
    public void Bitstream.setBitstreamId(Integer id) {
        this.bitstreamId = id;
    }
    
}
