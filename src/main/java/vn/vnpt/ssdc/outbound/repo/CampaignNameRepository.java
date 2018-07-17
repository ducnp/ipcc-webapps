package vn.vnpt.ssdc.outbound.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import vn.vnpt.ssdc.outbound.entity.CampaignName;

import java.util.List;

public interface CampaignNameRepository extends JpaRepository<CampaignName, Integer>, JpaSpecificationExecutor<CampaignName> {
    List<CampaignName> findAllByName(String strName);

    @Query("SELECT coalesce(max(ch.id), 0) FROM CampaignName ch")
    Integer getMaxId();
}
