<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="keywords" content="awe"/>
    <meta name="description" content="awe"/>
    <meta name="viewport" content="width=device-width"/>
    <!--<link rel="stylesheet" href="css/my_community.css"/>-->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/dist/institutionJManagement/css/reset.css"/>
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath }/dist/institutionJManagement/css/function.css"/>
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath }/dist/institutionJManagement/css/head.css"/>
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath }/dist/institutionJManagement/css/club.css"/>
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath }/dist/institutionJManagement/css/jquery.page.css"/>
</head>
<body>
<div style="width: 100%;background-color: #FFF;">
    <div class="g-head">
        <div class="header_top">
            <div class="g-search f-cb"><a class="g-logo" href=""><img
                    src="${pageContext.request.contextPath }/dist/institutionJManagement/images_common/logo.png"></a>
                <a class="g-logo" href=""><img
                        src="${pageContext.request.contextPath }/dist/institutionJManagement/images_common/logo2.jpg"></a>

                <ul class="g-login" style="float:right">
                    <li><a href="">登录</a></li>
                    <li><span>|</span></li>
                    <li><a href="">注册</a></li>
                    <li><span>|</span></li>
                    <li><a href="">学社</a></li>
                    <div class="f-cb"></div>
                    <li><a class="login-sucess" href="">登陆成功用户</a></li>
                </ul>
            </div>
        </div>
    </div>
</div>
<div class="mojnav">
    <div class="container">
        <ul>
            <li><a href="../../../学社首页/学社首页.htm" class="active">首页</a></li>
            <li><a href="../../../学社主页/学社主页1-机构主页.html">学社总汇</a></li>
            <li><a href="../../03共同学习/共同学习.html">共同学习</a></li>
            <li><a href="../../学有所乐/房间.html">学有所乐</a></li>
            <li><a href="../../商城/商城-行为道具.html">商城</a></li>
        </ul>
    </div>
</div>
<div class="banner">
    <img src="${pageContext.request.contextPath }/dist/institutionJManagement/images_common/banner.png"/>
</div>
<div class="club_info">
    <img class="club_img f-fl"
         src="${pageContext.request.contextPath }/dist/institutionJManagement/images/xueshe_03.jpg">
    <div class="banner_wz f-fl">
        <p class="title">XXX语言俱乐部学习社（总帖数2 |社员数3）</p>
        <p class="brief">方向：语言 |类型：公开</p>
        <p class="brief">社长：我是无敌虾米</p>
        <p class="brief">机构：AWE语言俱乐部</p>
    </div>
    <button class="f-fr xsan">返回学社</button>
    <div class="f-cb"></div>
</div>

<div class="mojnav3">
    <div class="container">
        <ul>
            <li><a href="../资料管理.html">资料管理</a></li>
            <li><a href="../栏目管理.html">栏目管理</a></li>
            <li><a href="${pageContext.request.contextPath }/memberManagement/${ccid}">社员管理</a></li>
            <li><a href="../帖子管理.html">帖子管理</a></li>
            <li><a href="../功能管理.html">功能管理</a></li>
            <li><a href="../回收站.html">回收站</a></li>
            <li><a href="#" class="active">机构管理</a></li>
        </ul>
    </div>
</div>

<div class="main-page">
    <div class="title">
        <p class="chn_title">机构管理</p>
        <p class="eng_title">INSTITUTION MANAGEMENT</p>
        <hr style="height: 0;border:none;border-bottom: 2px solid #28C2F5;width: 100px;margin: 0 auto;margin-top: 10px;"/>
    </div>
    <hr style="margin-top: 15px;border:none;border-bottom: 1px solid #EAEBEF;"/>
    <ul class="func_list">
        <li><a href="${pageContext.request.contextPath }/institutionData/${ccid}">机构资料</a></li>
        <li><a href="${pageContext.request.contextPath }/institutionMembers/${ccid}">机构成员</a></li>
        <li><a href="${pageContext.request.contextPath }/authoritySetting/${ccid}">权限设置</a></li>
        <li class="active"><a href="${pageContext.request.contextPath }/dataManagement/${ccid}">课教管理</a></li>
        <li><a href="发布管理_主页设置.html">发布管理</a></li>
        <li>销财管理</li>
        <li><a href="个人中心.html">个人中心</a></li>
    </ul>
    <div class="f-cb"></div>
    <hr style="border:none;border-bottom:2px solid #e4e4e3;height: 0;margin: 0 25px 5px 25px;"/>