<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/5/7
  Time: 22:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/dist/register/css/register_aliyun.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/dist/register/css/reg_check.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/dist/register/css/index.css">

    <script src="${pageContext.request.contextPath }/dist/register/js/jquery.min.js"></script>
</head>
<body>
<div class="header-fix">
    <div class="header">
        <div class="auto">
            <div class="header-logo"><a href="" class="logo"></a><span class="logo-title">账号注册</span></div>
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
    <span class="login-tip"> 如有帐号可直接登录， <a href="../登录/登录.html"> 立即登录 </a></span>
    <div aria-hidden="false" class="next-dialog right next-overlay-inner animated zoomIn mobile-check-dialog"
         role="dialog" aria-labelledby="dialog-header-3" style="width: 880px;
    background-color: #efeff3; left: 160px; top: 139.5px;z-index: 10;    position: relative;">
        <div prefix="next-" id="dialog-header-3" class="next-dialog-header">恭喜注册成功</div>
        <div prefix="next-" id="dialog-body-4" class="next-dialog-body">
            <form class="next-form next-form-left ver next-form-large">
                <div class="next-form-item next-row" label="手机号:">
                    <label class="next-col-fixed-5 next-form-item-label tel"></label>
                    <div class="next-col-18 next-form-item-control">
                        <p class="next-form-text-align">
                            登录名：${ccuser.cusername}（您已成为AWE会员，欢迎进入AWE网站，你可以正常浏览网站及选择商品，谢谢！</p>
                        <!-- react-text: 11 -->
                        <!-- /react-text -->
                        <div class=""></div>
                        <!-- react-text: 13 -->
                        <!-- /react-text -->
                    </div>
                </div>
                <div class="next-form-item next-row" label="校验码:" required="">
                    <label required="" class="next-col-fixed-5 next-form-item-label"> </label>
                    <div class="next-col-18 next-form-item-control">
                        <div class="next-row">
                            <div class="next-col next-col-12">
                                <div class="next-form-item next-row" style="margin-right: 10px;">
                                    <div class=" next-form-item-control">
                                        绑定手机是${fn:substring(ccuser.cupn, 0, 3)}********用于接受验证码
                                        <div class="next-form-item-explain">
                                        </div>
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
                        <a href="${pageContext.request.contextPath }/index.jsp"> >>返回AWE首页</a>

                        <a class="next-btn next-btn-primary next-btn-large"
                           href="${pageContext.request.contextPath }/id_verify/${ccuser.cuid}">绑定邮箱</a>
                        <span style="font-size:14px;">请绑定邮箱用于产品开通，到期，安全，关停的相关通知</span>
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
