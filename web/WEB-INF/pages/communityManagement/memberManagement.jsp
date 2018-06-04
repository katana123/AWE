<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/6/4 0004
  Time: 16:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <meta name="keywords" content="awe"/>
    <meta name="description" content="awe"/>
    <meta name="viewport" content="width=device-width"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/dist/communityManagement/manage_dp/base.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/dist/communityManagement/manage_dp/manage_member.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/dist/communityManagement/manage_dp/team.css">
    <script src="${pageContext.request.contextPath }/dist/communityManagement/manage_dp/jquery-1.8.3.min.js"></script>
    <script src="${pageContext.request.contextPath }/dist/communityManagement/manage_dp/jquery.json-2.2.min.js"></script>
    <script src="${pageContext.request.contextPath }/dist/communityManagement/manage_dp/hui.widgets.1.0.2.js"></script>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/dist/communityManagement/manage_dp/hjpassport.min.css">
    <script src="${pageContext.request.contextPath }/dist/communityManagement/manage_dp/$_js_messagetip_js$_js_selectjs_js.js" type="text/javascript"></script>

    <!--<link rel="stylesheet" href="${pageContext.request.contextPath }/dist/communityManagement/css/my_community.css"/>-->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/dist/communityManagement/css/reset.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/dist/communityManagement/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/dist/communityManagement/css/head.css"/>
    <!--图片轮滑-->
    <link href="${pageContext.request.contextPath }/dist/communityManagement/css/poposlides.css" rel="stylesheet" >
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
        .member-manage{
            margin-bottom:20px;
        }

        .member-manage .mem-search{
            float:right;
            margin-left:20px;
            width:240px;
            position:relative;
            border:1px solid #ededed;
            border-radius:4px;
        }

        .member-manage .form-li .form-c input[type="text"]{
            border:0;width:200px
        }

        .member-manage .action_btns{float:right}
        .member-manage .action_btns .btn{float:left;margin-left:15px;color:#fff;background-color: #67c2d2;border:1px solid #67c2d2}



        .btn-search{
            position:absolute;
            right:0;
            bottom:0;
            width:38px;
            height:38px;
            text-indent:-999em;
        }

        .btn-search i{
            position:absolute;
            left:8px;
            top:10px;
            width:24px;
            height:20px;
            background-image:url('${pageContext.request.contextPath }/dist/communityManagement/images/icons.png');
            background-repeat:no-repeat;
            background-position:-84px -84px;
        }

        .member-list .pic{
            width:70px;
            height:70px;
            overflow:hidden;
            margin-bottom:5px;
        }

        .member-list .pic img{
            width:70px;
            height:70px;
        }

        .member-list .mem-li{
            width:70px;
        }

        .member-list .mem-li p{
            overflow:hidden;
            width:100%;
            line-height:1.2em;
            text-align:center;
            font-size:12px;
            word-break:break-all;
            word-wrap:break-word;
        }

        .member-list .mem-li p.username{
            height:2.4em;
        }

        .member-list .col{
            float:left;
            display:inline;
            position:relative;
            z-index:1;
        }

        .member-list .row-1{
            margin-bottom:40px;
        }

        .member-list .row-1 .col{
            width:20%;
            margin-bottom:25px;
        }

        .member-list .row-2 .mem-li{
            width:60px;
        }

        .member-list .row-2 .col{
            width:16.66666667%;
            margin-bottom:20px;
        }

        .member-list .row-2 .pic{
            width:60px;
            height:60px;
            overflow:hidden;
        }

        .member-list .row-2 .pic img{
            width:60px;
            height:60px;
        }

        .member-list .mem-func{
            display:none;
            position:absolute;
            left:-10px;
            top:-10px;
            width:90px;
            height:120px;
            padding-left:90px;
            padding-top:15px;
            background-color:#f4f4f4;
            z-index:-1;
        }

        .member-list .mem-func a{
            font-size:12px;
            display:block;
            height:28px;
            line-height:28px;
            position:relative;
            padding-left:20px;
        }

        .member-list .mem-func a:hover{
            color:#57af39;
        }

        .member-list .mem-func a i{
            position:absolute;
            left:0;
            top:4px;
        }

        .member-list .row-2 .mem-func{
            width:90px;
            height:90px;
            padding-left:80px;
        }

        .member-list .hover{
            z-index:9;
        }

        .member-list .hover .mem-func{
            display:block;
        }
        .user_list{color:#666}
        .user_list li{clear:both;height:50px;line-height:50px;text-align:center;overflow:hidden}
        .user_list li.odd{background:#f8f8f8}
        .user_list li:hover{background-color:#67c2d2;color:#fff}
        .user_list li:hover span,
        .user_list li:hover a{color:#fff}
        .user_list .month_post a,
        .user_list .month_reply a{text-decoration:underline;color:#666}

        .user_list li:hover .owner,
        .user_list li:hover .manage{background-position:-168px -48px}
        .user_list li:hover .to_manage,
        .user_list li:hover .to_normal,
        .user_list li:hover .delete{display:block}
        .user_list li:hover .green{color:#fff}
        .user_list li span{float:left;height:50px;word-break:break-all;word-wrap:break-word}
        .user_list li i{display:inline-block;position:relative;top:3px;width:16px;height:14px;background:url("${pageContext.request.contextPath }/dist/communityManagement/manage_dp/icons_all_small.png") no-repeat -216px -50px}
        .user_list .menu{height:40px;line-height:40px;background:#f1f1f1}
        .user_list .menu span{cursor:pointer}
        .user_list .menu .member_info{cursor:default}
        .user_list .menu .member_nickName{cursor:default}
        .user_list .menu:hover{background-color:#f1f1f1;color:#666}
        .user_list .menu:hover span{color:#666}
        .user_list .member_info{width:240px}
        .user_list .join_date,
        .user_list .last_post,
        .user_list .member_nickName,
        .user_list .member_birthday{width:90px}
        .user_list .month_post,
        .user_list .month_reply,
        .user_list .month_check,
        .user_list .level_no,
        .user_list .rank_num{width:60px}

        .user_list .arrow_up i{background-position:-216px -37px}
        .user_list .arrow_down i{background-position:-216px -24px}
        .user_list .no,
        .user_list .header_icon,
        .user_list .remarks{width:45px}
        .user_list .remarks{color:#ccc}
        .user_list .owner,
        .user_list .manage{margin:17px 2px;width:16px;height:16px;background:url("${pageContext.request.contextPath }/dist/communityManagement/manage_dp/icons_all_small.png") no-repeat -134px -48px}
        .user_list .check_box{width:20px}
        .user_list .check_box input{width:16px;height:16px;background:#fff}
        .user_list .manage{background-position:-150px -48px}
        .user_list .header_icon img{height:30px;height:30px;margin-top:10px}
        .user_list .to_manage,
        .user_list .to_normal{display:none;position:relative;top:18px;width:16px;height:16px;cursor:pointer}
        .user_list .to_manage i,
        .user_list .to_normal i{top:-18px;width:13px;height:11px;background:url("${pageContext.request.contextPath }/dist/communityManagement/manage_dp/icons_all_small.png") no-repeat -186px -52px}
        .user_list .to_normal i{background-position:-201px -52px}
        .user_list .to_manage:hover,
        .user_list .to_normal:hover,
        .user_list .delete:hover{background-color:#4db12a;border-radius:8px}
        .user_list .ellipsis_text{width:130px;height:50px;line-height:50px;text-align:left}
        .user_list .desc{display:none;width:78px;height:18px;line-height:18px;color:#fff;background-color:#508a3c;font-size:12px}
        .user_list .to_manage:hover .desc,
        .user_list .to_normal:hover .desc{display:block;position:absolute;top:-18px;left:-32px}
        .user_list .delete{display:none;margin:16px 0 0 8px;width:17px;height:17px;background:url("${pageContext.request.contextPath }/dist/communityManagement/manage_dp/icons_all_small.png") no-repeat -215px -10px;cursor:pointer}
        .user_list .rank_no,
        .user_list .user_level{width:70px}
        .user_list .user_exp_num,
        .user_list .rank_change{width:90px}
        .user_list .level_title{width:100px}
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
        }.user_list li span {
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
        <div class="g-search f-cb" > <a class="g-logo" href="" style="float:left;"><img src="${pageContext.request.contextPath }/dist/communityManagement/images_common/logo.png"></a>
            <ul class="g-login" style="float:right">
                <li><a href=".${pageContext.request.contextPath }/dist/communityManagement/.${pageContext.request.contextPath }/dist/communityManagement/product一级/index.html" class="nav1">首页</a></li>
                <li class="g-act"><a href=".${pageContext.request.contextPath }/dist/communityManagement/.${pageContext.request.contextPath }/dist/communityManagement/登录/登录.html">登录</a></li>
                <li>
                    <select class="g-select" name="" >
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
            <li class="my_league icons "><a href=".${pageContext.request.contextPath }/dist/communityManagement/学社首页/社团首页.htm" id="myleague" rel="nofollow" title="我的社团" >
                <!--            <i class="fa fa-user"></i>-->
                <em>学社总汇</em></a></li>
            <li class="league_nav icons"><a href=".${pageContext.request.contextPath }/dist/communityManagement/我的社团/03会员学社主页/我的学社.html"  rel="nofollow" title="我的社团">
                <!--            <i class="fa fa-eye"></i>-->
                <em>共同学习</em></a></li>
            <li class="article_mall icons "><a href=".${pageContext.request.contextPath }/dist/communityManagement/学有所乐/房间.html" title="商城">
                <!--            <i class="fa fa-shopping-bag"></i>-->
                <em>学有所乐</em></a></li>
            <li class="icons more_functions "><a href=".${pageContext.request.contextPath }/dist/communityManagement/商城/商城-行为道具.html" title="一元购" rel="nofollow">
                <!--            <i class="fa fa-bullseye"></i>-->
                <em>商城</em></a> </li>
            <li class="search_league" style=" overflow: hidden;"> </li>
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
            <div class="pic"> <a href="/15101166271/" title="手机摄影作品分享"> <img src="http://n1image.hjfile.cn/shetuan/2017-06-01-1496246655-322-3667.jpg?imageView2/2/w/160/h/160" alt="手机摄影作品分享"> </a> </div>
        </div>
        <div class="col-8">
            <div class="title"> <a href="/15101166271/"><span id="headLeagueName" class="title_text">手机摄影作品分享</span></a> <span class="fl">（成员 1 | 总贴量 0）</span> <span class="fl ml10 unsigned-icon" data-id="10116"></span> </div>
            <div class="info cf">
                <div class="user_info_box fl">
                    <p>分类：娱乐
                        | 类型：公开 </p>
                    <p>社长：<a href="http://bulo.hujiang.com/72310219/" target="_blank" rel="nofollow">LOVEWUST</a> </p>
                    <div class="summary"></div>
                </div>
                <div class="fr"> <a href="/15101166271/admin/" class="btn btn-l btn-green" id="btnManage">返回学社</a> </div>
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
            <li class="home icons"><a href="资料管理.html"  title="社团首页">
                <!--            <i class="fa fa-home"></i>-->
                <em>资料管理</em></a></li>
            <li class="league_nav icons"><a href="栏目管理.html" title="发现社团">
                <!--            <i class="fa fa-eye"></i>-->
                <em>栏目管理</em></a></li>
            <li class="league_nav icons  active"><a href="成员管理.html" title="发现社团">
                <!--            <i class="fa fa-eye"></i>-->
                <em>社员管理</em></a></li>
            <li class="article_mall icons "><a href="帖子管理.html" title="商城">
                <!--            <i class="fa fa-shopping-bag"></i>-->
                <em>帖子管理</em></a></li>
            <li class="article_mall icons "><a href="功能管理.html" title="商城">
                <!--            <i class="fa fa-shopping-bag"></i>-->
                <em>功能管理</em></a></li>
            <li class="article_mall icons "><a href="回收站.html" title="商城">
                <!--            <i class="fa fa-shopping-bag"></i>-->
                <em>回收站</em></a></li>
            <li class="article_mall icons " style="margin-left: 20px;"><a href="${pageContext.request.contextPath }/institutionData/${ccid}" title="机构管理">
                <!--            <i class="fa fa-shopping-bag"></i>-->
                <em>机构管理</em></a></li>

        </ul>

    </div>
</div>
<script src="${pageContext.request.contextPath }/dist/communityManagement/manage_dp/$_js_leaguemember_js.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath }/dist/communityManagement/manage_dp/fpv2.js" type="text/javascript"></script>
<div id="pageContent" style="min-width:1140px;">
    <div class="wrapper">
        <div class="container pt20">
            <div class="container-title">
                <div class="section-title">社员管理</div>
                <p style="border-bottom: 2px solid #28c2f5;width: 230px;">LEAGUER MANAGEMENT</p>
            </div>
            <script type="text/javascript">
                $(function(){
                    function init(){
                        var totalWidth=0,
                            obj=$('#adminNavBox'),
                            width=obj.width(),
                            paddingleft=10;
                        obj.find('li').each(function(){
                            totalWidth+=$(this).outerWidth();
                        });
                        if(document.documentElement.clientWidth>=1200){
                            paddingleft=15;
                        }

                        if(totalWidth>width){
                            //长度超过了
                            obj.prepend('<span class="more_nav_hide"></span>');
                            obj.on('click','.more_nav_hide',function(){
                                var self=$(this),
                                    sl=0,
                                    firstLen=0,
                                    scrollLen=totalWidth-width-firstLen,
                                    duration =(scrollLen/60) * 100 ;


                                if(!self.hasClass('active')){
                                    self.addClass('active');
                                    obj.find('ul').animate({'margin-left':-scrollLen,'padding-left':0},{duration: duration ,queue:false,complete:function(){
                                            obj.find('li').each(function(i,n){
                                                if(i!=0 && scrollLen>sl-20){
                                                    sl+=$(this).outerWidth();
                                                }else if(i!=0){
                                                    obj.find('ul').animate({'margin-left':-sl},{duration:50,queue:false});
                                                    return false;
                                                }
                                            });
                                        }});
                                }else{
                                    self.removeClass('active');
                                    obj.find('li').css('visibility','visible');
                                    obj.find('ul').animate({'margin-left':0,'padding-left':0},{duration:duration,queue:false});
                                }
                            });

                            var _t=0;
                            obj.find('li').each(function(){
                                _t+=$(this).outerWidth();
                                if($(this).hasClass('active')){
                                    return false;
                                }
                            });
                            if(_t>width){
                                obj.find('.more_nav_hide').click();
                            }
                        }
                    }
                    init();

                })
            </script>
            <div class="container member-manage">
                <!--

                <div class="nav navi" id="adminNavBox">
                    <ul>

                        <li class=""><a href="/15101186271/admin/setting/">社团信息</a><i></i></li>
                        <li class=""><a href="/15101186271/admin/board/">内容分类</a><i></i></li>
                        <li class="active"><a href="/15101186271/admin/member/">成员管理</a><i></i></li>
                        <li class=""><a href="/15101186271/admin/topicmanager/">帖子管理</a><i></i></li>
                        <li class=""><a href="/15101186271/admin/topicbin/">回收站</a><i></i></li>

                        <li class=""><a href="/15101186271/admin/audit/">批准成员</a><i></i></li>

                        <li class=""><a href="/15101186271/admin/magaudit/">社刊审核</a><i></i></li>

                        <li class=""><a href="/15101186271/admin/plugin/">高级功能</a><i></i></li>
                        <li class=""><a href="/15101186271/admin/log/">操作日志</a><i></i></li>


                    </ul>
                </div>
                -->
                <script type="text/javascript">
                    $(function(){
                        function init(){
                            var totalWidth=0,
                                obj=$('#adminNavBox'),
                                width=obj.width(),
                                paddingleft=10;
                            obj.find('li').each(function(){
                                totalWidth+=$(this).outerWidth();
                            });
                            if(document.documentElement.clientWidth>=1200){
                                paddingleft=15;
                            }

                            if(totalWidth>width){
                                //长度超过了
                                obj.prepend('<span class="more_nav_hide"></span>');
                                obj.on('click','.more_nav_hide',function(){
                                    var self=$(this),
                                        sl=0,
                                        firstLen=0,
                                        scrollLen=totalWidth-width-firstLen,
                                        duration =(scrollLen/60) * 100 ;


                                    if(!self.hasClass('active')){
                                        self.addClass('active');
                                        obj.find('ul').animate({'margin-left':-scrollLen,'padding-left':0},{duration: duration ,queue:false,complete:function(){
                                                obj.find('li').each(function(i,n){
                                                    if(i!=0 && scrollLen>sl-20){
                                                        sl+=$(this).outerWidth();
                                                    }else if(i!=0){
                                                        obj.find('ul').animate({'margin-left':-sl},{duration:50,queue:false});
                                                        return false;
                                                    }
                                                });
                                            }});
                                    }else{
                                        self.removeClass('active');
                                        obj.find('li').css('visibility','visible');
                                        obj.find('ul').animate({'margin-left':0,'padding-left':0},{duration:duration,queue:false});
                                    }
                                });

                                var _t=0;
                                obj.find('li').each(function(){
                                    _t+=$(this).outerWidth();
                                    if($(this).hasClass('active')){
                                        return false;
                                    }
                                });
                                if(_t>width){
                                    obj.find('.more_nav_hide').click();
                                }
                            }
                        }
                        init();

                    })
                </script>

                <div class="form-li">
                    <dl class="m-select" id="m_monthType">
                        <dt>201708</dt>
                        <dd style="display: none;">
                            <input type="hidden" name="leagueType" id="leagueType" value="201708">
                            <a val="1" href="javascript:;">全部分类</a><a class="selected" val="201708" href="javascript:;">201708</a><a val="201707" href="javascript:;">201707</a><a val="201706" href="javascript:;">201706</a></dd>
                    </dl>
                    <div class="action_btns">

                        <a href="javascript:;" class="btn-export btn ">导出成员</a>
                        <a id="blackListManageBTN" href="javascript:;" class="btn">管理黑名单</a>
                    </div>
                    <div class="form-c mem-search">
                        <input type="text" placeholder="搜索成员" maxlength="20" value="" id="txt_key">
                        <input id="hid_LeagueID" type="hidden" value="10118">
                        <a href="javascript:;" class="btn-search"><i></i>搜索</a>
                    </div>
                    <div class="fr grey">
                        成员上限2800
                    </div>
                </div>
                <div class="del_more_users hide">
                    <div class="container">
                        <a href="javascript:;" class="fr btn btn-default deleteMoreUser">删除成员</a>
                    </div>
                </div>
                <div class="user_list">
                    <ul>
                        <li class="menu">
                            <span class="member_info">成员</span>
                            <span class="member_nickName">昵称</span>
                            <span class="month_post" data-value="1">月发帖<i></i></span>
                            <span class="month_reply" data-value="3">月回帖<i></i></span>
                            <span class="month_check" data-value="9">月签到<i></i></span>
                            <span class="level_no" data-value="11">等级<i></i></span>
                            <span class="rank_num" data-value="13">经验值<i></i></span>
                            <span class="join_date" data-value="5">入社时间<i></i></span>
                            <span class="last_post" data-value="7">最后发言时间<i></i></span>
                            <span class="member_birthday">出生年月</span>
                        </li>
                        <c:forEach items="${JoinedMember}" var="JoinedMember">
                        <li class="" data-userid="72310219" data-username="LOVEWUST">
                            <span class="no">01</span>
                            <span class="owner"></span>
                            <a rel="nofollow" href="http://bulo.hujiang.com/72310219/" target="_blank">
                            <span class="header_icon">
                                <img src="http://i2n.hjfile.cn/u/200/72310219/YNMgubeuIOk4Rei.jpg" alt=""></span>
                                <span class="ellipsis_text">${JoinedMember[1]}</span>
                            </a>
                            <span class="member_nickName"></span>
                            <span class="month_post">0</span>
                            <span class="month_reply">0</span>
                            <span class="month_check">0</span>

                            <span class="level_no">2</span>
                            <span class="rank_num">0</span>
                            <span class="join_date">${JoinedMember[4]}</span>
                            <span class="last_post">2017/07/11</span>
                            <span class="member_birthday"></span>

                            <span class="remarks">&nbsp;</span>
                        </li>
                        </c:forEach>
                    </ul>

                </div>
            </div>
        </div>
    </div>
    <!--   <div id="simplemodal-container" class="simplemodal-container" style="position: fixed; z-index: 1002; height: 217px; width: 500px; left: 189.5px; top: 186px;"><a class="modalCloseImg simplemodal-close" title="Close"></a><div tabindex="-1" class="simplemodal-wrap" style="height: 100%; outline: 0px; width: 100%; overflow: visible;"><div class="pop-out hide edit_board_box simplemodal-data" id="editBoardBox">
          <h3>修改帖子分类</h3>
          <p><label>分类名称</label><span class="input_box" style="border:1px solid #CCC;display:inline-block;">%E7%A4%BE%E5%9B%A2%E6%B4%BB%E5%8A%A8</span><input type="text" class="input_box" maxlength="12" value="" style="display: none;"></p>
          <p style="display:none"><label>分类标签</label><input type="text" class="input_box" maxlength="20" value=""></p>
          <p class="edit_tip" style="display:none"><label>&nbsp;</label>选填，最多可设置5个标签，不同标签用英文逗号分隔。</p>
          <p class="index-visible"><label for="indexV">首页可见</label><input type="checkbox" id="indexV" checked="checked"><span class="edit_tip">该分类下内容设置首页是否可见，勾选为可见</span></p>
          <p><a href="javascript:;" class="btn btn-m btn-green" id="saveEditBoardBTN">保存</a></p>
      </div></div></div>
      -->
    <!--
     <div class="footer_go_top">
            <ul>
          <li> <a href="javascript:;" class="news_btn"></a> <span class="news_dotted" style="display: none;"></span> </li>

          <li><a href="#pageContent" class="go_top" style="display: none;"><i></i><span class="hide_text">返回<br>
            顶部</span></a></li>
        </ul>
          </div>
  -->

    <!-- st-list : end -->

    <!-- 页脚-->
    <div class="m-corporation">
        <p> 2017 武汉外语培训 Corporation 【网站后台管理】 备案号</p>
    </div>
    <script src="${pageContext.request.contextPath }/dist/communityManagement/manage_dp/leagueInfo.js"></script>
    <script src="${pageContext.request.contextPath }/dist/communityManagement/manage_dp/selectJS.js"></script>
    <script>

        if($('#hdleagueID').val()>1){
            if($('#leagueSummary').val()==''){
                $('#leagueSummary').focus();
            }else if($('#leagueTag').val()==''){
                $('#leagueTag').focus();
            }
        }

        new SelectorJS.selector.init({
            id:'#m_leagueType',
            data: [["0", "申请加入"],["1", "开放加入"], ],
            value:'0'
        });
        $("#m_leagueType a").click(function(){
            if ($("#leagueType").val() == "0") {
                $(".hint").show();
            }else{
                $(".hint").hide();
            }
        });
        new SelectorJS.selector.init({
            id: '#m_category',
            data:[["0","选择分类"]

                ,["1","语言"]

                ,["2","学习"]

                ,["3","人文"]

                ,["4","生活"]

                ,["5","娱乐"]

                ,["6","其他"]

            ],
            value:'选择分类'
        });

        $('#m_category').find('a').eq(0).remove();

        function updateIM() {
            var phoneNum = parseInt($("#tel").val());
            if (!phoneNum) {
                $('#tel').focus().select();
                alert('请输入有效的手机号码');
                return;
            }
            if (!/1\d{10}/.test(phoneNum)) {
                $('#tel').focus().select();
                alert('请输入11位有效的手机号码');
                return;
            }
            $('#btnCellphone').val('发送验证码中……').attr('disabled', true);
            $.comajax("/ajax/PostAjax.asmx", "SendSMSMessage", { tel: phoneNum }, function (d) {
                var retVal=d.saveOK;
                if (retVal== -2) {
                    alert("请重新登录");
                    return;
                }else if (retVal == 0) {
                    alert('短信发送失败，请稍候重试');
                    $('#btnCellphone').val('重新获得验证码');
                    $('#btnCellphone').attr('disabled', false);
                    return;
                }
                var start = 60;
                var t = setInterval(function () {
                    $('#btnCellphone').val(start + ' 秒后重新获得验证码');
                    start--;
                    if (start == 0) {
                        clearInterval(t);
                        $('#btnCellphone').val('重新获得验证码');
                        $('#btnCellphone').attr('disabled', false);
                    }
                }, 1000);

            }, null);
        }
        function ValidCode() {
            $("#hid_IsCode").val("0");
            var code = $.trim($('#telCode').val());
            var phoneNum = $("#tel").val();
            if(phoneNum==null || phoneNum=='')
                return;
            if (code == '') {
                $('#telCode').focus().select();
                alert('请输入有效的验证码');
                return;
            }
            phoneNum = parseInt($("#tel").val());
            if (phoneNum == '') {
                $('#tel').focus().select();
                alert('请输入有效的手机号码');
                return;
            }
            $.comajax("/ajax/PostAjax.asmx", "ValidSMS", {validCode:code, tel: phoneNum }, function (d) {
                var retVal=d.saveOK; //-2:尚未生成验证码 -1:已经验证过 0：错误 1：正确
                switch (retVal) {
                    case 0:
                        alert('此验证码已失效，请重新选择生成验证码');
                        break;
                    case -2:
                        alert('请重新登录');
                        break;
                    case -1:
                        alert('验证码输入不正确');
                        break;
                    case 1:{$("#hid_IsCode").val("1");}
                        break;
                }
            }, null);
        }
    </script>
</div>
</div>
<input type="hidden" id="hid_shareType" value="common">
<script src="${pageContext.request.contextPath }/dist/communityManagement/manage_dp/bhome.js" type="text/javascript"></script>
<script type="text/javascript">


    window._bd_share_config = {
        common: {
            bdText: document.title,
            bdDesc: 'awe社团',
            bdPic: '//st.awe.com/images/icon114.png'
        },
        share: [{
            "bdSize": 32
        }]
    }
    //with(document)0[(getElementsByTagName('head')[0]||body).appendChild(createElement('script')).src='http://bdimg.share.baidu.com/static/api/js/share.js?cdnversion='+~(-new Date()/36e5)];

    var centerUserID=72310219;
    var centerUserName = "LOVEWUST";
    register_tooltip.userID=centerUserID;

    var sign_red_dot = '<b class="sign-red-dot"></b>';

    $(function () {

        $('.go_top').click(function(){
            if(document.documentElement.scrollTop>0){
                $(document.documentElement).animate({"scrollTop":0});
            }else{
                $('body').animate({"scrollTop":0});
            }
        });


    });

</script><script src="${pageContext.request.contextPath }/dist/communityManagement/manage_dp/bulo_st.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/dist/communityManagement/manage_dp/gentian.1.0.3.min.js"></script>
<script>
    $(".slides").poposlides();
</script>
</body>
</html>