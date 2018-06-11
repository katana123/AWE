package com.awe.Handler.common;

import com.awe.Entity.IResources;
import com.awe.Service.community.CommunityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.util.Date;

@Controller
public class FileUploadHandler {
    @Autowired
    private CommunityService communityService;

    @RequestMapping(value = "/upload/{ccid}", method = RequestMethod.POST)
    public String upload(HttpServletRequest request,
                         @PathVariable(value = "ccid", required = true) Integer ccid,
                         @RequestParam("file") MultipartFile file) throws Exception {

        //如果文件不为空，写入上传路径
        if (!file.isEmpty()) {
            //上传文件路径
            String path = request.getServletContext().getRealPath("/images/");
            //上传文件名
            String filename = file.getOriginalFilename();
            //文件类型
            String filetype = file.getContentType();
            //文件大小
            Long filesize = file.getSize();
            //文件名
            String filenames = file.getName();

            File filepath = new File(path, filename);
            //判断路径是否存在，如果不存在就创建一个
            if (!filepath.getParentFile().exists()) {
                filepath.getParentFile().mkdirs();
            }
            //将上传文件保存到一个目标文件当中
            file.transferTo(new File(path + File.separator + filename));


            IResources resources = new IResources();
            resources.setPath(path);
            resources.setSize(filesize.toString());
            resources.setTitle(filename);
            resources.setUploadtime(new Date());
            resources.setMajorid(1);
            resources.setMinorid(2);
            resources.setCcid(Long.valueOf(ccid));
            resources.setContentType(filetype);

            communityService.uploadResource(resources);

            return "redirect:/dataManagement/" + ccid;
        } else {
            return "error";
        }

    }
}