package com.awe.Repositry.community;

import com.awe.Data.CommunityMembers;
import com.awe.Entity.CUlink;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface culinkRepositry extends JpaRepository<CUlink, Integer> {


//    CUlink findByCcidAndCuid(Long ccid, Long cuid);
//
//    @Query(value = "select u.cuid,u.cusername,u.cqqid,u.cupn,cu.jointime from c_cusers u right join c_ulink cu on u.cuid = cu.cuid where cu.roleid>1 and cu.ccid =?1 and u.cusername=?2",nativeQuery = true)
//    List<CommunityMembers> findInsMemByCcidAndCuid(Long ccid, String cusername);
//
//    @Query(value = "delete from c_ulink where ccid=?1 and cuid=?2", nativeQuery = true)
//    @Modifying
//    void deleteLinkedMember(Long ccid, Long cuid);
}
