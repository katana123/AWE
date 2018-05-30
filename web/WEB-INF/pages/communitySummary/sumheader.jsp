<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 2018/5/29
  Time: 12:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <title>awe</title>
    <meta name="keywords" content="awe"/>
    <meta name="description" content="awe"/>
    <meta name="viewport" content="width=device-width"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/dist/communitySummary/css/function.css"/>

    <link rel="stylesheet" href="${pageContext.request.contextPath }/dist/communitySummary/css/base.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/dist/communitySummary/files_com/main_community.css"
          type="text/css">

    <!--<link rel="stylesheet" href="css/my_community.css"/>-->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/dist/communitySummary/css/reset.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/dist/communitySummary/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/dist/communitySummary/css/head.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/dist/communitySummary/css/top_ul.css"/>
    <!--图片轮滑-->
    <link href="${pageContext.request.contextPath }/dist/communitySummary/css/poposlides.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath }/dist/communitySummary/libs/jquery-1.8.3.min.js"></script>
    <script src="${pageContext.request.contextPath }/dist/communitySummary/libs/poposlides.js"></script>

    <!--图片轮滑-->
    <style>
        .pagination1 {
            display: none;
        }

        .active {
            background-color: #5a5e69;
        }
    </style>

    <style>
        .col-33 {
            width: 32%;
            padding-right: 15px;
            padding-bottom: 30px;
        }

        .navigator .current a {
            border-bottom: 3px solid #0f7ecd;
            line-height: 22px;
        }

        .navigator {

            border-bottom: 1px solid #ededed;
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
            <li class="my_league icons "><a href="communitySummary" id="myleague" rel="nofollow" title="学社总汇">
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

<div class="g-w1200 m-toutiao f-cb">
    <!--                <p class="g-tt">AWE头条</p>-->
    <ul class="m-son-nav f-fl">
        <li style="width: 80px;font-size: 14px;background: url(${pageContext.request.contextPath }/dist/communitySummary/images/li_bg1.png)">
            <a href=""></a></li>
        <li <c:if test="${sumtype=='mycommunity'}">class="m-son-nav_active"</c:if>>
            <a href="mycommunity">
                <span class="second_nav_top"
                      <c:if test="${sumtype=='mycommunity'}">class="font_white"</c:if>>我的学社</span>
                <span class="second_nav_bottom" <c:if test="${sumtype=='mycommunity'}">class="font_white"</c:if>>MY SOCIETY</span>
            </a>
        </li>
        <li
                <c:if test="${sumtype=='all'}">class="m-son-nav_active"</c:if> >
            <a href="communitySummaryAll">
                <span class="second_nav_top" <c:if test="${sumtype=='all'}">class="font_white"</c:if>>所有学社</span>
                <span class="second_nav_bottom"
                      <c:if test="${sumtype=='all'}">class="font_white"</c:if>>ALL SOCIETIES</span>
            </a>
        </li>
        <li <c:if test="${sumtype=='instcommunity'}">class="m-son-nav_active"</c:if>>
            <a href="institutioncommunity">
                <span class="second_nav_top"
                      <c:if test="${sumtype=='instcommunity'}">class="font_white"</c:if>>机构学社</span>
                <span class="second_nav_bottom" <c:if test="${sumtype=='instcommunity'}">class="font_white"</c:if>>  INST- SOCIETIES</span>
            </a>
        </li>
        <li <c:if test="${sumtype=='teachercommunity'}">class="m-son-nav_active"</c:if>>
            <a href="teachercommunity">
                <span class="second_nav_top"
                      <c:if test="${sumtype=='teachercommunity'}">class="font_white"</c:if>>老师学社</span>
                <span class="second_nav_bottom" <c:if test="${sumtype=='teachercommunity'}">class="font_white"</c:if>>TEAC-SOCIETIES</span>
            </a>
        </li>
        <li <c:if test="${sumtype=='mypost'}">class="m-son-nav_active"</c:if>>
            <a href="mypost">
                <span class="second_nav_top" <c:if test="${sumtype=='mypost'}">class="font_white"</c:if>>学社帖子</span>
                <span class="second_nav_bottom" <c:if test="${sumtype=='mypost'}">class="font_white"</c:if>>SOCIETIES POSTS</span>
            </a>
        </li>
        <li style="background: url(${pageContext.request.contextPath }/dist/communitySummary/images/weixin.jpg) center center;background-repeat: no-repeat;">
            <a href=""></a></li>
    </ul>

    <li style="float: right;padding-right: 200px;margin-top: 80px;"><input type="text" name="firstname" value="请输入关键字"
                                                                           style="
 padding: 8px;
    border-radius: 16px;
    background: #fff;
    border: 1px solid #000;
"></li>
</div>


</body>
</html>
