package vn.vnpt.ssdc.ucs.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "IxnAttributeMetaData")
public class IxnAttributeMetaData {

    @Id
    @Column(name="Id")
    private String id;

    @Column(name="MappingColumnName")
    private String mappingColumnName;

    @Column(name="TheName")
    private String theName;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getMappingColumnName() {
        return mappingColumnName;
    }

    public void setMappingColumnName(String mappingColumnName) {
        this.mappingColumnName = mappingColumnName;
    }

    public String getTheName() {
        return theName;
    }

    public void setTheName(String theName) {
        this.theName = theName;
    }
}
