// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.dspace.orm.entity;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.dspace.orm.entity.Bi4Dis;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Bi4Dis_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Bi4Dis.entityManager;
    
    public static final EntityManager Bi4Dis.entityManager() {
        EntityManager em = new Bi4Dis().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Bi4Dis.countBi4Dises() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Bi4Dis o", Long.class).getSingleResult();
    }
    
    public static List<Bi4Dis> Bi4Dis.findAllBi4Dises() {
        return entityManager().createQuery("SELECT o FROM Bi4Dis o", Bi4Dis.class).getResultList();
    }
    
    public static Bi4Dis Bi4Dis.findBi4Dis(Integer id) {
        if (id == null) return null;
        return entityManager().find(Bi4Dis.class, id);
    }
    
    public static List<Bi4Dis> Bi4Dis.findBi4DisEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Bi4Dis o", Bi4Dis.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Bi4Dis.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Bi4Dis.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Bi4Dis attached = Bi4Dis.findBi4Dis(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Bi4Dis.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Bi4Dis.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Bi4Dis Bi4Dis.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Bi4Dis merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}