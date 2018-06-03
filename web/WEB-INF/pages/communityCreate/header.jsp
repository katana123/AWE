<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/5/15 0015
  Time: 22:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="keywords" content="awe"/>
    <meta name="description" content="awe"/>
    <meta name="viewport" content="width=device-width"/>


    <link rel="stylesheet" href="${pageContext.request.contextPath }/dist/communityCreate/css/reset.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/dist/communityCreate/css/create_container.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/dist/communityCreate/css/font-awesome.min.css"/>

    <link rel="stylesheet" href="${pageContext.request.contextPath }/dist/communityCreate/css/head.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/dist/communityCreate/css/drag.css"/>


    <!--<script src="${pageContext.request.contextPath }/dist/communityCreate/libs/jquery-1.8.3.min.js"
            type="text/javascript"
            charset="utf-8"></script>-->

    <script src="${pageContext.request.contextPath }/dist/communityCreate/js/jquery-1.9.1.min.js"
            type="text/javascript"
            charset="utf-8"></script>
    <script src="${pageContext.request.contextPath }/dist/communityCreate/js/drag.js" type="text/javascript"
            charset="utf-8"></script>


</head>
<style>

    .m-select {
        border-color: #e2e2e2;
        text-indent: 2em;
    }

    .active {
        background-color: #5a5e69;
    }
</style>
<script type="text/javascript">
    /**
     * 从 file 域获取 本地图片 url
     */
    function getFileUrl(sourceId) {
        var url;
        if (navigator.userAgent.indexOf("MSIE") >= 1) { // IE
            url = document.getElementById(sourceId).value;
        } else if (navigator.userAgent.indexOf("Firefox") > 0) { // Firefox
            url = window.URL.createObjectURL(document.getElementById(sourceId).files.item(0));
        } else if (navigator.userAgent.indexOf("Chrome") > 0) { // Chrome
            url = window.URL.createObjectURL(document.getElementById(sourceId).files.item(0));
        }
        return url;
    }

    /**
     * 将本地图片 显示到浏览器上
     */
    function preImg(sourceId, targetId) {
        var url = getFileUrl(sourceId);
        var imgPre = document.getElementById(targetId);
        imgPre.style.display = "block";
        imgPre.src = url;
    }
</script>
<body>

<div class="g-head">
    <div class="header_top">
        <div class="g-search f-cb">
            <a class="g-logo" href="" style="float:left;"><img
                    src="${pageContext.request.contextPath }/dist/communityCreate/images/logo.png"></a>
            <!-- 	<h1><a href="/" class="logo" onclick="">AWE社团</a></h1>
                <div class="g-hd2" style="width:300px; float:left;">
                <ul class="g-login">
                   <li><a href="">首页</a></li>
                   <li class="g-act"><a href="">机构/老师社团</a></li>
               </ul>
               </div>-->
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
        <!-- <div class="search_box">
                         <input type="text" class="search_key_input" placeholder="搜索整个社团帖子，活动话题" id="topTxtKeyWord" value="">
                         <a href="javascript:;" class="search_submit_t" id="topsearch_submit">submit</a>
                     </div>
                     -->

    </div>
</div>
<!-- banner start-->
<div class="g-banner">
    <div id="slideBox" class="slideBox">
        <div class="hd">
            <ul>
                <li class=""></li>
                <li class=""></li>
                <li class="on"></li>
            </ul>
        </div>
        <div class="bd">
            <ul>
                <li><a href="" target=""><img
                        src="${pageContext.request.contextPath }/dist/community/tmp/images/banner.png"></a></li>
                <li><a href="" target=""><img
                        src="${pageContext.request.contextPath }/dist/community/tmp/images/banner.png"></a></li>
                <li><a href="" target=""><img
                        src="${pageContext.request.contextPath }/dist/community/tmp/images/banner.png"></a></li>
            </ul>
        </div>
    </div>
</div>
<!-- banner end-->