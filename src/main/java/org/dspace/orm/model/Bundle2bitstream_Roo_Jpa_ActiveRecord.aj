// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.dspace.orm.model;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.dspace.orm.model.Bundle2bitstream;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Bundle2bitstream_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Bundle2bitstream.entityManager;
    
    public static final EntityManager Bundle2bitstream.entityManager() {
        EntityManager em = new Bundle2bitstream().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Bundle2bitstream.countBundle2bitstreams() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Bundle2bitstream o", Long.class).getSingleResult();
    }
    
    public static List<Bundle2bitstream> Bundle2bitstream.findAllBundle2bitstreams() {
        return entityManager().createQuery("SELECT o FROM Bundle2bitstream o", Bundle2bitstream.class).getResultList();
    }
    
    public static Bundle2bitstream Bundle2bitstream.findBundle2bitstream(Integer id) {
        if (id == null) return null;
        return entityManager().find(Bundle2bitstream.class, id);
    }
    
    public static List<Bundle2bitstream> Bundle2bitstream.findBundle2bitstreamEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Bundle2bitstream o", Bundle2bitstream.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Bundle2bitstream.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Bundle2bitstream.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Bundle2bitstream attached = Bundle2bitstream.findBundle2bitstream(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Bundle2bitstream.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Bundle2bitstream.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Bundle2bitstream Bundle2bitstream.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Bundle2bitstream merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
