package com.awe.Handler.institutionManagement;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class institutionManagementHandler {

    /*-----------机构管理start----------*/
    @RequestMapping("/institutionData")
    public String InstitutionData() {
        return "/institutionManagement/institutionData";
    }
    /*-----------机构管理end----------*/
}
