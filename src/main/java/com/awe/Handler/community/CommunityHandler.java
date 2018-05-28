package com.awe.Handler.community;

import com.awe.Entity.CCinfo;
import com.awe.Service.community.CommunityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

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

    /*-------------商城start-------------*/
    @RequestMapping("/communityMarket")
    public String CommunityMarket() {
        return "/communityMarket/property";
    }
    /*--------------商城end--------------*/
    /*---------学有所乐start-------------*/

    //大型赛区
    @RequestMapping("/communityFunArea")
    public String CommunityFunArea() {
        return "/communityFun/area";
    }

    //极乐大厅
    @RequestMapping("/communityFunHall")
    public String CommunityFunHall() {
        return "/communityFun/hall";
    }

    //房间
    @RequestMapping("/communityFunRoom")
    public String CommunityFunRoom() {
        return "/communityFun/room";
    }

    /*-------学有所乐end--------*/


    //创建社区
    @RequestMapping("/communitySetup")
    public String CommunitySetup() {
        return "/community/setup";
    }

    //社区二级主页
    @RequestMapping("/communityMainpage")
    public String CommunityMainpage(Map<String, Object> map) {
        List<CCinfo> authorityCommunities = communityService.getAuthorityCommunities();
        for (CCinfo attribute : authorityCommunities) {
            System.out.println(attribute.toString());
        }
        map.put("authorityCommunities", authorityCommunities);
        return "/communityMainpage/mainpage";
    }
}
