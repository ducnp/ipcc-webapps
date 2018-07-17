package vn.vnpt.ssdc.voiceMail.entity;

public class VoiceMailReport {
    public String agentEmail;
    public String countSeen;
    public String countInprocess;


    public String getAgentEmail() {
        return agentEmail;
    }

    public void setAgentEmail(String agentEmail) {
        this.agentEmail = agentEmail;
    }

    public String getCountSeen() {
        return countSeen;
    }

    public void setCountSeen(String countSeen) {
        this.countSeen = countSeen;
    }

    public String getCountInprocess() {
        return countInprocess;
    }

    public void setCountInprocess(String countInprocess) {
        this.countInprocess = countInprocess;
    }
}
