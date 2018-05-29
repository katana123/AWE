package com.awe.Handler.community;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CommunityHandler {




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
