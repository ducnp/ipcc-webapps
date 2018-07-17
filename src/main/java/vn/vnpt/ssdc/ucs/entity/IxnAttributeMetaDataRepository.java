package vn.vnpt.ssdc.ucs.entity;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

public interface IxnAttributeMetaDataRepository extends JpaRepository<IxnAttributeMetaData, Integer>, JpaSpecificationExecutor<IxnAttributeMetaData> {
    IxnAttributeMetaData findByTheName(String theName);
}
