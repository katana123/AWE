package com.awe.Handler.login;

import com.aliyuncs.exceptions.ClientException;
import com.awe.Entity.CCusers;
import com.awe.Service.register.CcusersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
import java.util.Map;
import java.util.Random;

import static com.awe.Util.common.SmsUtil.sendMessage;

@Controller
public class LoginHandler {

    @Autowired
    private CcusersService ccusersService;

    @RequestMapping("/loginSccuess")
    public String loginSccuess(Map<String, Object> map) {
        System.out.println(22222);
        map.put("ccuser", new CCusers());
        return "redirect:/index.jsp";
    }

    @ResponseBody
    @RequestMapping(value = "/ajaxValidatePhone", method = RequestMethod.POST)
    public String validatePhone(@RequestParam(value = "phone", required = true) String Phone) {
        CCusers cCusers = ccusersService.getByCupn(Phone);
        if (null == cCusers) {
            return "0";//用户不存在
        } else {
            Random random = new Random();
            String result = "";
            for (int i = 0; i < 6; i++) {
                result += random.nextInt(10);
            }
            try {
                sendMessage(Phone, result);
                return result;
            } catch (ClientException e) {
                e.printStackTrace();
                return "-1";//网络或程序错误
            } catch (InterruptedException e) {
                e.printStackTrace();
                return "-1";//网络或程序错误
            }
        }
    }

    @ResponseBody
    @RequestMapping(value = "/ajaxValidateUnamePwd", method = RequestMethod.POST)
    public String validateUnamePwd(@RequestParam(value = "cusername", required = true) String Cusername,
                                   @RequestParam(value = "cpwd", required = true) String Cpwd) {
        List<CCusers> cCusers = ccusersService.getByCusername(Cusername);
        if (null == cCusers || cCusers.size() == 0) {
            return "0";//用户不存在
        } else {
            List<CCusers> cCusers2 = ccusersService.getByCusernameAndCpwd(Cusername, Cpwd);
            if (null == cCusers2 || cCusers2.size() == 0) {
                return "1";//密码错误
            } else {
                return "2";//登录成功
            }
        }
    }

    @RequestMapping("/login")
    public String register(Map<String, Object> map) {
        map.put("ccuser", new CCusers());
        return "/login/login";
    }
}
