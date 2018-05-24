package com.awe.Handler.community;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CommunityHandler {

    @RequestMapping("/communityMainpage")
    public String CommunityMainpage() {
        return "/communityMainpage/mainpage";
    }
}
