package vn.vnpt.ssdc.voiceMail.entity;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface UserLoginRepository extends CrudRepository<UserLogin, Long>{
    @Query("SELECT tbl.id FROM UserLogin tbl WHERE tbl.username = :username AND tbl.password = :password")
    List<Long> findUserById(@Param("username") String username, @Param("password") String password);
}
