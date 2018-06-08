<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 2018/5/25
  Time: 16:18
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>AWE社区首页</title>
    <meta name="keywords" content="AWE学社">
    <meta name="description" content="AWE学社">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="${pageContext.request.contextPath }/dist/communityMainpage/images/favoriteIcon.png" type="imagex-icon"
          rel="shortcut icon">

    <!--<script src="libs/jquery.min.js" type="text/javascript" charset="utf-8"></script>-->

    <link rel="stylesheet" href="${pageContext.request.contextPath }/dist/communityMainpage/files_com/base.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath }/dist/communityMainpage/files_com/main_community.css"
          type="text/css">

    <link rel="stylesheet" href="${pageContext.request.contextPath }/dist/communityMainpage/css/reset.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/dist/communityMainpage/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/dist/communityMainpage/css/head.css"/>
    <!--图片轮滑-->
    <link href="${pageContext.request.contextPath }/dist/communityMainpage/css/poposlides.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath }/dist/communityMainpage/libs/jquery-1.8.3.min.js"></script>
    <script src="${pageContext.request.contextPath }/dist/communityMainpage/libs/poposlides.js"></script>

    <!--图片轮滑-->
    <style type="text/css">
        .navigator-nav li.current a {
            border: 1px solid #0099CC;
            border-radius: 3px;
            color: #0099CC;
        }

        .navigator-nav1 li a {
            font-size: 16px;
            font-weight: bold;
        }

        .navigator-nav1 li {
            float: left;
            width: 180px;
            height: 30px;
            line-height: 30px;
        }

        .top-right-radius {
            border-top-right-radius: 2em;
        }

        .tab-header > ul {
            padding: 10px 0px;
            margin: 0;
            list-style-type: none;
        }

        .tab-header > ul > li {
            float: left;
            padding: 0px 10px;
        }

        .tab-header > ul > li.active > a {
            background-color: #fff;
        }

        .tab-header > ul > li > a {
            display: block;
            padding: 15px 62px;
            color: #fff;
            transition: all .3s ease;
        }

        .tab-header_bg1 {
            background-color: #4b4a5d
        }

        .tab-header_bg2 {
            background-color: #615f79
        }

        .tab-header_bg3 {
            background-color: #7c799c
        }

        .tab-header_bg4 {
            background-color: #89b7d2
        }

        .tab-header_bg5 {
            background-color: #6d6b85
        }

        .tab-header_bg6 {
            background-color: #c1dee2
        }

        .tab-header_bg7 {
            background-color: #adcee1
        }

        .tab-header_bg8 {
            background-color: #5b7fab
        }

        .tab-header_bg9 {
            background-color: #6d6b85
        }

        .tab-header_bg10 {
            background-color: #77b1d2
        }

        .tab-header_bg11 {
            background-color: #759ccb
        }

        .tab-header_bg12 {
            background-color: #406087
        }

        .hotmember-interview .clearfix {
            padding-bottom: 10px;
        }

        .show_div {
            display: block;
        }

        .hidden_div {
            display: none;
        }

        .container-title {
            width: 100%;
            margin: 0 auto;
            margin-bottom: 20px;
            border-bottom: 1px solid #eaeaea;
        }

        .section-title {
            margin: 0 auto;
            text-align: center;
            font-size: 24px;
            color: #4b4b4b;
            font-weight: 400;
        }

        .container-title p {
            margin-top: 16px;
            text-align: center;
            width: 190px;
            padding: 3px 0px;
            margin: 0px auto;
            font-size: 15px;
            color: #999;
        }

        .member-item {
            margin-bottom: 30px;
        }

    </style>
</head>

<body>
<div class="g-head">
    <div class="header_top">
        <div class="g-search f-cb"><a class="g-logo" href="index" style="float:left;"><img
                src="${pageContext.request.contextPath }/dist/communityMainpage/tmp/images/logo.png"></a>

            <ul class="g-login" style="float:right">
                <c:choose>
                    <c:when test="${cookie.userlogin.value == null || cookie.userlogin.value == '' }">
                        <li><a href="login"> 登录</a>|</li>
                        <li><a href="register"> 注册</a>|</li>
                    </c:when>
                    <c:otherwise>
                        <li><span>${cookie.userlogin.value }&nbsp;</span></li>
                        <li><a href="logout">退出登录</a>&nbsp;</li>
                    </c:otherwise>
                </c:choose>
            </ul>
        </div>
    </div>
</div>
<div class="header_wrap">

    <div class="header">
        <ul class="main_nav hide_search_box" id="hideSearchBox">
            <li class="home icons active"><a href="#" title="首页">
                <em>首页</em></a></li>
            <li class="my_league icons "><a href="communitySummaryAll" id="myleague" rel="nofollow" title="学社总汇">
                <em>学社总汇</em></a></li>
            <li class="league_nav icons"><a href="communityStudyCom" title="共同学习">
                <em>共同学习</em></a></li>
            <li class="article_mall icons "><a href="communityFunRoom" title="学有所乐">
                <em>学有所乐</em></a></li>
            <li class="icons more_functions "><a href="communityMarketProperty" title="商城" rel="nofollow">
                <em>商城</em></a></li>
            <li class="search_league" style=" overflow: hidden;"></li>
        </ul>
    </div>
</div>

<!-- banner start-->

<div class="slides-box">
    <ul class="slides">
        <li style="background: url('${pageContext.request.contextPath }/dist/communityMainpage/tmp/images/banner.png') center"></li>
        <li style="background: url('${pageContext.request.contextPath }/dist/communityMainpage/tmp/images/banner.png') center"></li>
        <li style="background: url('${pageContext.request.contextPath }/dist/communityMainpage/tmp/images/banner.png') center"></li>
    </ul>
</div>

<!-- banner end-->
