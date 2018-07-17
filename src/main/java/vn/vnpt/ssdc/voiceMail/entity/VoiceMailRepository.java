package vn.vnpt.ssdc.voiceMail.entity;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface VoiceMailRepository
        extends JpaRepository<VoiceMail, Long>, JpaSpecificationExecutor<VoiceMail> {
    @Query("SELECT vm.agentEmail,SUM(case vm.statusAgentSeen when 2 then 1 else 0 end) as count_done,SUM(case vm.statusAgentSeen when 1 then 1 else 0 end) as count_inprocess FROM VoiceMail vm WHERE vm.agentEmail IS NOT NULL and vm.agentSeenTime between :fromtime and  :totime  GROUP BY vm.agentEmail")
    List<Object[]> exportReport(@Param("fromtime") String fromtime, @Param("totime") String totime);
}
