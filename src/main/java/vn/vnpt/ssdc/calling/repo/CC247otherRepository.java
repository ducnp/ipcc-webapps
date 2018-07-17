package vn.vnpt.ssdc.calling.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import vn.vnpt.ssdc.calling.entity.CC247other;

import javax.transaction.Transactional;
import java.util.List;

public interface CC247otherRepository extends JpaRepository<CC247other, Long>, JpaSpecificationExecutor<CC247other> {
     @Query("SELECT coalesce(max(ch.chainid), 0) FROM CC247other ch")
     Integer getMaxChaniId();

     @Query("SELECT coalesce(max(ch.id), 0) FROM CC247other ch")
     Integer getMaxRecordId();

     @Query("SELECT DISTINCT ch.campaignName FROM CC247other ch ORDER BY ch.campaignName DESC ")
     List<Object> getCampaignOther();

     @Query("SELECT DISTINCT ch.date_campaign, ch.contact_campaign FROM CC247other ch WHERE ch.campaignName = :campaignName ORDER BY ch.date_campaign DESC")
     List<Object> findImportHistory(@Param("campaignName") String campaignName);

     List<CC247other> findAllByCampaignName(String strCampaignName);

     @Query("SELECT ch.id FROM CC247other ch WHERE ch.date_campaign = :date AND ch.contact_campaign = :filename")
     List<Long> findByHistory(@Param("filename") String filename, @Param("date") String date);

     @Modifying
     @Transactional
     public void deleteByIdIn(List<Long> id);
}
