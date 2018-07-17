package vn.vnpt.ssdc.ucs.entity;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import java.util.List;

public interface AttachmentRepository extends JpaRepository<Attachment, Integer>, JpaSpecificationExecutor<Attachment> {
    List<Attachment> findByEntityId(String entityId);
}
