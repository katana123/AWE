package com.awe.Handler.society;

import com.awe.Entity.CCinfo;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Map;

@Controller
public class SocietyPostpage {
    //打开allpost页面
    @RequestMapping("/societyPostpage")
    public String SocietyPostpage(Map<String, Object> map) {
        map.put("content", "post");
        map.put("tabpage", "allpost");
        return "/societyPostpage/societypost";
    }

    //打开notice页面
    @RequestMapping("/societyNotice")
    public String SocietyNotice(Map<String, Object> map) {
        map.put("content", "post");
        map.put("tabpage", "notice");
        return "/societyPostpage/societynotice";
    }

    //打开mypost页面
    @RequestMapping("/societyMypost")
    public String SocietyMypost(Map<String, Object> map) {
        map.put("content", "post");
        map.put("tabpage", "mypost");
        return "/societyPostpage/societymypost";
    }

    //打开event页面
    @RequestMapping("/societyEvent")
    public String SocietyEvent(Map<String, Object> map) {
        map.put("content", "post");
        map.put("tabpage", "event");
        return "/societyPostpage/societyevent";
    }

    //打开essencepost页面
    @RequestMapping("/societyEssencepost")
    public String SocietyEssencepost(Map<String, Object> map) {
        map.put("content", "post");
        map.put("tabpage", "essence");
        return "/societyPostpage/societyessencepost";
    }
}
