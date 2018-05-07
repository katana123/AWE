package com.awe.Service.register;

import com.awe.Entity.CCusers;
import com.awe.Repositry.register.ccusersRepositry;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

@Service

public class CcusersService {

    @Autowired
    private ccusersRepositry ccusersRepositry;

    //注册
    public void register(CCusers cCusers){
        ccusersRepositry.saveAndFlush(cCusers);
    }
}
