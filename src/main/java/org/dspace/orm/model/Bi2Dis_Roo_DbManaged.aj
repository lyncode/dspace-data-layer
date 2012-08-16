// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.dspace.orm.model;

import java.util.Set;
import javax.persistence.Column;
import javax.persistence.OneToMany;
import org.dspace.orm.model.Bi2Dis;
import org.dspace.orm.model.Bi2Dmap;

privileged aspect Bi2Dis_Roo_DbManaged {
    
    @OneToMany(mappedBy = "distinctId")
    private Set<Bi2Dmap> Bi2Dis.bi2Dmaps;
    
    @Column(name = "authority", length = 100)
    private String Bi2Dis.authority;
    
    @Column(name = "value")
    private String Bi2Dis.value;
    
    @Column(name = "sort_value")
    private String Bi2Dis.sortValue;
    
    public Set<Bi2Dmap> Bi2Dis.getBi2Dmaps() {
        return bi2Dmaps;
    }
    
    public void Bi2Dis.setBi2Dmaps(Set<Bi2Dmap> bi2Dmaps) {
        this.bi2Dmaps = bi2Dmaps;
    }
    
    public String Bi2Dis.getAuthority() {
        return authority;
    }
    
    public void Bi2Dis.setAuthority(String authority) {
        this.authority = authority;
    }
    
    public String Bi2Dis.getValue() {
        return value;
    }
    
    public void Bi2Dis.setValue(String value) {
        this.value = value;
    }
    
    public String Bi2Dis.getSortValue() {
        return sortValue;
    }
    
    public void Bi2Dis.setSortValue(String sortValue) {
        this.sortValue = sortValue;
    }
    
}
