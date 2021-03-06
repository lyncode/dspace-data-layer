// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.dspace.orm.entity;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.dspace.orm.entity.Bitstream;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Bitstream_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Bitstream.entityManager;
    
    public static final EntityManager Bitstream.entityManager() {
        EntityManager em = new Bitstream().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Bitstream.countBitstreams() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Bitstream o", Long.class).getSingleResult();
    }
    
    public static List<Bitstream> Bitstream.findAllBitstreams() {
        return entityManager().createQuery("SELECT o FROM Bitstream o", Bitstream.class).getResultList();
    }
    
    public static Bitstream Bitstream.findBitstream(Integer bitstreamId) {
        if (bitstreamId == null) return null;
        return entityManager().find(Bitstream.class, bitstreamId);
    }
    
    public static List<Bitstream> Bitstream.findBitstreamEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Bitstream o", Bitstream.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Bitstream.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Bitstream.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Bitstream attached = Bitstream.findBitstream(this.bitstreamId);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Bitstream.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Bitstream.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Bitstream Bitstream.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Bitstream merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
