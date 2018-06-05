package com.awe.Handler.communityManagement;

import com.awe.Data.CommunityMembers;
import com.awe.Service.community.CommunityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;
import java.util.Map;

@Controller
public class communityManagementHandler {

    @Autowired
    private CommunityService communityService;

    @RequestMapping(value = "/memberManagement/{ccid}", method = RequestMethod.GET)
    public String memberManagement(@PathVariable(value = "ccid", required = true) Integer ccid, Map<String, Object> map){
        List<CommunityMembers> CommunityMembers = communityService.CommunityMembers(1);
        map.put("CommunityMembers", CommunityMembers);
        return "/communityManagement/memberManagement";
    }
}
