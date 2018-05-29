package com.awe.Handler.community;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Map;

@Controller
public class FunHandler {
    /*---------学有所乐start-------------*/

    //大型赛区
    @RequestMapping("/communityFunArea")
    public String CommunityFunArea(Map<String, Object> map) {
        map.put("funtype", "area");
        return "/communityFun/area";
    }

    //极乐大厅
    @RequestMapping("/communityFunHall")
    public String CommunityFunHall(Map<String, Object> map) {
        map.put("funtype", "hall");
        return "/communityFun/hall";
    }

    //房间
    @RequestMapping("/communityFunRoom")
    public String CommunityFunRoom(Map<String, Object> map) {
        map.put("funtype", "room");
        return "/communityFun/room";
    }

    /*-------学有所乐end--------*/

}
