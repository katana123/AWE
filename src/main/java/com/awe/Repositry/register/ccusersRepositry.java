package com.awe.Repositry.register;

import com.awe.Entity.CCusers;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
public interface ccusersRepositry extends JpaRepository<CCusers, Integer>, JpaSpecificationExecutor<CCusers> {

    CCusers getByCuid(Long cuid);

    CCusers getByCusername(String cuserName);

    @Transactional
    @Modifying(clearAutomatically = true)
    @Query(value = "update c_cusers u set u.cemail =?1 where u.cuid = ?2",nativeQuery = true)
    int updateEmailByCuid( String cemail,  Long cuid);

    List<CCusers> getByCusernameAndCpwd(String cuserName, String cPwd);

    CCusers getByCupn(String cupn);
}
