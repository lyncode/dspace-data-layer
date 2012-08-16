// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.dspace.orm.entity;

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.dspace.orm.entity.HarvestedItem;
import org.dspace.orm.entity.Item;
import org.springframework.format.annotation.DateTimeFormat;

privileged aspect HarvestedItem_Roo_DbManaged {
    
    @ManyToOne
    @JoinColumn(name = "item_id", referencedColumnName = "item_id")
    private Item HarvestedItem.itemId;
    
    @Column(name = "last_harvested")
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date HarvestedItem.lastHarvested;
    
    @Column(name = "oai_id")
    private String HarvestedItem.oaiId;
    
    public Item HarvestedItem.getItemId() {
        return itemId;
    }
    
    public void HarvestedItem.setItemId(Item itemId) {
        this.itemId = itemId;
    }
    
    public Date HarvestedItem.getLastHarvested() {
        return lastHarvested;
    }
    
    public void HarvestedItem.setLastHarvested(Date lastHarvested) {
        this.lastHarvested = lastHarvested;
    }
    
    public String HarvestedItem.getOaiId() {
        return oaiId;
    }
    
    public void HarvestedItem.setOaiId(String oaiId) {
        this.oaiId = oaiId;
    }
    
}