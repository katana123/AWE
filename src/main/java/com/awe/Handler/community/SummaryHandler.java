package com.awe.Handler.community;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Map;

@Controller
public class SummaryHandler {
    @RequestMapping("/communitySummaryAll")
    public String Community(Map<String, Object> map) {
        map.put("sumtype", "all");
        return "/communitySummary/allcommunity";
    }

    @RequestMapping("/communitytopic")
    public String CommunityTopic(Map<String, Object> map) {
        map.put("sumtype", "topic");
        return "/communitySummary/communitytopic";
    }

    @RequestMapping("/courselist")
    public String CourseList(Map<String, Object> map) {
        map.put("sumtype", "list");
        return "/communitySummary/courselist";
    }

    @RequestMapping("/institutioncommunity")
    public String InstitutionCommunity(Map<String, Object> map) {
        map.put("sumtype", "instcommunity");
        return "/communitySummary/institutioncommunity";
    }

    @RequestMapping("/institutionteacher")
    public String InstitutionTeacher(Map<String, Object> map) {
        map.put("sumtype", "instteacher");
        return "/communitySummary/institutionteacher";
    }

    @RequestMapping("/mycommunity")
    public String MyCommunity(Map<String, Object> map) {
        map.put("sumtype", "mycommunity");
        map.put("comtype", "mycommunity");
        return "/communitySummary/mycommunity";
    }


    @RequestMapping("/myfavoritecommunity")
    public String MyFavoriteCommunity(Map<String, Object> map) {
        map.put("sumtype", "mycommunity");
        map.put("comtype", "myfavoritecommunity");
        return "/communitySummary/myfavoritecommunity";
    }

    @RequestMapping("/myjoincommunity")
    public String MyJoinCommunity(Map<String, Object> map) {
        map.put("sumtype", "mycommunity");
        map.put("comtype", "myjoincommunity");
        return "/communitySummary/myjoincommunity";
    }

    @RequestMapping("/mycollection")
    public String MyCollection(Map<String, Object> map) {
        map.put("sumtype", "myfavorite");
        map.put("comtype", "mycollection");
        return "/communitySummary/mycollection";
    }

    @RequestMapping("/mypost")
    public String MyPost(Map<String, Object> map) {
        map.put("sumtype", "mypost");
        map.put("comtype", "mypost");
        return "/communitySummary/mypost";
    }

    @RequestMapping("/myreply")
    public String MyReply(Map<String, Object> map) {
        map.put("sumtype", "myreply");
        map.put("comtype", "myreply");
        return "/communitySummary/myreply";
    }

    @RequestMapping("/teachercommunity")
    public String TeacherCommunity(Map<String, Object> map) {
        map.put("sumtype", "teachercommunity");
        return "/communitySummary/teachercommunity";
    }
}
