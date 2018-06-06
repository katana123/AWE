<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/5/24
  Time: 16:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <title>awe首页</title>
    <meta name="keywords" content="awe"/>
    <meta name="description" content="awe"/>
    <meta name="viewport" content="width=device-width"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/dist/mainpage/css/function.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/dist/mainpage/css/rest.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/dist/mainpage/css/common.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/dist/mainpage/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/dist/mainpage/css/index.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/dist/mainpage/css/default.css"/>
    <style>
        .m-son-nav li {
            width: 100px;
        }

        .imgicon-list {
            margin-top: 10px;
        }

        .list_ul {
            margin: 0 auto;
            max-width: 1200px;
        }

        .superiority-li-item {
            position: relative;
            float: left;
            margin: 0 2.5%;
            padding-top: 220px;
            width: 20%;
            text-align: center;
        }

        .animate-wrapper-div {
            position: absolute;
            top: 90px;
            left: 50%;
            margin-left: -60px;
            width: 120px;
            height: 120px;

        }

        .superiority-big-num {
            margin-bottom: 16px;
            height: 16px;
            line-height: 16px;
            font-size: 16px;
            color: #999;
            font-weight: bold;
        }

        .superiority-small-text {
            font-size: 15px;
            line-height: 15px;
            color: #999;
            font-weight: bold;
        }

        .font_blue {
            color: #0076ca;
        }

        .slideBox .bd_small img {
            height: 300px;
        }
    </style>
    <script src="${pageContext.request.contextPath }/dist/mainpage/libs/jquery.min.js" type="text/javascript"
            charset="utf-8"></script>
    <script src="${pageContext.request.contextPath }/dist/mainpage/libs/jquery.SuperSlide.2.1.1.js"
            type="text/javascript" charset="utf-8"></script>
</head>
<body>
<div class="g-doc">
    <div class="g-search g-w1200 f-cb">
        <a class="g-logo" href="index"><img src="${pageContext.request.contextPath }/dist/mainpage/images/logo3.png"></a>
        <div class="g-sarch-input">
            <select class="g-select" name="">
                <option value="">精品推荐</option>
                <option value="">公司头条</option>
            </select>
            <input type="text" name="search" id="search" value="" placeholder="请输入关键字">
            <div class="g-btn-search"><i class="fa fa-search"></i></div>
        </div>
        <ul class="g-login">
            <c:choose>
            <c:when test="${cookie.userlogin.value == null || cookie.userlogin.value == '' }">
            <li><a href="login"> 登录</a>|</li>
            <li><a href="register"> 注册</a>|</li>
            </c:when>
            <c:otherwise>
            <li><span>${cookie.userlogin.value }&nbsp;</span>|</li>
            <li><a href="logout">退出登录</a>&nbsp;|</li>
            </c:otherwise>
            </c:choose>

            <li><a href=""> 社区</a></li>
            <ul>
    </div>
    <div class="g-hd">
        <ul class="m-nav f-cb g-w1200">

            <li <c:if test="${mainpageno==null}">class="g-act"</c:if>><a href="index">首页</a></li>

            <li><a href="communityMainpage">AWE社区</a></li>
            <li <c:if test="${mainpageno==2}">class="g-act"</c:if>><a href="headline">AWE头条</a></li>
            <li <c:if test="${mainpageno==3}">class="g-act"</c:if>><a href="activity">活动专区</a></li>
            <li <c:if test="${mainpageno==4}">class="g-act"</c:if>><a href="resources">精品资源</a></li>
            <li <c:if test="${mainpageno==5}">class="g-act"</c:if>><a href="video">视频课程</a></li>
            <%--<li><a href="">关于我们</a></li>--%>
        </ul>
    </div>
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
                            src="${pageContext.request.contextPath }/dist/mainpage/tmp/images/banner2.jpg"></a></li>
                    <li><a href="" target=""><img
                            src="${pageContext.request.contextPath }/dist/mainpage/tmp/images/banner2.jpg"></a></li>
                    <li><a href="" target=""><img
                            src="${pageContext.request.contextPath }/dist/mainpage/tmp/images/banner2.jpg"></a></li>
                </ul>
            </div>
        </div>
    </div>
