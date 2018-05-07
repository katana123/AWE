package com.awe.Handler.register;

import com.awe.Entity.CCusers;
import com.awe.Service.register.CcusersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Map;

@Controller
public class RegisterHandler {

    @Autowired
    private CcusersService ccusersService;

    @RequestMapping("/register")
    public String register(Map<String , Object> map){
        map.put("cCusers" , new CCusers());
        return "/register/bbbb";
    }
}
