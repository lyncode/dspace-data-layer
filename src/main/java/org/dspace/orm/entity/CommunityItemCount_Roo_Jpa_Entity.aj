// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.dspace.orm.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import org.dspace.orm.entity.CommunityItemCount;

privileged aspect CommunityItemCount_Roo_Jpa_Entity {
    
    declare @type: CommunityItemCount: @Entity;
    
    declare @type: CommunityItemCount: @Table(schema = "public", name = "community_item_count");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "community_id")
    private Integer CommunityItemCount.communityId;
    
    public Integer CommunityItemCount.getCommunityId() {
        return this.communityId;
    }
    
    public void CommunityItemCount.setCommunityId(Integer id) {
        this.communityId = id;
    }
    
}
