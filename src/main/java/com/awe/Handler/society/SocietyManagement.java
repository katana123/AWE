package com.awe.Handler.society;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Map;

@Controller
public class SocietyManagement {
    //打开mainpage页面
    @RequestMapping("/societyMainpage")
    public String SocietyMainpage(Map<String, Object> map) {
        map.put("content", "inst");
        map.put("tabpage", "home");

        return "/societyManagement/societymainpage";
    }

    //打开course页面
    @RequestMapping("/societyCourse")
    public String SocietyCourse(Map<String, Object> map) {
        map.put("content", "inst");
        map.put("tabpage", "course");
        return "/societyManagement/societycourse";
    }

    //打开teacher页面
    @RequestMapping("/societyTeacher")
    public String SocietyTeacher(Map<String, Object> map) {
        map.put("content", "inst");
        map.put("tabpage", "teacher");
        return "/societyManagement/societyteacher";
    }

    //打开resource页面
    @RequestMapping("/societyResource")
    public String SocietyResource(Map<String, Object> map) {
        map.put("content", "inst");
        map.put("tabpage", "resource");
        return "/societyManagement/societyresource";
    }

    //打开about页面
    @RequestMapping("/societyAbout")
    public String SocietyEssencepost(Map<String, Object> map) {
        map.put("content", "inst");
        map.put("tabpage", "about");
        return "/societyManagement/societyabout";
    }
}
