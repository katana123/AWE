package com.awe.Handler.community;

import com.awe.Entity.CCinfo;
import com.awe.Entity.CCusers;
import com.awe.Service.community.CreateService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;
import java.util.UUID;

@Controller
public class CreateHandler {
    @Autowired
    private CreateService createService;

    //打开社区创建页面
    @RequestMapping("/communitySetup")
    public String CommunitySetup(Map<String, Object> map) {

        map.put("ccinfo", new CCinfo());
        return "/communityCreate/setup";
    }

    //验证用户名是否存在，存在返回false，不存在返回 true
    @ResponseBody
    @RequestMapping(value = "/ajaxValidateCcname", method = RequestMethod.POST)
    public boolean validateCcname(@RequestParam(value = "nick", required = true) String ccname) {
        CCinfo cCinfo = createService.getByCcname(ccname);
        if (null == cCinfo) {
            return true;
        } else {
            return false;
        }
    }


    //创建社区+处理上传文件
    @RequestMapping(value = "/createSetup", method = RequestMethod.POST)
    private String fildUpload(CCinfo ccinfo, Map<String, Object> map, @RequestParam(value = "CClpa", required = false) MultipartFile file,
                              HttpServletRequest request) throws Exception {
        //基本表单
        System.out.println(ccinfo.toString());

        //获得物理路径webapp所在路径
        String pathRoot = request.getSession().getServletContext().getRealPath("");
        String path = "";
        if (!file.isEmpty()) {
            //生成uuid作为文件名称
            String uuid = UUID.randomUUID().toString().replaceAll("-", "");
            //获得文件类型（可以判断如果不是图片，禁止上传）
            String contentType = file.getContentType();
            //获得文件后缀名称
            String imageName = contentType.substring(contentType.indexOf("/") + 1);
            path = "/images/" + uuid + "." + imageName;
            // String path = request.getServletContext().getRealPath("/images/");
            //判断路径是否存在，如果不存在就创建一个
            String filename = file.getOriginalFilename();
            File filepath = new File(pathRoot + "/images/", filename);
            if (!filepath.getParentFile().exists()) {
                filepath.getParentFile().mkdirs();
            }
            file.transferTo(new File(pathRoot + path));
        }
        //System.out.println(path);
        request.setAttribute("imagesPath", path);
        ccinfo.setCclpa(path);
        if (validateCcname(ccinfo.getCcname())) {
            try {
                createService.insert(ccinfo);
            } catch (Exception exception) {
                System.out.println("新增数据异常exception");
            }
        }
        map.put("ccname", ccinfo.getCcname());
        return "/communityCreate/checked";
    }

    //创建社区审核geren
    @RequestMapping(value = "/personcomplete", method = RequestMethod.POST)
    public String Createcheck(@RequestParam(value = "ccname", required = true) String ccname) {
        CCinfo ccinfo = createService.getByCcname(ccname);
        createService.updatecct("1", ccinfo.getCcid());
        return "/communityCreate/complete";
    }

    //验证用户名是否存在，存在返回1，不存在返回0
    @ResponseBody
    @RequestMapping(value = "/ajaxInstCccname", method = RequestMethod.POST)
    public boolean validateInstCccname(@RequestParam(value = "nick", required = true) String cccname) {
        CCinfo cCinfo = createService.getByCccname(cccname);
        if (null == cCinfo) {
            return true;
        } else {
            return false;
        }
    }
}
