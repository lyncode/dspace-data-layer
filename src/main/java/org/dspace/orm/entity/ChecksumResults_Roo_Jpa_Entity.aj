// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.dspace.orm.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import org.dspace.orm.entity.ChecksumResults;

privileged aspect ChecksumResults_Roo_Jpa_Entity {
    
    declare @type: ChecksumResults: @Entity;
    
    declare @type: ChecksumResults: @Table(schema = "public", name = "checksum_results");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "result_code")
    private String ChecksumResults.resultCode;
    
    public String ChecksumResults.getResultCode() {
        return this.resultCode;
    }
    
    public void ChecksumResults.setResultCode(String id) {
        this.resultCode = id;
    }
    
}
