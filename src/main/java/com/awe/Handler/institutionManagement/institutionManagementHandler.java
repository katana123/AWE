package com.awe.Handler.institutionManagement;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class institutionManagementHandler {

    /*-----------机构管理start----------*/

    //权限设置页面
    @RequestMapping("/authoritySetting")
    public String AuthoritySetting() {
        return "/institutionManagement/authoritySetting";
    }

    //机构成员页面
    @RequestMapping("/institutionMembers")
    public String InstitutionMembers() {
        return "/institutionManagement/institutionMembers";
    }

    //机构资料页面
    @RequestMapping("/institutionData")
    public String InstitutionData() {
        return "/institutionManagement/institutionData";
    }
    /*-----------机构管理end----------*/
}
