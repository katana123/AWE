package com.awe.Service.community;

import com.awe.Data.InstitutionMembers;
import com.awe.Entity.CCinfo;
import com.awe.Entity.CCusers;
import com.awe.Entity.CUlink;
import com.awe.Data.CommunityMembers;
import com.awe.Entity.IResources;
import com.awe.Repositry.community.communityRepositry;
import com.awe.Repositry.community.culinkRepositry;
import com.awe.Repositry.community.iResourcesRepositry;
import com.awe.Repositry.register.ccusersRepositry;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.criteria.*;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;

@Service
public class CommunityService {

    @Autowired
    private communityRepositry communityRepositry;
    @Autowired
    private culinkRepositry culinkRepositry;
    @Autowired
    private ccusersRepositry ccusersRepositry;
    @Autowired
    private iResourcesRepositry iResourcesRepositry;

    //获取所有已上传的资料列表
    public Page<IResources> findAllResourcesByCcid(int page, int size, Long Ccid) {
        PageRequest pageReq = this.buildPageRequest(page, size);
        return iResourcesRepositry.findByCcid(pageReq, Ccid);
    }

    /**
     * 建立分页排序请求
     *
     * @param page
     * @param size
     * @return
     */
    private PageRequest buildPageRequest(int page, int size) {
        Sort sort = new Sort(Sort.Direction.DESC, "uploadtime");
        return new PageRequest(page, size, sort);
    }

    /**
     * 建立查询条件
     *
     * @author liuxg
     * @date 2016年3月30日 下午2:04:39
     */
    private class TheIResources implements Specification<IResources> {

        @Override
        public Predicate toPredicate(Root<IResources> root, CriteriaQuery<?> query, CriteriaBuilder cb) {
            return null;
        }
    }

    //课教管理资料上传
    public void uploadResource(IResources iResources){
        iResourcesRepositry.saveAndFlush(iResources);
    }

    //获取机构权限相关人员信息
    public List<Object> authorityMemberList(Long ccid,Long roleid){
        return ccusersRepositry.authorityMemberList(ccid,roleid);
    };

    //获取机构权限关联数量
    @Transactional
    public BigInteger authoritymembernum(Long ccid,Long roleid){
        return ccusersRepositry.authorityMemberNum(ccid,roleid);
    }

    //获取学社关联的用户数量
    @Transactional
    public BigInteger membernum(Long ccid) {
        return ccusersRepositry.membernum(ccid);
    }

    //删除学社关联的用户
//    @Transactional
//    public void deleteLinkedMember(Long ccid, Long cuid) {
//        culinkRepositry.deleteLinkedMember(ccid, cuid);
//    }

    @Transactional(readOnly = true)
    public List<CommunityMembers> findOneCommunityMemberByCusernameAndCcid(String cuserName,Integer ccid){
        return ccusersRepositry.findOneCommunityMemberByCusernameAndCcid(cuserName,ccid);
    }

    //获取学社关联的用户
    @Transactional(readOnly = true)
    public List<CommunityMembers> CommunityMembers(Integer ccid) {
        return ccusersRepositry.findCommunityMembers(ccid);
    }

    //获取机构关联的用户
    @Transactional(readOnly = true)
    public Page<CCusers> findInstitutionMembers(int pageNo, int pageSize, final Integer ccid) {
        return ccusersRepositry.findAll(
                new Specification<CCusers>() {
                    @Override
                    public Predicate toPredicate(Root<CCusers> root, CriteriaQuery<?> query, CriteriaBuilder cb) {
                        List<Predicate> list = new ArrayList<>();
                        Root<CUlink> cRoot = query.from(CUlink.class);
                        Join<CUlink, CCusers> join = cRoot.join("cCusers", JoinType.LEFT);
                        query.groupBy(root.get("cuid"));
                        Path<Long> roleid = cRoot.get("roleid");
                        list.add(cb.gt(roleid, 1));
                        Path<Long> tccid = cRoot.get("ccid");
                        list.add(cb.equal(tccid, ccid));

                        return cb.and(list.toArray(new Predicate[list.size()]));
                    }
                }, new PageRequest(pageNo, pageSize));
    }

//    public CUlink findByCcidAndCuid(Long ccid, Long cuid){
//        return culinkRepositry.findByCcidAndCuid(ccid,cuid);
//    }
//
//    //一个学社只能添加同一个用户一次
//    @Transactional(readOnly = true)
//    public List<CommunityMembers> linkOnce(Long ccid, String cusername) {
//        return culinkRepositry.findInsMemByCcidAndCuid(ccid, cusername);
//    }

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
