package vn.vnpt.ssdc.ucs.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Attachment")
public class Attachment {

    @Id
    @Column(name="Id")
    private String id;

    @Column(name="DocumentId")
    private String documentId;

    @Column(name="EntityId")
    private String entityId;

    @Column(name="EntityTypeId")
    private String entityTypeId;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getDocumentId() {
        return documentId;
    }

    public void setDocumentId(String documentId) {
        this.documentId = documentId;
    }

    public String getEntityId() {
        return entityId;
    }

    public void setEntityId(String entityId) {
        this.entityId = entityId;
    }

    public String getEntityTypeId() {
        return entityTypeId;
    }

    public void setEntityTypeId(String entityTypeId) {
        this.entityTypeId = entityTypeId;
    }
}
