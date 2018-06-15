package com.awe.Test;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.awe.Entity.CCusers;
import com.awe.Repositry.register.ccusersRepositry;
import com.awe.Service.community.CommunityService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;

import javax.mail.MessagingException;
import javax.sql.DataSource;
import java.io.UnsupportedEncodingException;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

import static com.awe.Util.common.MailUtil.sendMail;


public class MsgTest {

    private ApplicationContext ctx = null;
    @Autowired
    private ccusersRepositry ccusersRepositry = null;
    @Autowired
    private CommunityService communityService = null;

    {

        ctx = new ClassPathXmlApplicationContext("applicationContext.xml");
        ccusersRepositry = ctx.getBean(ccusersRepositry.class);
        communityService = ctx.getBean(CommunityService.class);
    }


    @Test
    public void testDataSource() throws SQLException {
        DataSource dataSource = ctx.getBean(DataSource.class);
        System.out.println(dataSource.getConnection());
    }

    @Test
    public void sendEmail() throws UnsupportedEncodingException, MessagingException {
        String to = "664943439@qq.com";
        String subject = "这是邮件的主题";
        String body = "这是邮件的正文";
        sendMail(to,subject,body);
    }

    /*@Test
    public void linkedMemberss() {
        HashMap map = new HashMap();
        List cCusers = communityService.findInstitutionMembers(2);
        String text = JSON.toJSONString(cCusers);
        map.put("members", text);
        //System.out.println(map.toString());
        for (Object obj : map.keySet()) {
            Object value = map.get(obj);
            System.out.println(value);
        }
    }*/

//    @Test
//    public void unlinkMember() {
//        communityService.deleteLinkedMember((long) 1, (long) 20);
//    }

    @Test
    public void getCuidbyCusername() {
        int cuid = ccusersRepositry.getCuidbyCusername("awelogin");
        System.out.println(cuid);
    }

    @Test
    public void qq() {
        HashMap map = new HashMap();
        Page<CCusers> c = communityService.findInstitutionMembers(1, 1, 1);
        List<CCusers> a = c.getContent();
        //JSONArray jsonArray = (JSONArray) JSONArray.toJSON(a);
        System.out.println(a);
//        map.put("v",c);
//        for (Object obj : map.keySet()) {
//            Object value = map.get(obj);
//            System.out.println(value);
//        }

    }

}