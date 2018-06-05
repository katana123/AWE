package com.awe.Handler.community;

import com.alibaba.fastjson.JSON;
import com.awe.Data.InstitutionMembers;
import com.awe.Entity.CCinfo;
import com.awe.Service.community.CommunityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;
import java.util.Map;

@Controller
public class CommunityHandler {

    @Autowired
    private CommunityService communityService;

    /*-----------用户学社主页start----------*/
    @RequestMapping(value = "/communityUserMainpage/{ccid}", method = RequestMethod.GET)
    public String CommunityUserMainpage(@PathVariable(value = "ccid", required = true) Integer ccid, Map<String, Object> map) {
        CCinfo cCinfo = communityService.get(ccid);
        map.put("community", cCinfo);
        return "/userMain/userMainpage";
    }
    /*-----------用户学社主页end----------*/


    //社区二级主页
    @RequestMapping("/communityMainpage")
    public String CommunityMainpage(Map<String, Object> map) {
        List<CCinfo> authorityCommunities = communityService.getAuthorityCommunities();
        /*for (CCinfo attribute : authorityCommunities) {
            System.out.println(attribute.toString());
        }*/
        map.put("authorityCommunities", authorityCommunities);
        return "/communityMainpage/mainpage";
    }

    @RequestMapping("/testLink")
    public String TestLink(Map<String, Object> map) {
        List<InstitutionMembers> InstitutionMembers = communityService.findInstitutionMembers(2);
        map.put("InstitutionMembers", InstitutionMembers);
        return "/test/testLink";
    }
}
