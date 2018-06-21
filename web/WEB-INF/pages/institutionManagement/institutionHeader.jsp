<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
    <meta name="keywords" content="awe"/>
    <meta name="description" content="awe"/>
    <meta name="viewport" content="width=device-width"/>
    <!--<link rel="stylesheet" href="css/my_community.css"/>-->
    <link rel="stylesheet"
          href="${pageContext.request.contextPath }/dist/institutionManagement/manage_dp/manage_member.css"
          type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/dist/institutionManagement/css/reset.css"/>
    <link rel="stylesheet"
          href="${pageContext.request.contextPath }/dist/institutionManagement/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/dist/institutionManagement/css/head.css"/>
    <!--图片轮滑-->
    <link href="${pageContext.request.contextPath }/dist/institutionManagement/css/poposlides.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath }/dist/institutionManagement/libs/jquery-1.8.3.min.js"></script>
    <script src="${pageContext.request.contextPath }/dist/institutionManagement/libs/poposlides.js"></script>
    <script src="${pageContext.request.contextPath }/dist/common/layer/layer.js"></script>
    <!--图片轮滑-->
    <style>
        .pagination1 {
            display: none;
        }

        .header1 {
            height: 46px;
        }

        .main_nav2 li {
            float: left;
            height: 46px;
            line-height: 46px;
            width: 140px;
            text-align: center;
        }

        .main_nav2 li a {
            font-size: 16px;
            color: #63cdf6;
        }

        .main_nav2 li.active {
            border-bottom: 2px solid #e78537;
        }

        .main_nav2 li:hover, .main_nav2 li:active {
            border-bottom: 2px solid #e78537;
        }

        .form-li .form-c {
            width: 54% !important;
        }

        .mem-search {
            float: right;
            margin-left: 20px;
            width: 240px;
            position: relative;
            border: 1px solid #ededed;
            border-radius: 4px;
        }

        .form-li .form-c input[type="text"] {
            border: 0;
            width: 200px;
        }

        .action_btns {
            float: right;
        }

        .action_btns .btn {
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
            background-image: url('${pageContext.request.contextPath }/dist/institutionManagement/images/icons.png');
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

        .user_list li:hover span, .user_list li:hover a {
            color: #fff
        }

        .user_list .month_post a, .user_list .month_reply a {
            text-decoration: underline;
            color: #666
        }

        .user_list li:hover .owner, .user_list li:hover .manage {
            background-position: -168px -48px
        }

        .user_list li:hover .to_manage, .user_list li:hover .to_normal, .user_list li:hover .delete {
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
            background: url("${pageContext.request.contextPath }/dist/institutionManagement/manage_dp/icons_all_small.png") no-repeat -216px -50px
        }

        .user_list .menu {
            height: 40px;
            line-height: 40px;
            background: #f1f1f1;
            color: #414243;
            font-weight: bold;
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

        .user_list .join_date, .user_list .last_post, .user_list .member_nickName, .user_list .member_birthday {
            width: 110px
        }

        .user_list .month_post, .user_list .month_reply, .user_list .month_check, .user_list .level_no, .user_list .rank_num {
            width: 100px
        }

        .user_list .arrow_up i {
            background-position: -216px -37px
        }

        .user_list .arrow_down i {
            background-position: -216px -24px
        }

        .user_list .no, .user_list .header_icon, .user_list .remarks {
            width: 45px
        }

        .user_list .remarks {
            color: #ccc
        }

        .user_list .owner, .user_list .manage {
            margin: 17px 2px;
            width: 16px;
            height: 16px;
            background: url("${pageContext.request.contextPath }/dist/institutionManagement/manage_dp/icons_all_small.png") no-repeat -134px -48px
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
            height: 40px;
            margin-top: 5px
        }

        .user_list .to_manage, .user_list .to_normal {
            display: none;
            position: relative;
            top: 18px;
            width: 16px;
            height: 16px;
            cursor: pointer
        }

        .user_list .to_manage i, .user_list .to_normal i {
            top: -18px;
            width: 13px;
            height: 11px;
            background: url("${pageContext.request.contextPath }/dist/institutionManagement/manage_dp/icons_all_small.png") no-repeat -186px -52px
        }

        .user_list .to_normal i {
            background-position: -201px -52px
        }

        .user_list .to_manage:hover, .user_list .to_normal:hover, .user_list .delete:hover {
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

        .user_list .to_manage:hover .desc, .user_list .to_normal:hover .desc {
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
            background: url("${pageContext.request.contextPath }/dist/institutionManagement/manage_dp/icons_all_small.png") no-repeat -215px -10px;
            cursor: pointer
        }

        .user_list .rank_no, .user_list .user_level {
            width: 70px
        }

        .user_list .user_exp_num, .user_list .rank_change {
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
            background: url(${pageContext.request.contextPath }/dist/institutionManagement/manage_dp/bgshare.png) no-repeat 135px -85px;
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

        .last_post a {
            color: #63cdf6;
        }

        .fr {
            float: left;
            padding-left: 10px;
        }

        .title_r {
            text-align: right;
            font-size: 16px;
            padding-right: 50px;
            color: #28c2f5;
            padding-top: 28%;
        }

        .title {
            text-align: center;
            font-size: 28px;
            padding-top: 10%;
        }

        .title > span.fl {
            font-size: 14px;
        }

        .div_center {
            width: 50%;
            padding-top: 10%;
            font-size: 14px;
            margin: 0px auto;
        }

        .form-item {
            display: inline;
            float: left;
            height: 45px;
            width: 400px;
        }

        .form-item .form-label {
            color: #28c2f5;
            display: inline;
            float: left;
            font-size: 16px;
            padding-right: 10px;
            height: 33px;
            line-height: 33px;
            width: 100px;
            text-align: right;
        }

        .form-item .form-text {
            height: 33px;
            line-height: 33px;
            padding: 0;
            width: 260px;
            padding-left: 7px;
            border: 1px solid transparent;
            border-bottom: 2px dashed #ebb286;
            background: transparent;
            outline: 0;
            color: #000;
            font-size: 16px;
            -webkit-transition: all .3s;
            -moz-transition: all .3s;
            -ms-transition: all .3s;
        }

        .savebtn {
            width: 100px;
            height: 40px;
            border-radius: 5px;
            background-color: #5fbfd0;
            color: #fff;
            border: none;
            margin-left: 105px;
        }
    </style>
</head>
<body>
<div class="g-head">
    <div class="header_top">
        <div class="g-search f-cb"><a class="g-logo" href="" style="float:left;"><img
                src="${pageContext.request.contextPath }/dist/institutionManagement/images_common/logo.png"></a>
            <ul class="g-login" style="float:right">
                <c:choose>
                    <c:when test="${cookie.userlogin.value == null || cookie.userlogin.value == '' }">
                        <li><a href="login"> 登录</a></li>
                        <li><a href="register"> 注册</a></li>
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
    <div class="header header_top">
        <ul class="main_nav hide_search_box" id="hideSearchBox">
            <li class="home icons active"><a href="communityMainpage" title="社团首页">
                <!--            <i class="fa fa-home"></i>-->
                <em>首页</em></a></li>
            <li class="my_league icons "><a href="../../../学社主页/学社主页1-机构主页 - 主页.html" id="myleague" rel="nofollow"
                                            title="我的社团">
                <!--            <i class="fa fa-user"></i>-->
                <em>学社总汇</em></a></li>
            <li class="league_nav icons"><a href="#" rel="nofollow" title="我的社团">
                <!--            <i class="fa fa-eye"></i>-->
                <em>共同学习</em></a></li>
            <li class="article_mall icons "><a href="#" title="商城">
                <!--            <i class="fa fa-shopping-bag"></i>-->
                <em>学有所乐</em></a></li>
            <li class="icons more_functions "><a href="#" title="一元购" rel="nofollow">
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
        <li style="background: url('${pageContext.request.contextPath }/dist/institutionManagement/images_common/banner.png') center"></li>
        <li style="background: url('${pageContext.request.contextPath }/dist/institutionManagement/images_common/banner.png') center"></li>
        <li style="background: url('${pageContext.request.contextPath }/dist/institutionManagement/images_common/banner.png') center"></li>
    </ul>
</div>
<div class="head-banner" style="margin-bottom: 50px;">
    <div class="row">
        <div class="col-2">
            <div class="pic"><a href="/15101166271/" title="XXX语言俱乐部学习社"> <img
                    src="${pageContext.request.contextPath }/dist/institutionManagement/images/xueshe_03.jpg"
                    alt="XXX语言俱乐部学习社"> </a></div>
        </div>
        <div class="col-8">
            <div class="title"><a
                    href="${pageContext.request.contextPath }/societyMainpage/${community.ccid}"><span
                    id="headLeagueName"
                    class="title_text">${community.ccname}</span></a> <span class="fl">（总帖数2 |社员数3）</span>
                <span class="fl ml10 unsigned-icon" data-id="10116"></span></div>
            <div class="info cf">
                <div class="user_info_box fl">
                    <p>方向：${community.ccl} | 类型：${community.ccp} </p>
                    <p>社长：<a href="#" target="_blank" rel="nofollow">我是无敌虾米</a></p>
                    <p>管理员：小草 </p>
                    <p>机构：${community.cccname} </p>
                    <div class="summary"></div>
                </div>
                <div class="fr"><a href="${pageContext.request.contextPath }/societyMainpage/${community.ccid}"
                                   class="btn btn-l btn-green" id="btnManage">返回学社</a></div>
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
            <li class="home icons"><a href="" title="">
                <!--            <i class="fa fa-home"></i>-->
                <em>资料管理</em></a></li>
            <li class="league_nav icons"><a href="" title="">
                <!--            <i class="fa fa-eye"></i>-->
                <em>栏目管理</em></a></li>
            <li class="league_nav icons"><a href="${pageContext.request.contextPath }/memberManagement/${ccid}" title="社员管理">
                <!--            <i class="fa fa-eye"></i>-->
                <em>社员管理</em></a></li>
            <li class="article_mall icons "><a href="" title="">
                <!--            <i class="fa fa-shopping-bag"></i>-->
                <em>帖子管理</em></a></li>
            <li class="article_mall icons "><a href="" title="">
                <!--            <i class="fa fa-shopping-bag"></i>-->
                <em>功能管理</em></a></li>
            <li class="article_mall icons "><a href="" title="">
                <!--            <i class="fa fa-shopping-bag"></i>-->
                <em>回收站</em></a></li>
            <li class="article_mall icons active"><a href="" title="">
                <!--            <i class="fa fa-bullseye"></i>-->
                <em>机构管理</em></a></li>
            <%--<li class="search_league" style=" overflow: hidden;"></li>--%>
        </ul>
    </div>
</div>
<div id="pageContent" style="min-width:1140px;    padding-top: 10px;">
    <div class="wrapper">
        <div class="container pt20">
            <div class="container-title">
                <div class="section-title">机构管理</div>
                <p style="border-bottom: 2px solid #28c2f5;width: 220px;">INSTITUTION MANAGEMENT</p>
            </div>
            <div class="header1 container-title">
                <ul class="main_nav2 hide_search_box">
                    <li class="article_mall <c:if test="${pageno == 1}">active</c:if>"><a
                            href="${pageContext.request.contextPath }/institutionData/${ccid}"
                            title="机构资料">
                        <em>机构资料</em></a></li>
                    <li class="article_mall <c:if test="${pageno == 2}">active</c:if>"><a
                            href="${pageContext.request.contextPath }/institutionMembers/${ccid}" title="机构成员">
                        <em>机构成员</em></a></li>
                    <li class="article_mall <c:if test="${pageno == 3}">active</c:if>"><a
                            href="${pageContext.request.contextPath }/authoritySetting/${ccid}"
                            title="权限设置">
                        <em>权限设置</em></a></li>
                    <li class="article_mall <c:if test="${pageno == 4}">active</c:if>"><a
                            href="${pageContext.request.contextPath }/dataManagement/${ccid}"
                            title="课教管理">
                        <em>课教管理</em></a></li>
                    <li class="article_mall"><a href="../机构管理2/发布管理_发布课程.html" title="发布管理">
                        <em>发布管理</em></a></li>
                    <li class="article_mall"><a href="#" title="销财管理">
                        <em>销财管理</em></a></li>
                    <li class="article_mall"><a href="${pageContext.request.contextPath }/personalCenter/${ccid}"
                                                title="个人中心">
                        <em>个人中心</em></a></li>
                </ul>
            </div>