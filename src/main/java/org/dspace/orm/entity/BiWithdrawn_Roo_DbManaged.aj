// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.dspace.orm.entity;

import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import org.dspace.orm.entity.BiWithdrawn;
import org.dspace.orm.entity.Item;

privileged aspect BiWithdrawn_Roo_DbManaged {
    
    @ManyToOne
    @JoinColumn(name = "item_id", referencedColumnName = "item_id")
    private Item BiWithdrawn.itemId;
    
    @Column(name = "sort_1")
    private String BiWithdrawn.sort1;
    
    @Column(name = "sort_3")
    private String BiWithdrawn.sort3;
    
    @Column(name = "sort_2")
    private String BiWithdrawn.sort2;
    
    public Item BiWithdrawn.getItemId() {
        return itemId;
    }
    
    public void BiWithdrawn.setItemId(Item itemId) {
        this.itemId = itemId;
    }
    
    public String BiWithdrawn.getSort1() {
        return sort1;
    }
    
    public void BiWithdrawn.setSort1(String sort1) {
        this.sort1 = sort1;
    }
    
    public String BiWithdrawn.getSort3() {
        return sort3;
    }
    
    public void BiWithdrawn.setSort3(String sort3) {
        this.sort3 = sort3;
    }
    
    public String BiWithdrawn.getSort2() {
        return sort2;
    }
    
    public void BiWithdrawn.setSort2(String sort2) {
        this.sort2 = sort2;
    }
    
}
