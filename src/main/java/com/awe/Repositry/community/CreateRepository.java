package com.awe.Repositry.community;

import com.awe.Entity.CCinfo;
import com.awe.Entity.CCusers;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

public interface CreateRepository extends JpaRepository<CCinfo, Integer> {
    List<CCinfo> getByCleve(Long clevel);

    CCinfo getByCcname(String ccname);

    @Transactional
    @Modifying(clearAutomatically = true)
    @Query(value = "update c_cinfo u set u.cct =?1 where u.ccid = ?2", nativeQuery = true)
    int updatCcinfoByCcid(String cct, Integer ccid);
}
