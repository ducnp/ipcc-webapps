package vn.vnpt.ssdc.ucs.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.sql.Blob;

@Entity
@Table(name = "Document")
public class Document {
    @Id
    @Column(name="Id")
    private String id;

    @Column(name="MimeType")
    private String mimeType;

    @Column(name="TheName")
    private String theName;

    @Column(name="TheSize")
    private Integer theSize;

    @Column(name="Content")
    private Blob content;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getMimeType() {
        return mimeType;
    }

    public void setMimeType(String mimeType) {
        this.mimeType = mimeType;
    }

    public String getTheName() {
        return theName;
    }

    public void setTheName(String theName) {
        this.theName = theName;
    }

    public Integer getTheSize() {
        return theSize;
    }

    public void setTheSize(Integer theSize) {
        this.theSize = theSize;
    }

    public Blob getContent() {
        return content;
    }

    public void setContent(Blob content) {
        this.content = content;
    }
}
