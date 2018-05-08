<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/5/8
  Time: 5:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/dist/register/css/register_aliyun.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/dist/register/css/reg_check.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/dist/register/css/index.css">
</head>
<body>
<div class="header-fix">
    <div class="header">
        <div class="auto">
            <div class="header-logo"><a href="" class="logo"></a><span class="logo-title">修改安全邮箱</span></div>
            <div class="header-nav">
                <ul class="">
                    <li class="nav-1 header-nav-li"><a href="../学社首页/学社首页.htm">首&nbsp;&nbsp;页</a></li>
                    <li class="nav-4 header-nav-li"><a href="">帮助中心</a></li>
                    <li class="nav-5 header-nav-li"><a href="">关于我们</a></li>
                </ul>
            </div>
        </div>
    </div>
</div>
<div class="content">

    <div aria-hidden="false" class="next-dialog right next-overlay-inner animated zoomIn mobile-check-dialog"
         role="dialog" aria-labelledby="dialog-header-3" style="width: 880px;
    background-color: #efeff3; left: 160px; top: 139.5px;z-index: 10;    position: relative;">
        <div prefix="next-" id="dialog-header-3" class="next-dialog-header">恭喜绑定成功</div>
        <div prefix="next-" id="dialog-body-4" class="next-dialog-body">
            <form class="next-form next-form-left ver next-form-large">
                <div class="next-form-item next-row" label="手机号:">
                    <label class="next-col-fixed-5 next-form-item-label tel"></label>
                    <div class="next-col-18 next-form-item-control">
                        <p class="next-form-text-align">
                            登录名：${ccuser.cusername}（您已成为AWE会员，欢迎进入AWE网站，你可以正常浏览网站及选择商品，谢谢！</p>


                    </div>
                </div>
                <div class="next-form-item next-row" label="校验码:" required="">
                    <label required="" class="next-col-fixed-5 next-form-item-label"> </label>
                    <div class="next-col-18 next-form-item-control">
                        <div class="next-row">
                            <div class="next-col next-col-12">
                                <div class="next-form-item next-row" style="margin-right: 10px;">
                                    <div class=" next-form-item-control">
                                        绑定邮箱是${ccuser.cemail},用于接受消息通知等
                                        <!-- react-text: 23 -->
                                        <!-- /react-text -->
                                        <div class="next-form-item-explain">

                                            <!-- <span class="code-send-tip">请输入您的手机收到的验证码</span>-->

                                        </div>
                                        <!-- react-text: 25 -->
                                        <!-- /react-text -->
                                    </div>
                                </div>
                            </div>
                            <div class="next-col next-col-12">
                                <div class="next-form-item next-row">
                                    <div class=" next-form-item-control">

                                        <!-- react-text: 31 -->
                                        <!-- /react-text -->
                                        <div class=""></div>
                                        <!-- react-text: 33 -->
                                        <!-- /react-text -->
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- react-text: 34 -->
                        <!-- /react-text -->
                        <div class=""></div>
                        <!-- react-text: 36 -->
                        <!-- /react-text -->
                    </div>
                </div>
                <div class="next-form-item next-row" label="">
                    <label class="next-col-fixed-5 next-form-item-label"></label>
                    <div class="next-col-18 next-form-item-control">
                        <a href="${pageContext.request.contextPath }/index.jsp"
                           style="font-size:14px; font-weight:600;color: #5fbfd0"> >>返回AWE首页</a>
                        <!--
                                  <a class="next-btn next-btn-primary next-btn-large">
                                  修改绑定邮箱
                                  </a>

                        -->
                        <!-- react-text: 42 -->
                        <!-- /react-text -->
                        <div class=""></div>
                        <!-- react-text: 44 -->
                        <!-- /react-text -->
                    </div>
                </div>
            </form>
        </div>
    </div>

</div>
</body>
</html>
