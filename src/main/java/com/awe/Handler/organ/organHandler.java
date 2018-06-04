package com.awe.Handler.organ;

import org.springframework.stereotype.Controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
import java.util.Map;
import java.util.Random;


@Controller
public class organHandler {
    @RequestMapping("/organ/main")
    public String organmain(Map<String, Object> map) {
        // map.put("ccuser", new CCusers());
        return "/organ/main";
    }

    @RequestMapping("/organ/headline")
    public String organheadline(Map<String, Object> map) {
        return "/organ/headline";
    }

    @RequestMapping("/organ/activity")
    public String organactivity(Map<String, Object> map) {
        return "/organ/activity";
    }

    @RequestMapping("/organ/resource")
    public String organresources(Map<String, Object> map) {
        return "/organ/resource";
    }

    @RequestMapping("/organ/video")
    public String organvideo(Map<String, Object> map) {
        return "/organ/video";
    }

    @RequestMapping("/organ/about")
    public String organabout(Map<String, Object> map) {
        return "/organ/about";
    }
}
