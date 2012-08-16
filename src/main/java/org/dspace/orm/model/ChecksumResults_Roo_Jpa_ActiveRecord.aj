// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.dspace.orm.model;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.dspace.orm.model.ChecksumResults;
import org.springframework.transaction.annotation.Transactional;

privileged aspect ChecksumResults_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager ChecksumResults.entityManager;
    
    public static final EntityManager ChecksumResults.entityManager() {
        EntityManager em = new ChecksumResults().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long ChecksumResults.countChecksumResultses() {
        return entityManager().createQuery("SELECT COUNT(o) FROM ChecksumResults o", Long.class).getSingleResult();
    }
    
    public static List<ChecksumResults> ChecksumResults.findAllChecksumResultses() {
        return entityManager().createQuery("SELECT o FROM ChecksumResults o", ChecksumResults.class).getResultList();
    }
    
    public static ChecksumResults ChecksumResults.findChecksumResults(String resultCode) {
        if (resultCode == null || resultCode.length() == 0) return null;
        return entityManager().find(ChecksumResults.class, resultCode);
    }
    
    public static List<ChecksumResults> ChecksumResults.findChecksumResultsEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM ChecksumResults o", ChecksumResults.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void ChecksumResults.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void ChecksumResults.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            ChecksumResults attached = ChecksumResults.findChecksumResults(this.resultCode);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void ChecksumResults.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void ChecksumResults.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public ChecksumResults ChecksumResults.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        ChecksumResults merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}