// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.dspace.orm.entity;

import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import org.dspace.orm.entity.Collection;
import org.dspace.orm.entity.Collection2item;
import org.dspace.orm.entity.Item;

privileged aspect Collection2item_Roo_DbManaged {
    
    @ManyToOne
    @JoinColumn(name = "collection_id", referencedColumnName = "collection_id")
    private Collection Collection2item.collectionId;
    
    @ManyToOne
    @JoinColumn(name = "item_id", referencedColumnName = "item_id")
    private Item Collection2item.itemId;
    
    public Collection Collection2item.getCollectionId() {
        return collectionId;
    }
    
    public void Collection2item.setCollectionId(Collection collectionId) {
        this.collectionId = collectionId;
    }
    
    public Item Collection2item.getItemId() {
        return itemId;
    }
    
    public void Collection2item.setItemId(Item itemId) {
        this.itemId = itemId;
    }
    
}
