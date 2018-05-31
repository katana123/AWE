package com.awe.Test;

import com.awe.Repositry.register.ccusersRepositry;
import com.awe.Service.community.CommunityService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import javax.mail.MessagingException;
import javax.sql.DataSource;
import java.io.UnsupportedEncodingException;
import java.sql.SQLException;

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
    public void sd(){
        communityService.linkedCCusers(1,2);
    }*/

}