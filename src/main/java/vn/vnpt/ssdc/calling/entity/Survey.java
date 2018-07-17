package vn.vnpt.ssdc.calling.entity;

import org.codehaus.jettison.json.JSONException;
import vn.vnpt.ssdc.utility.Util;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;
import java.io.UnsupportedEncodingException;

@Entity
@Table(name = "acbsurvey")
public class Survey implements Serializable {
     @Id
//    @GeneratedValue(strategy = GenerationType.AUTO)
     @Column(name = "record_id")
     private Long id;
     @Column(name = "CustomerID")
     private String customer_id;
     @Column(name = "CustomerName")
     private String customer_name;
     private String contact_info;
     //    private String contact_info2;
     @Column(name = "ACCTNBR")
     private String acctnbr;
     @Column(name = "TEN_CN_THUCHIEN")
     private String ten_cn_thuc_hien;
     @Column(name = "chain_id")
     private int chainid;
     private int chain_n;
     private String survey_qn_1;
     private String survey_qn_2;
     private String survey_qn_3;
     @Column(name = "Feedback")
     private String feedback = "0";
     @Column(name = "Note")
     private String note;

     @Column(name = "Contact_Campaign")
     private String contactCampaign;
     @Column(name = "Date_Campaign")
     private String dateCampaign;


     private int contact_info_type = 1;
     private int record_type = 2;
     private int record_status = 1;
     private int call_result = 28;
     private int attempt = 0;
     private int daily_from = 28800;
     private int daily_till = 72000;
     private int tz_dbid = 111;


     public Survey() {
     }

     public Survey(Long id, String customer_name, String customer_id, String cell_phone, String acctnbr,
                   String ten_cn_thuc_hien, int chain_id, int chain_n) {
          this.customer_name = customer_name;
          this.id = id;
          this.customer_id = customer_id;
          this.contact_info = cell_phone;
          this.acctnbr = acctnbr;
          this.ten_cn_thuc_hien = ten_cn_thuc_hien;
          this.chainid = chain_id;
          this.chain_n = chain_n;
     }

     public Survey(Object data[]) throws UnsupportedEncodingException, JSONException {
          this.id = (Long) data[0];
          this.customer_id = (String) data[1];
          this.customer_name = Util.convertUTF8_ASCI((String) data[2]);
          this.contact_info = (String) data[3];
          this.acctnbr = (String) data[5];
          this.ten_cn_thuc_hien = Util.convertASCI_UTF8((String) data[6]);
          this.chainid = (Integer) data[7];
          this.chain_n = (Integer) data[8];
          this.contactCampaign = (String) data[9];
          this.dateCampaign = (String) data[10];
     }

     public Long getId() {
          return id;
     }

     public void setId(Long id) {
          this.id = id;
     }

     public String getCustomer_id() {
          return customer_id;
     }

     public void setCustomer_id(String customer_id) {
          this.customer_id = customer_id;
     }

     public String getCustomer_name() {
          return customer_name;
     }

     public void setCustomer_name(String customer_name) {
          this.customer_name = customer_name;
     }

     public String getTen_cn_thuc_hien() {
          return ten_cn_thuc_hien;
     }

     public void setTen_cn_thuc_hien(String ten_cn_thuc_hien) {
          this.ten_cn_thuc_hien = ten_cn_thuc_hien;
     }

     public int getChain_id() {
          return chainid;
     }

     public void setChain_id(int chain_id) {
          this.chainid = chain_id;
     }

     public int getChain_n() {
          return chain_n;
     }

     public void setChain_n(int chain_n) {
          this.chain_n = chain_n;
     }

     public String getContact_info() {
          return contact_info;
     }

     public void setContact_info(String contact_info) {
          this.contact_info = contact_info;
     }

//    public String getContact_info2() {
//        return contact_info2;
//    }
//
//    public void setContact_info2(String contact_info2) {
//        this.contact_info2 = contact_info2;
//    }

     public String getAcctnbr() {
          return acctnbr;
     }

     public void setAcctnbr(String acctnbr) {
          this.acctnbr = acctnbr;
     }

     public String getSurvey_qn_1() {
          return survey_qn_1;
     }

     public void setSurvey_qn_1(String survey_qn_1) {
          this.survey_qn_1 = survey_qn_1;
     }

     public String getSurvey_qn_2() {
          return survey_qn_2;
     }

     public void setSurvey_qn_2(String survey_qn_2) {
          this.survey_qn_2 = survey_qn_2;
     }

     public String getSurvey_qn_3() {
          return survey_qn_3;
     }

     public void setSurvey_qn_3(String survey_qn_3) {
          this.survey_qn_3 = survey_qn_3;
     }

     public String getFeedback() {
          return feedback;
     }

     public void setFeedback(String feedback) {
          this.feedback = feedback;
     }


     public String getNote() {
          return note;
     }

     public void setNote(String note) {
          this.note = note;
     }

     public String getContactCampaign() {
          return contactCampaign;
     }

     public void setContactCampaign(String contactCampaign) {
          this.contactCampaign = contactCampaign;
     }

     public String getDateCampaign() {
          return dateCampaign;
     }

     public void setDateCampaign(String dateCampaign) {
          this.dateCampaign = dateCampaign;
     }

     public int getChainid() {
          return chainid;
     }

     public void setChainid(int chainid) {
          this.chainid = chainid;
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
}
