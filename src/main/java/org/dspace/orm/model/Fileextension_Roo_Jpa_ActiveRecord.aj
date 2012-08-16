// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.dspace.orm.model;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.dspace.orm.model.Fileextension;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Fileextension_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Fileextension.entityManager;
    
    public static final EntityManager Fileextension.entityManager() {
        EntityManager em = new Fileextension().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Fileextension.countFileextensions() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Fileextension o", Long.class).getSingleResult();
    }
    
    public static List<Fileextension> Fileextension.findAllFileextensions() {
        return entityManager().createQuery("SELECT o FROM Fileextension o", Fileextension.class).getResultList();
    }
    
    public static Fileextension Fileextension.findFileextension(Integer fileExtensionId) {
        if (fileExtensionId == null) return null;
        return entityManager().find(Fileextension.class, fileExtensionId);
    }
    
    public static List<Fileextension> Fileextension.findFileextensionEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Fileextension o", Fileextension.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Fileextension.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Fileextension.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Fileextension attached = Fileextension.findFileextension(this.fileExtensionId);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Fileextension.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Fileextension.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Fileextension Fileextension.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Fileextension merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
