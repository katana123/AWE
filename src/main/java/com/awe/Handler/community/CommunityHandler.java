package com.awe.Handler.community;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CommunityHandler {

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
    public String CommunityMainpage() {
        return "/communityMainpage/mainpage";
    }
}
