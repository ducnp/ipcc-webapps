package vn.vnpt.ssdc.voiceMail.entity;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import java.util.List;

public interface JoinEventRepository extends JpaRepository<JoinEvent, Integer>, JpaSpecificationExecutor<JoinEvent> {
    List<JoinEvent> findByCallStatusIn(int[] values);
    JoinEvent findFirstByCallStatusInAndCallResultInAndCallCountsLessThanOrderByCallCountsAsc(int[] values1, int[] values2, int count);
    List<JoinEvent> findByCallStatusInAndCallCountsGreaterThanEqual(int[] callStatus, int callCounts);
}
