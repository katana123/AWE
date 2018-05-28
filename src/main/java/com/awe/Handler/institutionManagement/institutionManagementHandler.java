package com.awe.Handler.institutionManagement;

import com.awe.Entity.CCinfo;
import com.awe.Service.community.CommunityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.Map;

@Controller
public class institutionManagementHandler {

    @Autowired
    private CommunityService communityService;

    /*-----------机构管理start----------*/

    //权限设置页面
    @RequestMapping("/authoritySetting")
    public String AuthoritySetting() {
        return "/institutionManagement/authoritySetting";
    }

    //机构成员页面
    @RequestMapping(value = "/institutionMembers/{ccid}", method = RequestMethod.GET)
    public String InstitutionMembers(@PathVariable(value = "ccid", required = true) Integer ccid, Map<String, Object> map) {
        CCinfo cCinfo = communityService.get(ccid);
        map.put("community", cCinfo);
        return "/institutionManagement/institutionMembers";
    }

    //机构资料页面
    @RequestMapping(value = "/institutionData/{ccid}", method = RequestMethod.GET)
    public String InstitutionData(@PathVariable(value = "ccid", required = true) Integer ccid, Map<String, Object> map) {
        CCinfo cCinfo = communityService.get(ccid);
        map.put("community", cCinfo);
        return "/institutionManagement/institutionData";
    }
    /*-----------机构管理end----------*/
}
