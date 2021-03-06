// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.dspace.orm.entity;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.dspace.orm.entity.Community;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Community_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Community.entityManager;
    
    public static final EntityManager Community.entityManager() {
        EntityManager em = new Community().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Community.countCommunitys() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Community o", Long.class).getSingleResult();
    }
    
    public static List<Community> Community.findAllCommunitys() {
        return entityManager().createQuery("SELECT o FROM Community o", Community.class).getResultList();
    }
    
    public static Community Community.findCommunity(Integer communityId) {
        if (communityId == null) return null;
        return entityManager().find(Community.class, communityId);
    }
    
    public static List<Community> Community.findCommunityEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Community o", Community.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Community.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Community.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Community attached = Community.findCommunity(this.communityId);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Community.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Community.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Community Community.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Community merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
