package vn.vnpt.ssdc.ucs.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;

import javax.persistence.*;

@Entity
@Table(name = "Interaction")
public class Interaction {
    @Id
    @Column(name="Id")
    private String id;

    @Column(name="MediaTypeId")
    private String mediaTypeId;

    @JsonIgnore
    @Column(name="OwnerId")
    private String ownerId;

    @JsonIgnore
    @Column(name="ContactId")
    private String contactId;

    @Column(name="StartDate")
    private String startDate;

    @Column(name="EndDate")
    private String endDate;


    @Column(name="Subject")
    private String subject;

    @Column(name="StructuredText")
    private String structuredText;

    @Column(name="TheComment")
    private String theComment;

    @JsonIgnore
    @Column(name="StrAttribute1")
    private String strAttribute1;

    @JsonIgnore
    @Column(name="StrAttribute2")
    private String strAttribute2;

    @JsonIgnore
    @Column(name="StrAttribute3")
    private String strAttribute3;

    @JsonIgnore
    @Column(name="StrAttribute4")
    private String strAttribute4;

    @JsonIgnore
    @Column(name="StrAttribute5")
    private String strAttribute5;

    @JsonIgnore
    @Column(name="StrAttribute6")
    private String strAttribute6;

    @JsonIgnore
    @Column(name="StrAttribute7")
    private String strAttribute7;

    @JsonIgnore
    @Column(name="StrAttribute8")
    private String strAttribute8;

    @JsonIgnore
    @Column(name="StrAttribute9")
    private String strAttribute9;

    @JsonIgnore
    @Column(name="StrAttribute10")
    private String strAttribute10;

    @Transient
    private String phone;

    @Transient
    private String email;

    @Transient
    private String customerName;

    @Transient
    private String disposition;

    @Transient
    private String agentName;

    public String getAgentName() {
        return agentName;
    }

    public void setAgentName(String agentName) {
        this.agentName = agentName;
    }

    public String getEndDate() {
        return endDate;
    }

    public void setEndDate(String endDate) {
        this.endDate = endDate;
    }

    public String getStrAttribute1() {
        return strAttribute1;
    }

    public void setStrAttribute1(String strAttribute1) {
        this.strAttribute1 = strAttribute1;
    }

    public String getStrAttribute2() {
        return strAttribute2;
    }

    public void setStrAttribute2(String strAttribute2) {
        this.strAttribute2 = strAttribute2;
    }

    public String getStrAttribute3() {
        return strAttribute3;
    }

    public void setStrAttribute3(String strAttribute3) {
        this.strAttribute3 = strAttribute3;
    }

    public String getStrAttribute4() {
        return strAttribute4;
    }

    public void setStrAttribute4(String strAttribute4) {
        this.strAttribute4 = strAttribute4;
    }

    public String getStrAttribute5() {
        return strAttribute5;
    }

    public void setStrAttribute5(String strAttribute5) {
        this.strAttribute5 = strAttribute5;
    }

    public String getStrAttribute7() {
        return strAttribute7;
    }

    public void setStrAttribute7(String strAttribute7) {
        this.strAttribute7 = strAttribute7;
    }

    public String getStrAttribute8() {
        return strAttribute8;
    }

    public void setStrAttribute8(String strAttribute8) {
        this.strAttribute8 = strAttribute8;
    }

    public String getStrAttribute9() {
        return strAttribute9;
    }

    public void setStrAttribute9(String strAttribute9) {
        this.strAttribute9 = strAttribute9;
    }

    public String getStrAttribute10() {
        return strAttribute10;
    }

    public void setStrAttribute10(String strAttribute10) {
        this.strAttribute10 = strAttribute10;
    }

    public String getStrAttribute6() {
        return strAttribute6;
    }

    public void setStrAttribute6(String strAttribute6) {
        this.strAttribute6 = strAttribute6;
    }

    public String getDisposition() {
        return disposition;
    }

    public void setDisposition(String disposition) {
        this.disposition = disposition;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getCustomerName() {
        return customerName;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getMediaTypeId() {
        return mediaTypeId;
    }

    public void setMediaTypeId(String mediaTypeId) {
        this.mediaTypeId = mediaTypeId;
    }

    public String getOwnerId() {
        return ownerId;
    }

    public void setOwnerId(String ownerId) {
        this.ownerId = ownerId;
    }

    public String getContactId() {
        return contactId;
    }

    public void setContactId(String contactId) {
        this.contactId = contactId;
    }

    public String getStartDate() {
        return startDate;
    }

    public void setStartDate(String startDate) {
        this.startDate = startDate;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getStructuredText() {
        return structuredText;
    }

    public void setStructuredText(String structuredText) {
        this.structuredText = structuredText;
    }

    public String getTheComment() {
        return theComment;
    }

    public void setTheComment(String theComment) {
        this.theComment = theComment;
    }
}
