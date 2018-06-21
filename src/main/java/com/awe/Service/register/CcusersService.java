package com.awe.Service.register;

import com.awe.Entity.CCusers;
import com.awe.Repositry.register.ccusersRepositry;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class CcusersService {

    @Autowired
    private ccusersRepositry ccusersRepositry;

    /*@Transactional(readOnly = true)
    public int getCuidbyCusername(String cusername){
        return ccusersRepositry.getCuidbyCusername(cusername);
    }*/
    @Transactional
    public void save(CCusers cCusers) {
        cCusers.setCidc("0");
        cCusers.setCright("0");
        ccusersRepositry.saveAndFlush(cCusers);
    }

    @Transactional(readOnly = true)
    public CCusers getByCupn(String cupn) {
        return ccusersRepositry.getByCupn(cupn);
    }

    @Transactional(readOnly = true)
    public int getCuidbyCusername(String cuserName) {
        return ccusersRepositry.getCuidbyCusername(cuserName);
    }

    @Transactional(readOnly = true)
    public List<CCusers> getByCusernameAndCpwd(String cuserName, String cPwd) {
        return ccusersRepositry.getByCusernameAndCpwd(cuserName, cPwd);
    }

    @Transactional
    public void updateEmailByCuid(String cemail,  Long cuid){
        ccusersRepositry.updateEmailByCuid(cemail,cuid);
    }

    @Transactional(readOnly = true)
    public CCusers findOne(Long cuid){
        return ccusersRepositry.getByCuid(cuid);
    }

    @Transactional(readOnly = true)
    public CCusers getByCusername(String cuserName) {
        return ccusersRepositry.getByCusername(cuserName);
    }

    //注册
    @Transactional
    public void register(CCusers cCusers){

        if(cCusers.getCuid() == 0){
            cCusers.setCemail("0");
            cCusers.setCidc("0");
            cCusers.setCright("0");
        }else{
            cCusers.setCidc("0");
            cCusers.setCright("0");
        }
        ccusersRepositry.saveAndFlush(cCusers);
    }
}
