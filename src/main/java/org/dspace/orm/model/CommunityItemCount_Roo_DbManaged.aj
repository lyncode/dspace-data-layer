// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.dspace.orm.model;

import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import org.dspace.orm.model.Community;
import org.dspace.orm.model.CommunityItemCount;

privileged aspect CommunityItemCount_Roo_DbManaged {
    
    @OneToOne
    @JoinColumn(name = "community_id", nullable = false, insertable = false, updatable = false)
    private Community CommunityItemCount.community;
    
    @Column(name = "count")
    private Integer CommunityItemCount.count;
    
    public Community CommunityItemCount.getCommunity() {
        return community;
    }
    
    public void CommunityItemCount.setCommunity(Community community) {
        this.community = community;
    }
    
    public Integer CommunityItemCount.getCount() {
        return count;
    }
    
    public void CommunityItemCount.setCount(Integer count) {
        this.count = count;
    }
    
}