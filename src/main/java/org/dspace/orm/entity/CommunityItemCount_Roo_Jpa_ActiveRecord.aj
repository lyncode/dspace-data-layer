// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.dspace.orm.entity;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.dspace.orm.entity.CommunityItemCount;
import org.springframework.transaction.annotation.Transactional;

privileged aspect CommunityItemCount_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager CommunityItemCount.entityManager;
    
    public static final EntityManager CommunityItemCount.entityManager() {
        EntityManager em = new CommunityItemCount().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long CommunityItemCount.countCommunityItemCounts() {
        return entityManager().createQuery("SELECT COUNT(o) FROM CommunityItemCount o", Long.class).getSingleResult();
    }
    
    public static List<CommunityItemCount> CommunityItemCount.findAllCommunityItemCounts() {
        return entityManager().createQuery("SELECT o FROM CommunityItemCount o", CommunityItemCount.class).getResultList();
    }
    
    public static CommunityItemCount CommunityItemCount.findCommunityItemCount(Integer communityId) {
        if (communityId == null) return null;
        return entityManager().find(CommunityItemCount.class, communityId);
    }
    
    public static List<CommunityItemCount> CommunityItemCount.findCommunityItemCountEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM CommunityItemCount o", CommunityItemCount.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void CommunityItemCount.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void CommunityItemCount.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            CommunityItemCount attached = CommunityItemCount.findCommunityItemCount(this.communityId);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void CommunityItemCount.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void CommunityItemCount.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public CommunityItemCount CommunityItemCount.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        CommunityItemCount merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
