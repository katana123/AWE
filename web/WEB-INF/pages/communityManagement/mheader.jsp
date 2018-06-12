<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/6/11
  Time: 20:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
    <meta name="keywords" content="awe"/>
    <meta name="description" content="awe"/>
    <meta name="viewport" content="width=device-width"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/dist/communityManagement/manage_dp/base.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath }/dist/communityManagement/manage_dp/manage_member.css"
          type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/dist/communityManagement/manage_dp/team.css">
    <script src="${pageContext.request.contextPath }/dist/communityManagement/manage_dp/jquery-1.8.3.min.js"></script>
    <script src="${pageContext.request.contextPath }/dist/communityManagement/manage_dp/jquery.json-2.2.min.js"></script>
    <script src="${pageContext.request.contextPath }/dist/communityManagement/manage_dp/hui.widgets.1.0.2.js"></script>
    <link type="text/css" rel="stylesheet"
          href="${pageContext.request.contextPath }/dist/communityManagement/manage_dp/hjpassport.min.css">
    <script src="${pageContext.request.contextPath }/dist/communityManagement/manage_dp/$_js_messagetip_js$_js_selectjs_js.js"
            type="text/javascript"></script>

    <!--<link rel="stylesheet" href="${pageContext.request.contextPath }/dist/communityManagement/css/my_community.css"/>-->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/dist/communityManagement/css/reset.css"/>
    <link rel="stylesheet"
          href="${pageContext.request.contextPath }/dist/communityManagement/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/dist/communityManagement/css/head.css"/>
    <!--图片轮滑-->
    <link href="${pageContext.request.contextPath }/dist/communityManagement/css/poposlides.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath }/dist/communityManagement/libs/jquery-1.8.3.min.js"></script>
    <script src="${pageContext.request.contextPath }/dist/communityManagement/libs/poposlides.js"></script>

    <!--图片轮滑-->
    <style>
        .pagination1 {
            display: none;
        }

        .head-banner .col-8 {
            width: 73% !important;
        }

        .member-manage {
            margin-bottom: 20px;
        }

        .member-manage .mem-search {
            float: right;
            margin-left: 20px;
            width: 240px;
            position: relative;
            border: 1px solid #ededed;
            border-radius: 4px;
        }

        .member-manage .form-li .form-c input[type="text"] {
            border: 0;
            width: 200px
        }

        .member-manage .action_btns {
            float: right
        }

        .member-manage .action_btns .btn {
            float: left;
            margin-left: 15px;
            color: #fff;
            background-color: #67c2d2;
            border: 1px solid #67c2d2
        }

        .btn-search {
            position: absolute;
            right: 0;
            bottom: 0;
            width: 38px;
            height: 38px;
            text-indent: -999em;
        }

        .btn-search i {
            position: absolute;
            left: 8px;
            top: 10px;
            width: 24px;
            height: 20px;
            background-image: url('${pageContext.request.contextPath }/dist/communityManagement/images/icons.png');
            background-repeat: no-repeat;
            background-position: -84px -84px;
        }

        .member-list .pic {
            width: 70px;
            height: 70px;
            overflow: hidden;
            margin-bottom: 5px;
        }

        .member-list .pic img {
            width: 70px;
            height: 70px;
        }

        .member-list .mem-li {
            width: 70px;
        }

        .member-list .mem-li p {
            overflow: hidden;
            width: 100%;
            line-height: 1.2em;
            text-align: center;
            font-size: 12px;
            word-break: break-all;
            word-wrap: break-word;
        }

        .member-list .mem-li p.username {
            height: 2.4em;
        }

        .member-list .col {
            float: left;
            display: inline;
            position: relative;
            z-index: 1;
        }

        .member-list .row-1 {
            margin-bottom: 40px;
        }

        .member-list .row-1 .col {
            width: 20%;
            margin-bottom: 25px;
        }

        .member-list .row-2 .mem-li {
            width: 60px;
        }

        .member-list .row-2 .col {
            width: 16.66666667%;
            margin-bottom: 20px;
        }

        .member-list .row-2 .pic {
            width: 60px;
            height: 60px;
            overflow: hidden;
        }

        .member-list .row-2 .pic img {
            width: 60px;
            height: 60px;
        }

        .member-list .mem-func {
            display: none;
            position: absolute;
            left: -10px;
            top: -10px;
            width: 90px;
            height: 120px;
            padding-left: 90px;
            padding-top: 15px;
            background-color: #f4f4f4;
            z-index: -1;
        }

        .member-list .mem-func a {
            font-size: 12px;
            display: block;
            height: 28px;
            line-height: 28px;
            position: relative;
            padding-left: 20px;
        }

        .member-list .mem-func a:hover {
            color: #57af39;
        }

        .member-list .mem-func a i {
            position: absolute;
            left: 0;
            top: 4px;
        }

        .member-list .row-2 .mem-func {
            width: 90px;
            height: 90px;
            padding-left: 80px;
        }

        .member-list .hover {
            z-index: 9;
        }

        .member-list .hover .mem-func {
            display: block;
        }

        .user_list {
            color: #666
        }

        .user_list li {
            clear: both;
            height: 50px;
            line-height: 50px;
            text-align: center;
            overflow: hidden
        }

        .user_list li.odd {
            background: #f8f8f8
        }

        .user_list li:hover {
            background-color: #67c2d2;
            color: #fff
        }

        .user_list li:hover span,
        .user_list li:hover a {
            color: #fff
        }

        .user_list .month_post a,
        .user_list .month_reply a {
            text-decoration: underline;
            color: #666
        }

        .user_list li:hover .owner,
        .user_list li:hover .manage {
            background-position: -168px -48px
        }

        .user_list li:hover .to_manage,
        .user_list li:hover .to_normal,
        .user_list li:hover .delete {
            display: block
        }

        .user_list li:hover .green {
            color: #fff
        }

        .user_list li span {
            float: left;
            height: 50px;
            word-break: break-all;
            word-wrap: break-word
        }

        .user_list li i {
            display: inline-block;
            position: relative;
            top: 3px;
            width: 16px;
            height: 14px;
            background: url("${pageContext.request.contextPath }/dist/communityManagement/manage_dp/icons_all_small.png") no-repeat -216px -50px
        }

        .user_list .menu {
            height: 40px;
            line-height: 40px;
            background: #f1f1f1
        }

        .user_list .menu span {
            cursor: pointer
        }

        .user_list .menu .member_info {
            cursor: default
        }

        .user_list .menu .member_nickName {
            cursor: default
        }

        .user_list .menu:hover {
            background-color: #f1f1f1;
            color: #666
        }

        .user_list .menu:hover span {
            color: #666
        }

        .user_list .member_info {
            width: 240px
        }

        .user_list .join_date,
        .user_list .last_post,
        .user_list .member_nickName,
        .user_list .member_birthday {
            width: 90px
        }

        .user_list .month_post,
        .user_list .month_reply,
        .user_list .month_check,
        .user_list .level_no,
        .user_list .rank_num {
            width: 60px
        }

        .user_list .arrow_up i {
            background-position: -216px -37px
        }

        .user_list .arrow_down i {
            background-position: -216px -24px
        }

        .user_list .no,
        .user_list .header_icon,
        .user_list .remarks {
            width: 45px
        }

        .user_list .remarks {
            color: #ccc
        }

        .user_list .owner,
        .user_list .manage {
            margin: 17px 2px;
            width: 16px;
            height: 16px;
            background: url("${pageContext.request.contextPath }/dist/communityManagement/manage_dp/icons_all_small.png") no-repeat -134px -48px
        }

        .user_list .check_box {
            width: 20px
        }

        .user_list .check_box input {
            width: 16px;
            height: 16px;
            background: #fff
        }

        .user_list .manage {
            background-position: -150px -48px
        }

        .user_list .header_icon img {
            height: 30px;
            height: 30px;
            margin-top: 10px
        }

        .user_list .to_manage,
        .user_list .to_normal {
            display: none;
            position: relative;
            top: 18px;
            width: 16px;
            height: 16px;
            cursor: pointer
        }

        .user_list .to_manage i,
        .user_list .to_normal i {
            top: -18px;
            width: 13px;
            height: 11px;
            background: url("${pageContext.request.contextPath }/dist/communityManagement/manage_dp/icons_all_small.png") no-repeat -186px -52px
        }

        .user_list .to_normal i {
            background-position: -201px -52px
        }

        .user_list .to_manage:hover,
        .user_list .to_normal:hover,
        .user_list .delete:hover {
            background-color: #4db12a;
            border-radius: 8px
        }

        .user_list .ellipsis_text {
            width: 130px;
            height: 50px;
            line-height: 50px;
            text-align: left
        }

        .user_list .desc {
            display: none;
            width: 78px;
            height: 18px;
            line-height: 18px;
            color: #fff;
            background-color: #508a3c;
            font-size: 12px
        }

        .user_list .to_manage:hover .desc,
        .user_list .to_normal:hover .desc {
            display: block;
            position: absolute;
            top: -18px;
            left: -32px
        }

        .user_list .delete {
            display: none;
            margin: 16px 0 0 8px;
            width: 17px;
            height: 17px;
            background: url("${pageContext.request.contextPath }/dist/communityManagement/manage_dp/icons_all_small.png") no-repeat -215px -10px;
            cursor: pointer
        }

        .user_list .rank_no,
        .user_list .user_level {
            width: 70px
        }

        .user_list .user_exp_num,
        .user_list .rank_change {
            width: 90px
        }

        .user_list .level_title {
            width: 100px
        }

        .m-select {
            width: 100%;
            height: 36px;
            float: left;
            border-radius: 4px;
        }

        .form-li .m-select {
            width: 162px;
            background: url(${pageContext.request.contextPath }/dist/communityManagement/manage_dp/bgshare.png) no-repeat 135px -85px;
        }

        .m-select dt {
            height: 36px;
            line-height: 36px;
            text-align: center;
            border: 1px solid #e2e2e2;
            text-indent: -20px;
            cursor: pointer;
            border-radius: 4px;
            overflow: hidden;
        }

        .user_list li span {
            float: left;
            height: 50px;
            word-break: break-all;
            word-wrap: break-word;
        }

        .user_list .check_box input {
            width: 16px;
            height: 16px;
            margin-top: 15px;
            background: #fff;
        }


    </style>
</head>
<body>
<input id="hddTime" type="hidden" value="2017/8/13 22:40:01">
<div class="g-head">
    <div class="header_top">
        <div class="g-search f-cb"><a class="g-logo" href="" style="float:left;"><img
                src="${pageContext.request.contextPath }/dist/communityManagement/images_common/logo.png"></a>
            <ul class="g-login" style="float:right">
                <li>
                    <a href=".${pageContext.request.contextPath }/dist/communityManagement/.${pageContext.request.contextPath }/dist/communityManagement/product一级/index.html"
                       class="nav1">首页</a></li>
                <li class="g-act"><a
                        href=".${pageContext.request.contextPath }/dist/communityManagement/.${pageContext.request.contextPath }/dist/communityManagement/登录/登录.html">登录</a>
                </li>
                <li>
                    <select class="g-select" name="">
                        <option value="">小李飞刀</option>
                        <option value="">公司头条</option>
                    </select>
                </li>
                <li><a href=""> 退出</a></li>
            </ul>
        </div>
    </div>
</div>
<div class="header_wrap">
    <div class="header">
        <ul class="main_nav hide_search_box" id="hideSearchBox">
            <li class="home icons active"><a href="/" title="社团首页">
                <!--            <i class="fa fa-home"></i>-->
                <em>首页</em></a></li>
            <li class="my_league icons "><a
                    href=".${pageContext.request.contextPath }/dist/communityManagement/学社首页/社团首页.htm" id="myleague"
                    rel="nofollow" title="我的社团">
                <!--            <i class="fa fa-user"></i>-->
                <em>学社总汇</em></a></li>
            <li class="league_nav icons"><a
                    href=".${pageContext.request.contextPath }/dist/communityManagement/我的社团/03会员学社主页/我的学社.html"
                    rel="nofollow" title="我的社团">
                <!--            <i class="fa fa-eye"></i>-->
                <em>共同学习</em></a></li>
            <li class="article_mall icons "><a
                    href=".${pageContext.request.contextPath }/dist/communityManagement/学有所乐/房间.html" title="商城">
                <!--            <i class="fa fa-shopping-bag"></i>-->
                <em>学有所乐</em></a></li>
            <li class="icons more_functions "><a
                    href=".${pageContext.request.contextPath }/dist/communityManagement/商城/商城-行为道具.html" title="一元购"
                    rel="nofollow">
                <!--            <i class="fa fa-bullseye"></i>-->
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
<div class="slides-box">
    <ul class="slides">
        <li style="background: url('${pageContext.request.contextPath }/dist/communityManagement/${pageContext.request.contextPath }/dist/communityManagement/images_common/banner.png') center"></li>
        <li style="background: url('${pageContext.request.contextPath }/dist/communityManagement/${pageContext.request.contextPath }/dist/communityManagement/${pageContext.request.contextPath }/dist/communityManagement/images_common/banner.png') center"></li>
        <li style="background: url('${pageContext.request.contextPath }/dist/communityManagement/${pageContext.request.contextPath }/dist/communityManagement/images_common/banner.png') center"></li>
    </ul>
</div>
<div class="head-banner" style="margin-bottom: 50px;">
    <div class="row">
        <div class="col-2">
            <div class="pic"><a href="/15101166271/" title="手机摄影作品分享"> <img
                    src="http://n1image.hjfile.cn/shetuan/2017-06-01-1496246655-322-3667.jpg?imageView2/2/w/160/h/160"
                    alt="手机摄影作品分享"> </a></div>
        </div>
        <div class="col-8">
            <div class="title"><a href="/15101166271/"><span id="headLeagueName" class="title_text">手机摄影作品分享</span></a>
                <span class="fl">（成员 1 | 总贴量 0）</span> <span class="fl ml10 unsigned-icon" data-id="10116"></span></div>
            <div class="info cf">
                <div class="user_info_box fl">
                    <p>分类：娱乐
                        | 类型：公开 </p>
                    <p>社长：<a href="http://bulo.hujiang.com/72310219/" target="_blank" rel="nofollow">LOVEWUST</a></p>
                    <div class="summary"></div>
                </div>
                <div class="fr"><a href="/15101166271/admin/" class="btn btn-l btn-green" id="btnManage">返回学社</a></div>
            </div>
            <div class="hui_tooltip" style="display: none;">
                <div class="hui_tooltip_pointer"></div>
                <div class="hui_tooltip_content"></div>
            </div>
        </div>
    </div>
</div>
<!-- banner end-->
<div class="header_wrap">
    <div class="header">
        <ul class="main_nav hide_search_box">
            <li class="home icons"><a href="informationManagement/${ccid}" title="基本信息">
                <!--            <i class="fa fa-home"></i>-->
                <em>基本信息</em></a></li>
            <li class="league_nav icons"><a href="columnManagement/${ccid}" title="栏目管理">
                <!--            <i class="fa fa-eye"></i>-->
                <em>栏目管理</em></a></li>
            <li class="league_nav icons  active"><a href="memberManagement/${ccid}" title="成员管理">
                <!--            <i class="fa fa-eye"></i>-->
                <em>社员管理</em></a></li>
            <li class="article_mall icons "><a href="postmanagement/${ccid}" title="帖子管理">
                <!--            <i class="fa fa-shopping-bag"></i>-->
                <em>帖子管理</em></a></li>
            <li class="article_mall icons "><a href="functionManagement/${ccid}" title="功能管理">
                <!--            <i class="fa fa-shopping-bag"></i>-->
                <em>功能管理</em></a></li>
            <li class="article_mall icons "><a href="recyleManagement/${ccid}" title="回收站">
                <!--            <i class="fa fa-shopping-bag"></i>-->
                <em>回收站</em></a></li>
            <li class="article_mall icons " style="margin-left: 20px;"><a
                    href="${pageContext.request.contextPath }/institutionData/${ccid}" title="机构管理">
                <!--            <i class="fa fa-shopping-bag"></i>-->
                <em>机构管理</em></a></li>

        </ul>

    </div>
</div>
<script src="${pageContext.request.contextPath }/dist/communityManagement/manage_dp/$_js_leaguemember_js.js"
        type="text/javascript"></script>
<script src="${pageContext.request.contextPath }/dist/communityManagement/manage_dp/fpv2.js"
        type="text/javascript"></script>
