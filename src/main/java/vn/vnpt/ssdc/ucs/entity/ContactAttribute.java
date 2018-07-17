package vn.vnpt.ssdc.ucs.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "ContactAttribute")
public class ContactAttribute {

    @Id
    @Column(name="Id")
    private String id;

    @Column(name="ContactId")
    private String contactId;

    @Column(name="AttributeName")
    private String attributeName;

    @Column(name="StrValue")
    private String strValue;

    @Column(name="StrValueLowerCase")
    private String strValueLowerCase;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getContactId() {
        return contactId;
    }

    public void setContactId(String contactId) {
        this.contactId = contactId;
    }

    public String getAttributeName() {
        return attributeName;
    }

    public void setAttributeName(String attributeName) {
        this.attributeName = attributeName;
    }

    public String getStrValue() {
        return strValue;
    }

    public void setStrValue(String strValue) {
        this.strValue = strValue;
    }

    public String getStrValueLowerCase() {
        return strValueLowerCase;
    }

    public void setStrValueLowerCase(String strValueLowerCase) {
        this.strValueLowerCase = strValueLowerCase;
    }
}
