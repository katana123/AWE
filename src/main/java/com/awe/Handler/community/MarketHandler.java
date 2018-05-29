package com.awe.Handler.community;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Map;

@Controller
public class MarketHandler {
    /*-------------商城start-------------*/
    @RequestMapping("/communityMarketProperty")
    public String MarketProperty(Map<String, Object> map) {
        map.put("markettype", "property");
        return "/communityMarket/property";
    }

    @RequestMapping("/MarketGift")
    public String MarketGift(Map<String, Object> map) {
        map.put("markettype", "gift");
        return "/communityMarket/gift";
    }

    @RequestMapping("/MarketResource")
    public String MarketResource(Map<String, Object> map) {
        map.put("markettype", "resource");
        return "/communityMarket/resource";
    }

    @RequestMapping("/MarketOnebuy")
    public String MarketOnebuy(Map<String, Object> map) {
        map.put("markettype", "onebuy");
        return "/communityMarket/onebuy";
    }
    /*--------------商城end--------------*/
}
