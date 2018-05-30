package com.awe.Handler.community;

import com.awe.Entity.CCinfo;
import com.awe.Service.community.CreateService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class CreateHandler {
    @Autowired
    private CreateService createService;

    //打开社区
    @RequestMapping("/communitySetup")
    public String CommunitySetup() {

        return "/communityCreate/setup";
    }

    //创建社区
    @RequestMapping(value = "/createSetup", method = RequestMethod.POST)
    public String CreateSetup(CCinfo ccinfo) {

        createService.insert(ccinfo);
        return "/communityCreate/checked";
    }

}
