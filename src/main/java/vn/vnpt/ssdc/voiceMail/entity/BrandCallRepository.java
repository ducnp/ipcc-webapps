package vn.vnpt.ssdc.voiceMail.entity;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface BrandCallRepository  extends JpaRepository<BrandCall, Integer>, JpaSpecificationExecutor<BrandCall> {
    @Query("SELECT bc.id FROM BrandCall bc WHERE bc.searchValue = :searchValue")
    List<Integer> checkInsert(@Param("searchValue") String searchValue);
}
