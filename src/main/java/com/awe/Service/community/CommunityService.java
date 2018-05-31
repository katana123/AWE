package com.awe.Service.community;

import com.awe.Entity.CCinfo;
import com.awe.Entity.CCusers;
import com.awe.Entity.CUlink;
import com.awe.Repositry.community.communityRepositry;
import com.awe.Repositry.community.culinkRepositry;
import com.awe.Repositry.register.ccusersRepositry;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.criteria.*;
import java.util.List;

@Service
public class CommunityService {

    @Autowired
    private communityRepositry communityRepositry;
    @Autowired
    private culinkRepositry culinkRepositry;
    @Autowired
    private ccusersRepositry ccusersRepositry;

    //获取学社关联的用户
    /*public Page<CCusers> linkedCCusers(int pageNo, int pageSize){
        Pageable pageable = new PageRequest(pageNo,pageSize);
        return (Page<CCusers>) ccusersRepositry.findAll(
            new Specification<CCusers>() {
            @Override
            public Predicate toPredicate(Root<CCusers> root, CriteriaQuery<?> criteriaQuery, CriteriaBuilder cb) {
                CriteriaQuery<CCusers> articlequery = cb.createQuery(CCusers.class);
                Root<CCusers> cCusersRoot = articlequery.from(CCusers.class);
                CriteriaQuery<CUlink> culinkquery = cb.createQuery(CUlink.class);
                Root<CUlink> cuinkRoot = culinkquery.from(CUlink.class);
                Join<CCusers,CUlink> cUlinkJoin = cuinkRoot.join("cCusers",JoinType.LEFT);
                Path<String> exp4 = cUlinkJoin.get("cusername");
                //Predicate predicate = cb.conjunction();
                //articlequery.select(articleRoot);
                return cb.like(exp4, "%awelogin%");
            }
        },pageable);
    }*/

    //一个学社只能添加同一个用户一次
    @Transactional(readOnly = true)
    public CUlink linkOnce(Long ccid, Long cuid) {
        return culinkRepositry.findByCcidAndCuid(ccid, cuid);
    }

    //学社添加成员
    @Transactional
    public void addMember(CUlink cUlink) {
        culinkRepositry.saveAndFlush(cUlink);
    }

    //保存和修改
    @Transactional
    public void save(CCinfo cCinfo) {
        communityRepositry.saveAndFlush(cCinfo);
    }

    //获取一个学社对象
    @Transactional(readOnly = true)
    public CCinfo get(Integer ccid) {
        return communityRepositry.findOne(ccid);
    }


    //获取官方学社
    @Transactional(readOnly = true)
    public List<CCinfo> getAuthorityCommunities() {
        return communityRepositry.getByCleve((long) 0);
    }
}
