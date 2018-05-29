<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 2018/5/28
  Time: 20:54
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
    <link rel="stylesheet" href="${pageContext.request.contextPath }/dist/communityMarket/css/function.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/dist/communityMarket/css/rest.css"/>
    <link rel="stylesheet"
          href="${pageContext.request.contextPath }/dist/communityMarket/css/my_community_activity.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/dist/communityMarket/css/common.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/dist/communityMarket/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/dist/communityMarket/css/index.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/dist/communityMarket/css/default.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/dist/communityMarket/css/study_together.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/dist/communityMarket/css/shopping.css"/>
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath }/dist/communityMarket/css/jquery.page.css"/>
    <script src="${pageContext.request.contextPath }/dist/communityMarket/libs/jquery.min.js" type="text/javascript"
            charset="utf-8"></script>
    <script src="${pageContext.request.contextPath }/dist/communityMarket/libs/jquery.SuperSlide.2.1.1.js"
            type="text/javascript" charset="utf-8"></script>
    <style>
        .g-w1200 {
            width: 1240px;
        }

        .bold {
            font-weight: bold;

        }

        .m-news-list2-title a {
            font-weight: bold;
        }

        .m-head-tabs ul > li {
            font-weight: bold;
        }

        .m-garden {
            margin-left: 8px;
        }

        .orange {
            color: #f08935;
        }

        .blue {
            background-color: #36b9c5;
        }

        .m-head-list li {
            padding: 10px;
            margin: 0px auto;
            width: 80%;
        }

        .m-son-nav li {
            width: 110px;
        }

        .g-hd li {
            float: left;
            width: 140px;
            text-align: center;
        }

        .g-hd li {
            float: left;
            width: 140px;
            text-align: center;
        }

        .slideBox {
            height: 300px;
            overflow: hidden;
            position: relative;
        }

        .g-act_second_active {
            background: #21abca;
        }

        .m-son-nav li {
            float: left;
            width: 114px;
            height: 114px;
            line-height: 114px;
            background: #f2f2f2;
            border: 1px solid #fefefe;
            text-align: center;
            font-size: 16px;
        }

        .m-toutiao {
            padding-top: 6px;
        }

        .m-son-nav {
            margin-left: 0px;
            margin-top: -5px;
            border-radius: 4px;
            padding: 1px;
            box-shadow: 0px 0px 15px #888888;
        }

        .second_nav_top {
            display: block;
            line-height: 110px;
            color: #000;
            font-size: 14px;
        }

        .second_nav_bottom {
            line-height: 55px;
            margin-top: -50px;
            display: block;
            color: #323333;
            font-size: 11px;
        }

        .m-son-nav_active {
            background: #767473 !important;
        }

        .font_white {
            color: #fff;
        }

        .dt_title {
            font-size: 16px;
            line-height: 40px;
        }

        .m-btn-qd {
            background-color: #f08935;
            color: #fff;
            font-size: 18px;
            border-radius: 5px;
            padding: 5px 30px;
            float: left;
        }

        .m-user-img {
            width: 30px;
            height: 30px;
            border-radius: 50%;
            float: left;
        }

        /*	图片上的浮层*/
        .slideBox .hd_text {
            height: 45px;
            width: 100%;
            /* border: 1px solid #456; */
            background: #494a4a;
            opacity: 0.5;
            overflow: hidden;
            position: absolute;
            right: 0%;
            bottom: 0px;
            z-index: 1;
        }

        .slideBox .hd {
            display: none;
        }

        .mag_name_title {
            color: #3bafba;
            font-family: "宋体";
            font-weight: bold;
            font-size: 22px;

        }

        .orange_right {
            padding: 4px 10px;
            color: #fff;
            background: #e1690e;
            border-radius: 4px;
        }

        .right_span {
            height: 34px;
            line-height: 34px;
            font-size: 13px;
        }

        .blue_border {
            border-bottom: 1px dashed #3bafba;
        }

        .main_sidebar h3 {
            line-height: 16px;
            color: #3bafba;
            font-size: 16px;
            /*    border-bottom: 1px dashed #0f7ecd;*/
            padding-bottom: 18px;
            margin-bottom: 20px;
        }

        .change_mag {
            float: right;
            color: #e78537;
            font-size: 14px;
        }

        .magazine_list li {
            padding-bottom: 10px;
            padding-top: 10px;
            border-bottom: 1px dashed #3bafba;
        }

        .book {
            position: relative;
        }

        .magazine_list .mag_img {
            float: left;
            width: 114px;
            height: 82px;
            margin-right: 10px;
            border: 1px solid #ededed;
            box-shadow: 0px 0px 8px #eaeaea;
            border-radius: 5px;
        }

        .main_sidebar .book_root, .detail_mag_box .book_root, .cont-r .book_root {
            width: 80px;
            height: 100px;
            background-size: 80px auto;
        }

        .ellipsis_text {
            display: inline-block;
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
            color: #333;
        }

        .magazine_list .mag_desc {
            display: block;
            margin-bottom: 15px;
            height: 40px;
            color: #999;
            line-height: 20px;
            font-size: 12px;
            overflow: hidden;
        }

        .magazine_list .mag_num {
            display: inline;
            color: #999;
            font-size: 12px;
        }

        .magazine_list .mag_num_right {
            float: right;
            color: #e78537;
        }

        .magazine_list .mag_name {
            display: block;
            width: 150px;
            height: 21px;
            line-height: 21px;
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
<div class="g-doc">
    <div class="g-search g-w1200 f-cb">
        <a class="g-logo" href=""><img
                src="${pageContext.request.contextPath }/dist/communityMarket/images/logo.jpg"></a>
        <!--
                <div class="g-sarch-input">
                    <select class="g-select" name="" >
                        <option value="">精品推荐</option>
                        <option value="">公司头条</option>
                    </select>
                    <input type="text" name="search" id="search" value="" placeholder="请输入关键字">
                    <div class="g-btn-search"><i class="fa fa-search"></i></div>
                </div>
        -->
        <ul class="g-login" style="float: right">
            <li><a href=""> 登录</a>|</li>
            <li><a href=""> 注册</a>|</li>
            <li><a href=""> 学社</a></li>
        </ul>
    </div>
    <div class="g-hd">
        <ul class="m-nav f-cb g-w1200">
            <li><a href="../../学社首页/学社首页.htm">首页</a></li>

            <li><a href="../学社汇总2/全部学社.html">学社总汇</a></li>
            <li><a href="../03共同学习/共同学习.html">共同学习</a></li>
            <li><a href="../学有所乐/房间.html">学有所乐</a></li>
            <li class="g-act"><a href="商城-行为道具.html">商城</a></li>
        </ul>
    </div>
    <div class="g-banner">
        <div id="slideBox" class="slideBox">
            <div class="hd_text"></div>
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
                            src="${pageContext.request.contextPath }/dist/communityMarket/tmp/images/banner.png"></a>
                    </li>
                    <li><a href="" target=""><img
                            src="${pageContext.request.contextPath }/dist/communityMarket/tmp/images/banner.png"></a>
                    </li>
                    <li><a href="" target=""><img
                            src="${pageContext.request.contextPath }/dist/communityMarket/tmp/images/banner.png"></a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <li>&nbsp;</li>
    <li
            <c:if test="${markettype=='property'}">class="g-act_second_active"</c:if> ><a href="MarketProperty">虚拟道具</a>
    </li>
    <li <c:if test="${markettype=='gift'}">class="g-act_second_active"</c:if>><a href="MarketGift">礼品赠送</a></li>
    <li <c:if test="${markettype=='resource'}">class="g-act_second_active"</c:if>><a href="MarketResource">课程资源</a></li>
    <li <c:if test="${markettype=='onebuy'}">class="g-act_second_active"</c:if>><a href="MarketOnebuy">一元秒购</a></li>
    <li style="float: right;padding-right: 200px;">
        <input type="text" name="firstname" value="输入公屏聊天信息"
               style="padding: 8px;border-radius: 16px;background: #fff;border: 1px solid #000;">
    </li>
    </ul>
</div>

