package org.dspace.orm.entity;

import org.springframework.roo.addon.dbre.RooDbManaged;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(versionField = "", table = "bi_4_dmap", schema = "public")
@RooDbManaged(automaticallyDelete = true)
public class Bi4Dmap {
}
