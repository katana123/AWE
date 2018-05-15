package com.awe.Handler.register;

import com.aliyuncs.dysmsapi.model.v20170525.SendSmsResponse;
import com.aliyuncs.exceptions.ClientException;
import com.awe.Entity.CCusers;
import com.awe.Service.register.CcusersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.mail.MessagingException;
import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.Map;
import java.util.Random;

import static com.awe.Util.common.MailUtil.sendMail;
import static com.awe.Util.common.SmsUtil.sendMessage;
import static com.awe.Util.common.SmsUtil.sendSms;

@Controller
public class RegisterHandler {

    @Autowired
    private CcusersService ccusersService;

    //发送短信验证码
    @ResponseBody
    @RequestMapping(value = "/ajaxSendSmsVerify", method = RequestMethod.POST)
    public String sendSmsVerify(@RequestParam(value = "phone", required = true) String phone) {
        Random random = new Random();
        String result = "";
        for (int i = 0; i < 6; i++) {
            result += random.nextInt(10);
        }
        try {
            sendMessage(phone, result);
            return result;
        } catch (ClientException e) {
            e.printStackTrace();
            return "网络或程序错误！";
        } catch (InterruptedException e) {
            e.printStackTrace();
            return "网络或程序错误！";
        }
    }

    @RequestMapping("/bound_success/{cuid}")
    public String boundSuccess(@PathVariable("cuid") Long cuid,Map<String, Object> map){
        CCusers cCusers = ccusersService.findOne(cuid);
        map.put("ccuser",cCusers);
        return "/register/bound_success";
    }

    //绑定邮箱
    @RequestMapping(value = "/bound_email/{cuid}",method = RequestMethod.POST)
    public String boundEmail(@RequestParam(value = "cemail",required = true) String email,@PathVariable("cuid") Long cuid){
        ccusersService.updateEmailByCuid(email,cuid);
        return "redirect:/bound_success/"+cuid;
    }

    //发送邮箱验证码
    @ResponseBody
    @RequestMapping(value = "/ajaxSendEmailVerify",method = RequestMethod.POST)
    public String sendEmailVerify(@RequestParam(value = "email",required = true) String email){
        Random random = new Random();
        String result = "";
        for (int i=0;i<6;i++)
        {
            result+=random.nextInt(10);
        }
        String subject = "邮箱验证码";
        try {
            sendMail(email, subject, "您的邮箱验证码是：" + result);
            return result;
        } catch (MessagingException e) {
            e.printStackTrace();
            return "网络或程序错误！";
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            return "网络或程序错误！";
        }
    }

    @RequestMapping("/modify_email/{cuid}")
    public String modifyEmail(@PathVariable("cuid") Long cuid,Map<String, Object> map){
        CCusers cCusers = ccusersService.findOne(cuid);
        map.put("ccuser",cCusers);
        return "/register/modify_email";
    }

    @RequestMapping("/id_verify/{cuid}")
    public String idVerify(@PathVariable("cuid") Long cuid,Map<String, Object> map){
        CCusers cCusers = ccusersService.findOne(cuid);
        map.put("ccuser",cCusers);
        return "/register/id_verify";
    }

    @RequestMapping("/register_success/{cuid}")
    public String registerSuccess(@PathVariable("cuid") Long cuid,Map<String, Object> map){
        CCusers cCusers = ccusersService.findOne(cuid);
        map.put("ccuser",cCusers);
        return "/register/register_success";
    }

    //验证用户名是否存在，存在返回1，不存在返回0
    @ResponseBody
    @RequestMapping(value = "/ajaxValidateCusername",method = RequestMethod.POST)
    public boolean validateCusername(@RequestParam(value = "nick", required = true) String Cusername) {
        List<CCusers> cCusers = ccusersService.getByCusername(Cusername);
        if (null == cCusers || cCusers.size() == 0) {
            return true;
        } else {
            return false;
        }
    }

    @RequestMapping(value = "/register_add",method = RequestMethod.POST)
    public String insert(CCusers  cCusers){
        ccusersService.register(cCusers);
        return "redirect:/register_success/"+cCusers.getCuid();
    }

    @RequestMapping("/register")
    public String register(Map<String , Object> map){
        map.put("ccuser" , new CCusers());
        return "/register/register";
    }
}
