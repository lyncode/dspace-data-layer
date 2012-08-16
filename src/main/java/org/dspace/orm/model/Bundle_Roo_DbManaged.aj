// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.dspace.orm.model;

import java.util.Set;
import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import org.dspace.orm.model.Bitstream;
import org.dspace.orm.model.Bundle;
import org.dspace.orm.model.Bundle2bitstream;
import org.dspace.orm.model.Item2bundle;

privileged aspect Bundle_Roo_DbManaged {
    
    @OneToMany(mappedBy = "bundleId")
    private Set<Bundle2bitstream> Bundle.bundle2bitstreams;
    
    @OneToMany(mappedBy = "bundleId")
    private Set<Item2bundle> Bundle.item2bundles;
    
    @ManyToOne
    @JoinColumn(name = "primary_bitstream_id", referencedColumnName = "bitstream_id")
    private Bitstream Bundle.primaryBitstreamId;
    
    @Column(name = "name", length = 16)
    private String Bundle.name;
    
    public Set<Bundle2bitstream> Bundle.getBundle2bitstreams() {
        return bundle2bitstreams;
    }
    
    public void Bundle.setBundle2bitstreams(Set<Bundle2bitstream> bundle2bitstreams) {
        this.bundle2bitstreams = bundle2bitstreams;
    }
    
    public Set<Item2bundle> Bundle.getItem2bundles() {
        return item2bundles;
    }
    
    public void Bundle.setItem2bundles(Set<Item2bundle> item2bundles) {
        this.item2bundles = item2bundles;
    }
    
    public Bitstream Bundle.getPrimaryBitstreamId() {
        return primaryBitstreamId;
    }
    
    public void Bundle.setPrimaryBitstreamId(Bitstream primaryBitstreamId) {
        this.primaryBitstreamId = primaryBitstreamId;
    }
    
    public String Bundle.getName() {
        return name;
    }
    
    public void Bundle.setName(String name) {
        this.name = name;
    }
    
}