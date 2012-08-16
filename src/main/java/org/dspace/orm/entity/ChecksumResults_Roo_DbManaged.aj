// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.dspace.orm.entity;

import java.util.Set;
import javax.persistence.Column;
import javax.persistence.OneToMany;
import org.dspace.orm.entity.ChecksumHistory;
import org.dspace.orm.entity.ChecksumResults;
import org.dspace.orm.entity.MostRecentChecksum;

privileged aspect ChecksumResults_Roo_DbManaged {
    
    @OneToMany(mappedBy = "result")
    private Set<ChecksumHistory> ChecksumResults.checksumHistories;
    
    @OneToMany(mappedBy = "result")
    private Set<MostRecentChecksum> ChecksumResults.mostRecentChecksums;
    
    @Column(name = "result_description")
    private String ChecksumResults.resultDescription;
    
    public Set<ChecksumHistory> ChecksumResults.getChecksumHistories() {
        return checksumHistories;
    }
    
    public void ChecksumResults.setChecksumHistories(Set<ChecksumHistory> checksumHistories) {
        this.checksumHistories = checksumHistories;
    }
    
    public Set<MostRecentChecksum> ChecksumResults.getMostRecentChecksums() {
        return mostRecentChecksums;
    }
    
    public void ChecksumResults.setMostRecentChecksums(Set<MostRecentChecksum> mostRecentChecksums) {
        this.mostRecentChecksums = mostRecentChecksums;
    }
    
    public String ChecksumResults.getResultDescription() {
        return resultDescription;
    }
    
    public void ChecksumResults.setResultDescription(String resultDescription) {
        this.resultDescription = resultDescription;
    }
    
}