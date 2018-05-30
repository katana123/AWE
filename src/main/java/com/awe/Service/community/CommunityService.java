package com.awe.Service.community;

import com.awe.Entity.CCinfo;
import com.awe.Entity.CUlink;
import com.awe.Repositry.community.communityRepositry;
import com.awe.Repositry.community.culinkRepositry;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class CommunityService {

    @Autowired
    private communityRepositry communityRepositry;
    private culinkRepositry culinkRepositry;

    //学社添加成员
    /*public void addMember(CUlink cUlink){
        culinkRepositry.saveAndFlush(cUlink);
    }*/

    //保存和修改
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
