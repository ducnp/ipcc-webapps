package vn.vnpt.ssdc.voiceMail.entity;

public class CdrCall {
    private String setupTime;
    private String connectTime;
    private String releaseTime;
    private String srcPhoneNum;
    private String dstPhoneNum;
    private int status;
    private String duration;

    public String getSetupTime() {
        return setupTime;
    }

    public void setSetupTime(String setupTime) {
        this.setupTime = setupTime;
    }

    public String getConnectTime() {
        return connectTime;
    }

    public void setConnectTime(String connectTime) {
        this.connectTime = connectTime;
    }

    public String getReleaseTime() {
        return releaseTime;
    }

    public void setReleaseTime(String releaseTime) {
        this.releaseTime = releaseTime;
    }

    public String getSrcPhoneNum() {
        return srcPhoneNum;
    }

    public void setSrcPhoneNum(String srcPhoneNum) {
        this.srcPhoneNum = srcPhoneNum;
    }

    public String getDstPhoneNum() {
        return dstPhoneNum;
    }

    public void setDstPhoneNum(String dstPhoneNum) {
        this.dstPhoneNum = dstPhoneNum;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getDuration() {
        return duration;
    }

    public void setDuration(String duration) {
        this.duration = duration;
    }
}
