package vn.vnpt.ssdc.calling.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import vn.vnpt.ssdc.calling.entity.Survey;

import javax.transaction.Transactional;
import java.util.List;

@Transactional
public interface SurveyRepository extends JpaRepository<Survey, Long>,JpaSpecificationExecutor<Survey> {
    @Query("SELECT coalesce(max(ch.chainid), 0) FROM Survey ch")
    Integer getMaxChaniId();
    @Query("SELECT coalesce(max(ch.id), 0) FROM Survey ch")
    Integer getMaxRecordId();

    @Query("SELECT DISTINCT ch.dateCampaign, ch.contactCampaign FROM Survey ch ORDER BY ch.dateCampaign DESC")
    List<Object> findImportHistory();

    @Query("SELECT ch.id FROM Survey ch WHERE ch.dateCampaign = :date AND ch.contactCampaign = :filename")
    List<Long> findByHisory(@Param("filename") String filename, @Param("date") String date);

    @Modifying
    @Transactional
    public void deleteByIdIn(List<Long> id);
}
