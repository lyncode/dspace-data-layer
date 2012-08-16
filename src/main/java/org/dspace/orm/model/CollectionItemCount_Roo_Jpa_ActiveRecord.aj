// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.dspace.orm.model;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.dspace.orm.model.CollectionItemCount;
import org.springframework.transaction.annotation.Transactional;

privileged aspect CollectionItemCount_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager CollectionItemCount.entityManager;
    
    public static final EntityManager CollectionItemCount.entityManager() {
        EntityManager em = new CollectionItemCount().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long CollectionItemCount.countCollectionItemCounts() {
        return entityManager().createQuery("SELECT COUNT(o) FROM CollectionItemCount o", Long.class).getSingleResult();
    }
    
    public static List<CollectionItemCount> CollectionItemCount.findAllCollectionItemCounts() {
        return entityManager().createQuery("SELECT o FROM CollectionItemCount o", CollectionItemCount.class).getResultList();
    }
    
    public static CollectionItemCount CollectionItemCount.findCollectionItemCount(Integer collectionId) {
        if (collectionId == null) return null;
        return entityManager().find(CollectionItemCount.class, collectionId);
    }
    
    public static List<CollectionItemCount> CollectionItemCount.findCollectionItemCountEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM CollectionItemCount o", CollectionItemCount.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void CollectionItemCount.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void CollectionItemCount.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            CollectionItemCount attached = CollectionItemCount.findCollectionItemCount(this.collectionId);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void CollectionItemCount.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void CollectionItemCount.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public CollectionItemCount CollectionItemCount.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        CollectionItemCount merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
