<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 2018/5/25
  Time: 16:18
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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

</head>

<body>
<div class="g-head">
    <div class="header_top">
        <div class="g-search f-cb"><a class="g-logo" href="index" style="float:left;"><img
                src="${pageContext.request.contextPath }/dist/communityMainpage/tmp/images/logo.png"></a>

            <ul class="g-login" style="float:right">
                <li><a href="" class="nav1">首页</a></li>
                <li class="g-act"><a href="login">登录</a></li>
                <li>
                    <select class="g-select" name="">
                        <option value="">小李飞刀</option>
                        <option value="">公司头条</option>
                    </select>
                </li>
                <li><a href="#"> 退出</a></li>
            </ul>
        </div>
    </div>
</div>
<div class="header_wrap">

    <div class="header">
        <ul class="main_nav hide_search_box" id="hideSearchBox">
            <li class="home icons active"><a href="#" title="学社首页">
                <!--            <i class="fa fa-home"></i>-->
                <em>首页</em></a></li>
            <li class="my_league icons "><a href="#" id="myleague" rel="nofollow" title="我的学社">
                <!--            <i class="fa fa-user"></i>-->
                <em>学社总汇</em></a></li>
            <li class="league_nav icons"><a href="#" title="发现学社">
                <!--            <i class="fa fa-eye"></i>-->
                <em>共同学习</em></a></li>
            <li class="article_mall icons "><a href="MarketProperty" title="商城">
                <!--            <i class="fa fa-shopping-bag"></i>-->
                <em>学有所乐</em></a></li>
            <li class="icons more_functions "><a href="MarketOnebuy" title="一元购" rel="nofollow">
                <!--            <i class="fa fa-bullseye"></i>-->
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
