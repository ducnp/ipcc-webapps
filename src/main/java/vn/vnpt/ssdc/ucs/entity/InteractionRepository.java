package vn.vnpt.ssdc.ucs.entity;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import vn.vnpt.ssdc.ucs.CustomJpaRepository;

import java.util.List;

public interface InteractionRepository extends CustomJpaRepository<Interaction,Long> {

    @Query("SELECT ch.strAttribute1 FROM Interaction ch where ch.id = :id")
    String findByDisposition1(@Param("id") String id);

    @Query("SELECT ch.strAttribute2 FROM Interaction ch where ch.id = :id")
    String findByDisposition2(@Param("id") String id);

    @Query("SELECT ch.strAttribute3 FROM Interaction ch where ch.id = :id")
    String findByDisposition3(@Param("id") String id);

    @Query("SELECT ch.strAttribute4 FROM Interaction ch where ch.id = :id")
    String findByDisposition4(@Param("id") String id);

    @Query("SELECT ch.strAttribute5 FROM Interaction ch where ch.id = :id")
    String findByDisposition5(@Param("id") String id);

    @Query("SELECT ch.strAttribute6 FROM Interaction ch where ch.id = :id")
    String findByDisposition6(@Param("id") String id);

    @Query("SELECT ch.strAttribute7 FROM Interaction ch where ch.id = :id")
    String findByDisposition7(@Param("id") String id);

    @Query("SELECT ch.strAttribute8 FROM Interaction ch where ch.id = :id")
    String findByDisposition8(@Param("id") String id);

    @Query("SELECT ch.strAttribute9 FROM Interaction ch where ch.id = :id")
    String findByDisposition9(@Param("id") String id);

    @Query("SELECT ch.strAttribute10 FROM Interaction ch where ch.id = :id")
    String findByDisposition10(@Param("id") String id);

    @Query("SELECT count(ch.id) as total FROM Interaction ch")
    Long countAll();

    List<Interaction> findAllByIdIsNotLikeOrderByStartDateDesc(Pageable pageable, String id);

    List<Interaction> findByStrAttribute1IgnoreCaseContaining(String strValue);
    List<Interaction> findByStrAttribute2IgnoreCaseContaining(String strValue);
    List<Interaction> findByStrAttribute3IgnoreCaseContaining(String strValue);
    List<Interaction> findByStrAttribute4IgnoreCaseContaining(String strValue);
    List<Interaction> findByStrAttribute5IgnoreCaseContaining(String strValue);
    List<Interaction> findByStrAttribute6IgnoreCaseContaining(String strValue);
    List<Interaction> findByStrAttribute7IgnoreCaseContaining(String strValue);
    List<Interaction> findByStrAttribute8IgnoreCaseContaining(String strValue);
    List<Interaction> findByStrAttribute9IgnoreCaseContaining(String strValue);
    List<Interaction> findByStrAttribute10IgnoreCaseContaining(String strValue);

}

