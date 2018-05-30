package com.awe.Handler.product;

import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Map;

public class productHandler {
    @RequestMapping("/product/main")
    public String productmain(Map<String, Object> map) {
        map.put("action", "main");
        return "/organ/main";
    }

    @RequestMapping("/product/headline")
    public String productheadline(Map<String, Object> map) {
        map.put("action", "headline");
        return "/product/headline";
    }

    @RequestMapping("/product/activity")
    public String productactivity(Map<String, Object> map) {
        map.put("action", "activity");
        return "/product/activity";
    }

    @RequestMapping("/product/resources")
    public String productresources(Map<String, Object> map) {
        map.put("action", "resources");
        return "/product/resources";
    }

    @RequestMapping("/product/video")
    public String productvideo(Map<String, Object> map) {
        map.put("action", "video");
        return "/product/video";
    }

    @RequestMapping("/product/about")
    public String productabout(Map<String, Object> map) {
        map.put("action", "video");
        return "/product/about";
    }

}
