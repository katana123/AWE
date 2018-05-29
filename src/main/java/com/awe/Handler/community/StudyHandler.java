package com.awe.Handler.community;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Map;

@Controller
public class StudyHandler {
    @RequestMapping("/Studycom")
    public String Studycom(Map<String, Object> map) {
        map.put("studytype", "com");
        return "/communityStudy/studycom";
    }

    @RequestMapping("/Studyroom")
    public String Studyroom(Map<String, Object> map) {
        map.put("studytype", "room");
        return "/communityStudy/studyroom";
    }

    @RequestMapping("/Studyhall")
    public String Studyhall(Map<String, Object> map) {
        map.put("studytype", "hall");
        return "/communityStudy/studyhall";
    }
}
