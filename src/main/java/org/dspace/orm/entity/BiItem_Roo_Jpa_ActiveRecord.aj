// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.dspace.orm.entity;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.dspace.orm.entity.BiItem;
import org.springframework.transaction.annotation.Transactional;

privileged aspect BiItem_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager BiItem.entityManager;
    
    public static final EntityManager BiItem.entityManager() {
        EntityManager em = new BiItem().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long BiItem.countBiItems() {
        return entityManager().createQuery("SELECT COUNT(o) FROM BiItem o", Long.class).getSingleResult();
    }
    
    public static List<BiItem> BiItem.findAllBiItems() {
        return entityManager().createQuery("SELECT o FROM BiItem o", BiItem.class).getResultList();
    }
    
    public static BiItem BiItem.findBiItem(Integer id) {
        if (id == null) return null;
        return entityManager().find(BiItem.class, id);
    }
    
    public static List<BiItem> BiItem.findBiItemEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM BiItem o", BiItem.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void BiItem.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void BiItem.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            BiItem attached = BiItem.findBiItem(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void BiItem.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void BiItem.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public BiItem BiItem.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        BiItem merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
