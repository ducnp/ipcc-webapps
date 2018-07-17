package vn.vnpt.ssdc.voiceMail.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "join_event")
public class JoinEvent {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    @Column(name="location")
    private String location;
    @Column(name="staff_name")
    private String staffName;
    @Column(name="agency_name")
    private String agencyName;
    @Column(name="customer_name")
    private String customerName;
    @Column(name="customer_phone")
    private String customerPhone;
    @Column(name="call_time")
    private String callTime;
    @Column(name="call_status")
    private Integer callStatus; // -1 khởi tạo, 0 chờ gọi, 1 thành công, 2 thất bại - tương ứng SSG trả lại false lúc request
    @Column(name="call_result")
    private Integer callResult; // -1 khởi tạo, 0 khách hàng k nghe máy, 1 tham dự, 2 từ chối, 3 ghi âm
    @Column(name="import_time")
    private String importTime;
    @Column(name="record_path")
    private String recordPath;
    @Column(name="call_counts")
    private int callCounts; // số lần gọi  (tính bằng số lần request ssg thành công)

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getStaffName() {
        return staffName;
    }

    public void setStaffName(String staffName) {
        this.staffName = staffName;
    }

    public String getAgencyName() {
        return agencyName;
    }

    public void setAgencyName(String agencyName) {
        this.agencyName = agencyName;
    }

    public String getCustomerName() {
        return customerName;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    public String getCustomerPhone() {
        return customerPhone;
    }

    public void setCustomerPhone(String customerPhone) {
        this.customerPhone = customerPhone;
    }

    public String getCallTime() {
        return callTime;
    }

    public void setCallTime(String callTime) {
        this.callTime = callTime;
    }

    public Integer getCallStatus() {
        return callStatus;
    }

    public void setCallStatus(Integer callStatus) {
        this.callStatus = callStatus;
    }

    public Integer getCallResult() {
        return callResult;
    }

    public void setCallResult(Integer callResult) {
        this.callResult = callResult;
    }

    public String getImportTime() {
        return importTime;
    }

    public void setImportTime(String importTime) {
        this.importTime = importTime;
    }

    public String getRecordPath() {
        return recordPath;
    }

    public void setRecordPath(String recordPath) {
        this.recordPath = recordPath;
    }

    public int getCallCounts() {
        return callCounts;
    }

    public void setCallCounts(int callCounts) {
        this.callCounts = callCounts;
    }
}
