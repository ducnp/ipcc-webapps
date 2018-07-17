package vn.vnpt.ssdc.ucs.entity;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import java.util.List;

public interface DocumentRepository extends JpaRepository<Document, Integer>, JpaSpecificationExecutor<Document> {
    List<Document> findByIdIn(List<String> ids);
}
