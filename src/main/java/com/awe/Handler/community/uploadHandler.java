package com.awe.Handler.community;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;


import java.io.File;
import java.io.IOException;
import java.util.UUID;

@Controller
public class uploadHandler {
    @RequestMapping("addpic")
    public String addPet(MultipartFile pic) throws IllegalStateException {
        try {
            if (!pic.isEmpty()) {
                String path = "c:\\uploadfiles\\image\\";
                String originalFileName = pic.getOriginalFilename();
                // 新的图片名称
                String newFileName = UUID.randomUUID() + originalFileName.substring(originalFileName.lastIndexOf("."));
                // 新的图片
                File newFile = new File(path + newFileName);
                // 将内存中的数据写入磁盘
                pic.transferTo(newFile);
                return newFileName;
            } else {
                return null;
            }
        } catch (IllegalStateException ex) {
            return null;
        } catch (IOException ex) {
            return null;
            // return  "/communityCreate/setup";
        }
    }
}
