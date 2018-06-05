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

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;
import java.util.Map;
import java.util.Random;

import static com.awe.Util.common.SmsUtil.sendMessage;

@Controller
public class LoginHandler {

    @Autowired
    private CcusersService ccusersService;

    @RequestMapping("/logout")
    public String logout(HttpServletRequest request, HttpServletResponse response) {
        Cookie[] cookies = request.getCookies();
        if (null == cookies) {
            System.out.println("没有cookie");
        } else {
            for (Cookie cookie : cookies) {
                //如果找到同名cookie，就将value设置为null，将存活时间设置为0，再替换掉原cookie，这样就相当于删除了。

                if (cookie.getName().equals("userlogin")) {
                    Cookie cookie1 = new Cookie("userlogin", null);
                    cookie.setMaxAge(0);
                    response.addCookie(cookie1);
                    break;
                }
            }
        }

        return "redirect:/index";
    }

    @RequestMapping("/loginSccuess")
    public String loginSccuess(Map<String, Object> map) {

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
                                   @RequestParam(value = "cpwd", required = true) String Cpwd,
                                   HttpServletResponse response) {
        CCusers cCusers = ccusersService.getByCusername(Cusername);
        if (null == cCusers) {
            return "0";//用户不存在
        } else {
            List<CCusers> cCusers2 = ccusersService.getByCusernameAndCpwd(Cusername, Cpwd);
            if (null == cCusers2 || cCusers2.size() == 0) {
                return "1";//密码错误
            } else {
                Cookie cookie = new Cookie("userlogin", Cusername);//将登录信息加入cookie中
                cookie.setPath("/");// 这个要设置
                cookie.setMaxAge(60 * 60 * 24 * 3); //设置cookie最大失效时间<br> cookie1.setMaxAge(60*60*24*3);
                response.addCookie(cookie);
                cookie = new Cookie("userid", cCusers2.get(0).getCuid() + "");//将登录信息加入cookie中
                cookie.setPath("/");// 这个要设置
                cookie.setMaxAge(60 * 60 * 24 * 3); //设置cookie最大失效时间<br> cookie1.setMaxAge(60*60*24*3);
                response.addCookie(cookie);
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
