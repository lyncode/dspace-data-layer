// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.dspace.orm.model;

import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import org.dspace.orm.model.Collection;
import org.dspace.orm.model.Community;
import org.dspace.orm.model.Community2collection;

privileged aspect Community2collection_Roo_DbManaged {
    
    @ManyToOne
    @JoinColumn(name = "collection_id", referencedColumnName = "collection_id")
    private Collection Community2collection.collectionId;
    
    @ManyToOne
    @JoinColumn(name = "community_id", referencedColumnName = "community_id")
    private Community Community2collection.communityId;
    
    public Collection Community2collection.getCollectionId() {
        return collectionId;
    }
    
    public void Community2collection.setCollectionId(Collection collectionId) {
        this.collectionId = collectionId;
    }
    
    public Community Community2collection.getCommunityId() {
        return communityId;
    }
    
    public void Community2collection.setCommunityId(Community communityId) {
        this.communityId = communityId;
    }
    
}
