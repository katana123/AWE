package com.awe.Handler.mainpage;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Map;

@Controller
public class MainpageHandler {

    @RequestMapping("video")
    public String video(Map<String, Object> map) {
        map.put("mainpageno", 5);
        return "/mainpage/video";
    }

    @RequestMapping("resources")
    public String resources(Map<String, Object> map) {
        map.put("mainpageno", 4);
        return "/mainpage/resources";
    }

    @RequestMapping("activity")
    public String activity(Map<String, Object> map) {
        map.put("mainpageno", 3);
        return "/mainpage/activity";
    }

    @RequestMapping("headline")
    public String headline(Map<String, Object> map) {
        map.put("mainpageno", 2);
        return "/mainpage/headline";
    }

    @RequestMapping("index")
    public String index() {
        return "redirect:/";
    }
}
