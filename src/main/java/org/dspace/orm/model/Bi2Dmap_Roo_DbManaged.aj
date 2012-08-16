// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.dspace.orm.model;

import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import org.dspace.orm.model.Bi2Dis;
import org.dspace.orm.model.Bi2Dmap;
import org.dspace.orm.model.Item;

privileged aspect Bi2Dmap_Roo_DbManaged {
    
    @ManyToOne
    @JoinColumn(name = "distinct_id", referencedColumnName = "id")
    private Bi2Dis Bi2Dmap.distinctId;
    
    @ManyToOne
    @JoinColumn(name = "item_id", referencedColumnName = "item_id")
    private Item Bi2Dmap.itemId;
    
    public Bi2Dis Bi2Dmap.getDistinctId() {
        return distinctId;
    }
    
    public void Bi2Dmap.setDistinctId(Bi2Dis distinctId) {
        this.distinctId = distinctId;
    }
    
    public Item Bi2Dmap.getItemId() {
        return itemId;
    }
    
    public void Bi2Dmap.setItemId(Item itemId) {
        this.itemId = itemId;
    }
    
}
