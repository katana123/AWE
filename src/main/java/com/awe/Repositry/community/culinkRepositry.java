package com.awe.Repositry.community;

import com.awe.Entity.CUlink;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface culinkRepositry extends JpaRepository<CUlink, Integer> {


    CUlink findByCcidAndCuid(Long ccid, Long cuid);

    @Query(value = "delete from c_ulink where ccid=?1 and cuid=?2", nativeQuery = true)
    @Modifying
    void deleteLinkedMember(Long ccid, Long cuid);
}
