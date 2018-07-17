package vn.vnpt.ssdc.ucs.entity;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface ContactAttributeRepository extends JpaRepository<ContactAttribute, Integer>, JpaSpecificationExecutor<ContactAttribute> {
    List<ContactAttribute> findByContactId(String contactId);

    List<ContactAttribute> findByAttributeNameAndStrValueLowerCaseIgnoreCaseContaining(String attributeName, String strValue);

}
