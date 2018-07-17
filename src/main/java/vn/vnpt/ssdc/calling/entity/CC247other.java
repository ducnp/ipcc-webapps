package vn.vnpt.ssdc.calling.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "cc247other")
public class CC247other {

    ///Default Genesys
    @Id
    @Column(name="record_id")
    private Long id;
    @Column(name="contact_info")
    private String contactInfo;
    @Column(name="chain_id")
    private int chainid;
    @Column(name="chain_n")
    private int chain_n;
    //
    //Customer Field
    @Column(name="campaign_name")
    private String campaignName;
    @Column(name="campaign_date")
    private String campaign_date;
    @Column(name="customer_id")
    private int customer_id;
    @Column(name="customer_name")
    private String customer_name;
    @Column(name="gender")
    private String gender;
    @Column(name="tax_id")
    private String tax_id;
    @Column(name="brithday")
    private String brithday;
    @Column(name="title")
    private String title;
    @Column(name="email")
    private String email;
    @Column(name="address")
    private String address;
    @Column(name="account_number")
    private String account_number;
    @Column(name="card_number")
    private String card_number;
    @Column(name="note")
    private String note;
    @Column(name="field_1")
    private String field_1;
    @Column(name="field_2")
    private String field_2;
    @Column(name="field_3")
    private String field_3;
    @Column(name="field_4")
    private String field_4;
    @Column(name="field_5")
    private String field_5;
    @Column(name="field_6")
    private String field_6;
    @Column(name="field_7")
    private String field_7;
    @Column(name="field_8")
    private String field_8;
    @Column(name="field_9")
    private String field_9;
    @Column(name="field_10")
    private String field_10;
    @Column(name="field_11")
    private int field_11;
    @Column(name="field_12")
    private int field_12;
    @Column(name="field_13")
    private int field_13;
    @Column(name="field_14")
    private int field_14;
    @Column(name="field_15")
    private int field_15;
    @Column(name="field_16")
    private int field_16;
    @Column(name="field_17")
    private String field_17;
    @Column(name="field_18")
    private String field_18;
    @Column(name="field_19")
    private String field_19;
    @Column(name="field_20")
    private String field_20;
    @Column(name="field_21")
    private String field_21;
    @Column(name="field_22")
    private String field_22;
    @Column(name="field_23")
    private String field_23;
    @Column(name="field_24")
    private String field_24;
    @Column(name="field_25")
    private String field_25;
    @Column(name="field_26")
    private String field_26;
    @Column(name="field_27")
    private String field_27;
    @Column(name="field_28")
    private String field_28;
    @Column(name="field_29")
    private String field_29;
    //
    @Column(name="contact_campaign")
    private String contact_campaign;
    @Column(name="date_campaign")
    private String date_campaign;
    //
    private int contact_info_type;
    private int record_type;
    private int record_status;
    private int call_result;
    private int attempt;
    private int daily_from;
    private int daily_till;
    private int tz_dbid;
    //
    public CC247other(){}

    public CC247other(Object data[]){
        this.id = (Long)data[0];
        this.contactInfo= (String) data[1];
        this.chainid = (Integer) data[15];
        this.chain_n = (Integer) data[16];
        ///
        this.campaignName = (String) data[24];
        this.campaign_date = (String) data[25];
        this.customer_id = (Integer) data[26];
        this.customer_name = (String) data[27];
        this.gender = (String) data[28];
        this.tax_id = (String) data[29];
        this.brithday = (String) data[30];
        this.title = (String) data[31];
        this.email = (String) data[32];
        this.address = (String) data[33];
        this.account_number = (String) data[34];
        this.card_number = (String) data[35];
        this.note = (String) data[36];
        this.field_1 = (String) data[37];
        this.field_2 = (String) data[38];
        this.field_3 = (String) data[39];
        this.field_4 = (String) data[40];
        this.field_5 = (String) data[41];
        this.field_6 = (String) data[42];
        this.field_7 = (String) data[43];
        this.field_8 = (String) data[44];
        this.field_9 = (String) data[45];
        this.field_10 = (String) data[46];
        this.field_11 = (Integer) data[47];
        this.field_12 = (Integer) data[48];
        this.field_13 = (Integer) data[49];
        this.field_14 = (Integer) data[50];
        this.field_15 = (Integer) data[51];
        this.field_16 = (Integer) data[52];
        this.field_17 = (String) data[53];
        this.field_18 = (String) data[54];
        this.field_19 = (String) data[55];
        this.field_20 = (String) data[56];
        this.field_21 = (String) data[57];
        this.field_22 = (String) data[58];
        this.field_23 = (String) data[59];
        this.field_24 = (String) data[60];
        this.field_25 = (String) data[61];
        this.field_26 = (String) data[62];
        this.field_27 = (String) data[63];
        this.field_28 = (String) data[64];
        this.field_29 = (String) data[65];
        //
        this.contact_campaign = (String) data[66];
        this.date_campaign = (String) data[67];
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getContactInfo() {
        return contactInfo;
    }

    public void setContactInfo(String contactInfo) {
        this.contactInfo = contactInfo;
    }

    public int getContact_info_type() {
        return contact_info_type;
    }

    public void setContact_info_type(int contact_info_type) {
        this.contact_info_type = contact_info_type;
    }

    public int getRecord_type() {
        return record_type;
    }

    public void setRecord_type(int record_type) {
        this.record_type = record_type;
    }

    public int getRecord_status() {
        return record_status;
    }

    public void setRecord_status(int record_status) {
        this.record_status = record_status;
    }

    public int getCall_result() {
        return call_result;
    }

    public void setCall_result(int call_result) {
        this.call_result = call_result;
    }

    public int getAttempt() {
        return attempt;
    }

    public void setAttempt(int attempt) {
        this.attempt = attempt;
    }

    public int getDaily_from() {
        return daily_from;
    }

    public void setDaily_from(int daily_from) {
        this.daily_from = daily_from;
    }

    public int getDaily_till() {
        return daily_till;
    }

    public void setDaily_till(int daily_till) {
        this.daily_till = daily_till;
    }

    public int getTz_dbid() {
        return tz_dbid;
    }

    public void setTz_dbid(int tz_dbid) {
        this.tz_dbid = tz_dbid;
    }

    public int getChainid() {
        return chainid;
    }

    public void setChainid(int chainid) {
        this.chainid = chainid;
    }

    public int getChain_n() {
        return chain_n;
    }

    public void setChain_n(int chain_n) {
        this.chain_n = chain_n;
    }

    public String getCampaign_name() {
        return campaignName;
    }

    public void setCampaign_name(String campaign_name) {
        this.campaignName = campaign_name;
    }

    public String getCampaign_date() {
        return campaign_date;
    }

    public void setCampaign_date(String campaign_date) {
        this.campaign_date = campaign_date;
    }

    public int getCustomer_id() {
        return customer_id;
    }

    public void setCustomer_id(int customer_id) {
        this.customer_id = customer_id;
    }

    public String getCustomer_name() {
        return customer_name;
    }

    public void setCustomer_name(String customer_name) {
        this.customer_name = customer_name;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getTax_id() {
        return tax_id;
    }

    public void setTax_id(String tax_id) {
        this.tax_id = tax_id;
    }

    public String getBrithday() {
        return brithday;
    }

    public void setBrithday(String brithday) {
        this.brithday = brithday;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getAccount_number() {
        return account_number;
    }

    public void setAccount_number(String account_number) {
        this.account_number = account_number;
    }

    public String getCard_number() {
        return card_number;
    }

    public void setCard_number(String card_number) {
        this.card_number = card_number;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public String getField_1() {
        return field_1;
    }

    public void setField_1(String field_1) {
        this.field_1 = field_1;
    }

    public String getField_2() {
        return field_2;
    }

    public void setField_2(String field_2) {
        this.field_2 = field_2;
    }

    public String getField_3() {
        return field_3;
    }

    public void setField_3(String field_3) {
        this.field_3 = field_3;
    }

    public String getField_4() {
        return field_4;
    }

    public void setField_4(String field_4) {
        this.field_4 = field_4;
    }

    public String getField_5() {
        return field_5;
    }

    public void setField_5(String field_5) {
        this.field_5 = field_5;
    }

    public String getField_6() {
        return field_6;
    }

    public void setField_6(String field_6) {
        this.field_6 = field_6;
    }

    public String getField_7() {
        return field_7;
    }

    public void setField_7(String field_7) {
        this.field_7 = field_7;
    }

    public String getField_8() {
        return field_8;
    }

    public void setField_8(String field_8) {
        this.field_8 = field_8;
    }

    public String getField_9() {
        return field_9;
    }

    public void setField_9(String field_9) {
        this.field_9 = field_9;
    }

    public String getField_10() {
        return field_10;
    }

    public void setField_10(String field_10) {
        this.field_10 = field_10;
    }

    public int getField_11() {
        return field_11;
    }

    public void setField_11(int field_11) {
        this.field_11 = field_11;
    }

    public int getField_12() {
        return field_12;
    }

    public void setField_12(int field_12) {
        this.field_12 = field_12;
    }

    public int getField_13() {
        return field_13;
    }

    public void setField_13(int field_13) {
        this.field_13 = field_13;
    }

    public int getField_14() {
        return field_14;
    }

    public void setField_14(int field_14) {
        this.field_14 = field_14;
    }

    public int getField_15() {
        return field_15;
    }

    public void setField_15(int field_15) {
        this.field_15 = field_15;
    }

    public int getField_16() {
        return field_16;
    }

    public void setField_16(int field_16) {
        this.field_16 = field_16;
    }

    public String getField_17() {
        return field_17;
    }

    public void setField_17(String field_17) {
        this.field_17 = field_17;
    }

    public String getField_18() {
        return field_18;
    }

    public void setField_18(String field_18) {
        this.field_18 = field_18;
    }

    public String getField_19() {
        return field_19;
    }

    public void setField_19(String field_19) {
        this.field_19 = field_19;
    }

    public String getField_20() {
        return field_20;
    }

    public void setField_20(String field_20) {
        this.field_20 = field_20;
    }

    public String getField_21() {
        return field_21;
    }

    public void setField_21(String field_21) {
        this.field_21 = field_21;
    }

    public String getField_22() {
        return field_22;
    }

    public void setField_22(String field_22) {
        this.field_22 = field_22;
    }

    public String getField_23() {
        return field_23;
    }

    public void setField_23(String field_23) {
        this.field_23 = field_23;
    }

    public String getField_24() {
        return field_24;
    }

    public void setField_24(String field_24) {
        this.field_24 = field_24;
    }

    public String getField_25() {
        return field_25;
    }

    public void setField_25(String field_25) {
        this.field_25 = field_25;
    }

    public String getField_26() {
        return field_26;
    }

    public void setField_26(String field_26) {
        this.field_26 = field_26;
    }

    public String getField_27() {
        return field_27;
    }

    public void setField_27(String field_27) {
        this.field_27 = field_27;
    }

    public String getField_28() {
        return field_28;
    }

    public void setField_28(String field_28) {
        this.field_28 = field_28;
    }

    public String getField_29() {
        return field_29;
    }

    public void setField_29(String field_29) {
        this.field_29 = field_29;
    }

    public String getContact_campaign() {
        return contact_campaign;
    }

    public void setContact_campaign(String contact_campaign) {
        this.contact_campaign = contact_campaign;
    }

    public String getDate_campaign() {
        return date_campaign;
    }

    public void setDate_campaign(String date_campaign) {
        this.date_campaign = date_campaign;
    }
}
