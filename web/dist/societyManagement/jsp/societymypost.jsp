<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <title>awe</title>
    <meta name="keywords" content="awe"/>
    <meta name="description" content="awe"/>
    <meta name="viewport" content="width=device-width"/>
    <link rel="stylesheet" href="css/function.css"/>
    <link rel="stylesheet" href="css/rest.css"/>
    <link rel="stylesheet" href="css/my_community_activity.css"/>
    <link rel="stylesheet" href="css/common.css"/>
    <link rel="stylesheet" href="css/font-awesome.min.css"/>
    <link rel="stylesheet" href="css/index.css"/>
    <link rel="stylesheet" href="css/default.css"/>
    <script src="libs/jquery.min.js" type="text/javascript" charset="utf-8"></script>
    <script src="libs/jquery.SuperSlide.2.1.1.js" type="text/javascript" charset="utf-8"></script>
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
        <a class="g-logo" href=""><img src="images/logo.jpg"></a>
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
            <li class="g-act"><a href="../../学社首页/学社首页.htm">首页</a></li>

            <li><a href="../学社汇总2/全部学社.html">学社总汇</a></li>
            <li><a href="../03共同学习/共同学习.html">共同学习</a></li>
            <li><a href="../学有所乐/房间.html">学有所乐</a></li>
            <li><a href="../商城/商城-行为道具.html">商城</a></li>
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
                    <li><a href="" target=""><img src="tmp/images/banner.png"></a></li>
                    <li><a href="" target=""><img src="tmp/images/banner.png"></a></li>
                    <li><a href="" target=""><img src="tmp/images/banner.png"></a></li>
                </ul>
            </div>
        </div>
    </div>
    <div class="g-hd">
        <ul class="m-nav f-cb g-w1200">
            <li>&nbsp;</li>
            <li><a href="学社主页1-机构主页 - 主页.html">机构页面</a></li>

            <li class="g-act_second_active"><a href="">学社帖子</a></li>
        </ul>
    </div>

    <div class="g-bd">
        <div class="g-mn  g-w1200 f-cb ">
            <div class="m-toutiao f-cb">
                <!--                <p class="g-tt">AWE头条</p>-->
                <ul class="m-son-nav f-fl">
                    <li style="width: 80px;font-size: 14px;background: url(tmp/images/li_bg1.png)"><a href="">机构</a>
                    </li>  <!-- class="son-act"-->
                    <li><a href="学社主页2-学社帖子 - 全部.html"> <span class="second_nav_top">全部帖子</span><span
                            class="second_nav_bottom">ALL POST</span></a></li>
                    <li class="m-son-nav_active">
                        <div><a href="学社主页2-学社帖子 - 我的帖子.html">
                            <span class="second_nav_top  font_white">我的帖子(9)</span>
                            <span class="second_nav_bottom  font_white">MY POSTS</span>

                        </a></div>

                    </li>
                    <li><a href="学社主页2-学社帖子 -精华.html"><span class="second_nav_top">精华(12)</span><span
                            class="second_nav_bottom">  ESSENCE  </span></a></li>
                    <li><a href="学社主页2-学社帖子 - 学社活动.html"><span class="second_nav_top">活动帖子(5)</span><span
                            class="second_nav_bottom">EVENT</span></a></li>
                    <li><a href="学社主页2-学社帖子 - 学社公告.html"><span class="second_nav_top">学社公告</span><span
                            class="second_nav_bottom">NOTICE </span></a></li>
                    <li style="background: url(tmp/images/weixin.jpg) center center;background-repeat: no-repeat;"><a
                            href=""></a></li>
                </ul>
            </div>
            <div class="m-news-top2" style="min-height: 1200PX">

                <div class="topic_list" style="padding-left: 30px;
    padding-right: 30px;">
                    <ul>
                        <li class="clearfix"><a rel="nofollow" class="topic_icon" href="" target="_blank"
                                                title="DDDDDouble"> <img class="topic_list_img_user"
                                                                         src="images/user1.jpg"> </a>
                            <div class="topic_content">
                                <div class="topic_title clearfix"><span class="topic_times">1天前</span> <span
                                        class="icon-top">置顶</span> <a href="/topic/1711635071052/" class="ellipsis_text"
                                                                      target="_blank"
                                                                      title="【每日美文抄写】5月9日">【每日美文抄写】5月9日</a></div>
                                <p class="topic_desc" style="display:none;">今&nbsp;&nbsp;日&nbsp;&nbsp;美&nbsp;&nbsp;文&nbsp;&nbsp;有时我们很爱忘记，大多数时候我们都是在黑暗中磕磕绊绊，突然间天亮了，人们却开…</p>
                                <div class="other_info clearfix "><span class="icons praise_num"
                                                                        title="点赞数"><i></i>3</span> <span
                                        class="icons reply_num" title="回帖数"><i></i>53</span> <span
                                        class="icons read_num" title="阅读数"><i></i>170</span> <span class="topic_from">最后回复：<font
                                        style="color:#eda769">席琳和荣耀</font>　9小时前</span> 　|　<a href="/mag/165506201865"
                                                                                             target="_blank"><span
                                        class="grey">每日美文手抄</span></a> <span class="grey">(第263期)</span></div>
                            </div>
                        </li>
                        <li class="clearfix"><a rel="nofollow" class="topic_icon" href="" target="_blank" title="樱516莲">
                            <img class="topic_list_img_user" src="images/user2.jpg"> </a>
                            <div class="topic_content">
                                <div class="topic_title clearfix"><span class="topic_times">14小时前</span> <span
                                        class="icon-hot">热帖</span> <a href="/topic/1711637434874/" class="ellipsis_text"
                                                                      target="_blank" title="【中文台词翻配】花间提壶方大厨170509">【中文台词翻配】花间提壶方大厨170509</a>
                                </div>
                                <p class="topic_desc" style="display:none;">
                                    《花间提壶方大厨》是一部由新圣堂影业出品的网络剧，该剧改编自耳雅的同名小说，是一部轻松活泼的古代戏剧片，由雷牧和蒋佳恩主演，上演了厨艺高…</p>
                                <div class="other_info clearfix "><span class="icons praise_num"
                                                                        title="点赞数"><i></i>0</span> <span
                                        class="icons reply_num" title="回帖数"><i></i>8</span> <span class="icons read_num"
                                                                                                  title="阅读数"><i></i>20</span>
                                    <span class="topic_from">最后回复：狐绯　9小时前</span> 　|　<a href="/mag/1441935431"
                                                                                       target="_blank"><span
                                            class="grey">中文台词翻配</span></a> <span class="grey">(第128期)</span></div>
                            </div>
                        </li>

                        <li class="clearfix"><a rel="nofollow" class="topic_icon" href="" target="_blank" title="樱516莲">
                            <img class="topic_list_img_user" src="images/user2.jpg"> </a>
                            <div class="topic_content">
                                <div class="topic_title clearfix"><span class="topic_times">14小时前</span> <span
                                        class="icon_team">精华</span> <a href="/topic/1711637434874/"
                                                                       class="ellipsis_text" target="_blank"
                                                                       title="【中文台词翻配】花间提壶方大厨170509">【中文台词翻配】花间提壶方大厨170509</a>
                                </div>
                                <p class="topic_desc" style="display:none;">
                                    《花间提壶方大厨》是一部由新圣堂影业出品的网络剧，该剧改编自耳雅的同名小说，是一部轻松活泼的古代戏剧片，由雷牧和蒋佳恩主演，上演了厨艺高…</p>
                                <div class="other_info clearfix "><span class="icons praise_num"
                                                                        title="点赞数"><i></i>0</span> <span
                                        class="icons reply_num" title="回帖数"><i></i>8</span> <span class="icons read_num"
                                                                                                  title="阅读数"><i></i>20</span>
                                    <span class="topic_from">最后回复：狐绯　9小时前</span> 　|　<a href="/mag/1441935431"
                                                                                       target="_blank"><span
                                            class="grey">中文台词翻配</span></a> <span class="grey">(第128期)</span></div>
                            </div>
                        </li>
                        <li class="clearfix"><a rel="nofollow" class="topic_icon" href="" target="_blank"
                                                title="DDDDDouble"> <img class="topic_list_img_user"
                                                                         src="images/user1.jpg"> <span
                                class="user_name">DDDDDouble</span> </a>
                            <div class="topic_content">
                                <div class="topic_title clearfix"><span class="topic_times">24分钟前</span> <a
                                        href="/topic/1711639316286/" class="ellipsis_text" target="_blank"
                                        title="【每日美文抄写】5月10日">【每日美文抄写】5月10日</a> <i class="icon_new">new</i></div>
                                <p class="topic_desc">今&nbsp;&nbsp;日&nbsp;&nbsp;美&nbsp;&nbsp;文&nbsp;&nbsp;如果有来生，&nbsp;要做一棵树，&nbsp;站成永恒，&nbsp;没有悲欢的姿势。&nbsp;一半…</p>
                                <div class="other_info clearfix "><span class="icons praise_num"
                                                                        title="点赞数"><i></i>0</span> <span
                                        class="icons reply_num" title="回帖数"><i></i>1</span> <span class="icons read_num"
                                                                                                  title="阅读数"><i></i>2</span>
                                    <span class="topic_from">最后回复：紫筱秋涵　3分钟前</span> 　|　<a href="/mag/165506201865"
                                                                                         target="_blank"><span
                                            class="grey">每日美文手抄</span></a> <span class="grey">(第264期)</span></div>
                            </div>
                        </li>
                        <li class="clearfix"><a rel="nofollow" class="topic_icon" href="" target="_blank"
                                                title="ywb1218"> <img class="topic_list_img_user"
                                                                      src="images/user3.jpg"> <span class="user_name">ywb1218</span>
                        </a>
                            <div class="topic_content">
                                <div class="topic_title clearfix"><span class="topic_times">2017-03-24 16:43</span> <a
                                        href="/topic/1711435396285/" class="ellipsis_text" target="_blank"
                                        title="【资源分享】法国电影--《初吻》">【资源分享】法国电影--《初吻》</a></div>
                                <p class="topic_desc">&nbsp;我的资源都是自己看过之后再分享的，但这部电影是个例外。我只确认了影片能正常播放就分享了，最近不想看爱情方面的电影。&nbsp;【aoisan…</p>
                                <div class="other_info clearfix "><span class="icons praise_num"
                                                                        title="点赞数"><i></i>1</span> <span
                                        class="icons reply_num" title="回帖数"><i></i>11</span> <span
                                        class="icons read_num" title="阅读数"><i></i>70</span> <span class="topic_from">最后回复：薯片早上好　10小时前</span>
                                    　|　<a href="/mag/1439084280" target="_blank"><span class="grey">资源快到碗里来</span></a>
                                    <span class="grey">(第280期)</span></div>
                            </div>
                        </li>
                        <li class="clearfix"><a rel="nofollow" class="topic_icon" href="" target="_blank" title="狼毫">
                            <img class="topic_list_img_user" src="images/user4.jpg"> <span class="user_name">狼毫</span>
                        </a>
                            <div class="topic_content">
                                <div class="topic_title clearfix"><span class="topic_times">1天前</span> <a
                                        href="/topic/1711634971375/" class="ellipsis_text" target="_blank"
                                        title="【你画我猜】第477期 20170509要是嫌弃我的画画水平乃们就完蛋了！">【你画我猜】第477期
                                    20170509要是嫌弃我的画画水平乃们就完蛋了！</a></div>
                                <p class="topic_desc">&nbsp;&nbsp;游戏规则：&nbsp;1.答案仅楼主可见！！！否则作废！！！&nbsp;2.当日凡答对即奖励3基金~3.时间：每天1期~时间可看标题~4.未加入或修改I…</p>
                                <a href="/topic/1711634971375/" class="topic_imgs" target="_blank"> <span
                                        class="topic_img_box"><img src="images/topic1.png" class="topic_content_img"
                                                                   onerror="this.parentNode.style.display='none'"
                                                                   alt="【你画我猜】第477期 20170509要是嫌弃我的画画水平乃们就完蛋了！"></span>
                                    <span class="topic_img_box"><img src="images/topic2.png" class="topic_content_img"
                                                                     onerror="this.parentNode.style.display='none'"
                                                                     alt="【你画我猜】第477期 20170509要是嫌弃我的画画水平乃们就完蛋了！"></span>
                                </a>
                                <div class="other_info clearfix "><span class="icons praise_num"
                                                                        title="点赞数"><i></i>3</span> <span
                                        class="icons reply_num" title="回帖数"><i></i>47</span> <span
                                        class="icons read_num" title="阅读数"><i></i>140</span> <span class="topic_from">最后回复：勤劳的小狗子　10小时前</span>
                                    　|　<a href="/mag/1444341119" target="_blank"><span class="grey">你画我猜</span></a>
                                    <span class="grey">(第477期)</span></div>
                            </div>
                        </li>
                        <li class="clearfix"><a rel="nofollow" class="topic_icon" href="" target="_blank"
                                                title="ywb1218"> <img class="topic_list_img_user"
                                                                      src="images/user3.jpg"> <span class="user_name">ywb1218</span>
                        </a>
                            <div class="topic_content">
                                <div class="topic_title clearfix"><span class="topic_times">2017-03-15 10:57</span> <a
                                        href="/topic/1711389871295/" class="ellipsis_text" target="_blank"
                                        title="【资源分享】法国电影--《放牛班的春天》">【资源分享】法国电影--《放牛班的春天》</a></div>
                                <p class="topic_desc">“那漫天飘扬的纸飞机是我对你最诚挚的敬意”&nbsp;影片的导演和编剧是同一个人，但他既不是导演也不是编剧，而是一名音乐家。创作剧本的灵感，来…</p>
                                <div class="other_info clearfix "><span class="icons praise_num"
                                                                        title="点赞数"><i></i>2</span> <span
                                        class="icons reply_num" title="回帖数"><i></i>22</span> <span
                                        class="icons read_num" title="阅读数"><i></i>50</span> <span class="topic_from">最后回复：thunder8510　12小时前</span>
                                    　|　<a href="/mag/1439084280" target="_blank"><span class="grey">资源快到碗里来</span></a>
                                    <span class="grey">(第279期)</span></div>
                            </div>
                        </li>
                        <li class="clearfix"><a rel="nofollow" class="topic_icon" href="" target="_blank"
                                                title="DDDDDouble"> <img class="topic_list_img_user"
                                                                         src="images/user1.jpg"> <span
                                class="user_name">DDDDDouble</span> </a>
                            <div class="topic_content">
                                <div class="topic_title clearfix"><span class="topic_times">24分钟前</span> <a
                                        href="/topic/1711639316286/" class="ellipsis_text" target="_blank"
                                        title="【每日美文抄写】5月10日">【每日美文抄写】5月10日</a> <i class="icon_new">new</i></div>
                                <p class="topic_desc">今&nbsp;&nbsp;日&nbsp;&nbsp;美&nbsp;&nbsp;文&nbsp;&nbsp;如果有来生，&nbsp;要做一棵树，&nbsp;站成永恒，&nbsp;没有悲欢的姿势。&nbsp;一半…</p>
                                <div class="other_info clearfix "><span class="icons praise_num"
                                                                        title="点赞数"><i></i>0</span> <span
                                        class="icons reply_num" title="回帖数"><i></i>1</span> <span class="icons read_num"
                                                                                                  title="阅读数"><i></i>2</span>
                                    <span class="topic_from">最后回复：紫筱秋涵　3分钟前</span> 　|　<a href="/mag/165506201865"
                                                                                         target="_blank"><span
                                            class="grey">每日美文手抄</span></a> <span class="grey">(第264期)</span></div>
                            </div>
                        </li>
                        <li class="clearfix"><a rel="nofollow" class="topic_icon" href="" target="_blank"
                                                title="ywb1218"> <img class="topic_list_img_user"
                                                                      src="images/user3.jpg"> <span class="user_name">ywb1218</span>
                        </a>
                            <div class="topic_content">
                                <div class="topic_title clearfix"><span class="topic_times">2017-03-24 16:43</span> <a
                                        href="/topic/1711435396285/" class="ellipsis_text" target="_blank"
                                        title="【资源分享】法国电影--《初吻》">【资源分享】法国电影--《初吻》</a></div>
                                <p class="topic_desc">&nbsp;我的资源都是自己看过之后再分享的，但这部电影是个例外。我只确认了影片能正常播放就分享了，最近不想看爱情方面的电影。&nbsp;【aoisan…</p>
                                <div class="other_info clearfix "><span class="icons praise_num"
                                                                        title="点赞数"><i></i>1</span> <span
                                        class="icons reply_num" title="回帖数"><i></i>11</span> <span
                                        class="icons read_num" title="阅读数"><i></i>70</span> <span class="topic_from">最后回复：薯片早上好　10小时前</span>
                                    　|　<a href="/mag/1439084280" target="_blank"><span class="grey">资源快到碗里来</span></a>
                                    <span class="grey">(第280期)</span></div>
                            </div>
                        </li>
                        <li class="clearfix"><a rel="nofollow" class="topic_icon" href="" target="_blank" title="狼毫">
                            <img class="topic_list_img_user" src="images/user4.jpg"> <span class="user_name">狼毫</span>
                        </a>
                            <div class="topic_content">
                                <div class="topic_title clearfix"><span class="topic_times">1天前</span> <a
                                        href="/topic/1711634971375/" class="ellipsis_text" target="_blank"
                                        title="【你画我猜】第477期 20170509要是嫌弃我的画画水平乃们就完蛋了！">【你画我猜】第477期
                                    20170509要是嫌弃我的画画水平乃们就完蛋了！</a></div>
                                <p class="topic_desc">&nbsp;&nbsp;游戏规则：&nbsp;1.答案仅楼主可见！！！否则作废！！！&nbsp;2.当日凡答对即奖励3基金~3.时间：每天1期~时间可看标题~4.未加入或修改I…</p>
                                <a href="/topic/1711634971375/" class="topic_imgs" target="_blank"> <span
                                        class="topic_img_box"><img src="images/topic1.png" class="topic_content_img"
                                                                   onerror="this.parentNode.style.display='none'"
                                                                   alt="【你画我猜】第477期 20170509要是嫌弃我的画画水平乃们就完蛋了！"></span>
                                    <span class="topic_img_box"><img src="images/topic2.png" class="topic_content_img"
                                                                     onerror="this.parentNode.style.display='none'"
                                                                     alt="【你画我猜】第477期 20170509要是嫌弃我的画画水平乃们就完蛋了！"></span>
                                </a>
                                <div class="other_info clearfix "><span class="icons praise_num"
                                                                        title="点赞数"><i></i>3</span> <span
                                        class="icons reply_num" title="回帖数"><i></i>47</span> <span
                                        class="icons read_num" title="阅读数"><i></i>140</span> <span class="topic_from">最后回复：勤劳的小狗子　10小时前</span>
                                    　|　<a href="/mag/1444341119" target="_blank"><span class="grey">你画我猜</span></a>
                                    <span class="grey">(第477期)</span></div>
                            </div>
                        </li>
                        <li class="clearfix"><a rel="nofollow" class="topic_icon" href="" target="_blank"
                                                title="ywb1218"> <img class="topic_list_img_user"
                                                                      src="images/user3.jpg"> <span class="user_name">ywb1218</span>
                        </a>
                            <div class="topic_content">
                                <div class="topic_title clearfix"><span class="topic_times">2017-03-15 10:57</span> <a
                                        href="/topic/1711389871295/" class="ellipsis_text" target="_blank"
                                        title="【资源分享】法国电影--《放牛班的春天》">【资源分享】法国电影--《放牛班的春天》</a></div>
                                <p class="topic_desc">“那漫天飘扬的纸飞机是我对你最诚挚的敬意”&nbsp;影片的导演和编剧是同一个人，但他既不是导演也不是编剧，而是一名音乐家。创作剧本的灵感，来…</p>
                                <div class="other_info clearfix "><span class="icons praise_num"
                                                                        title="点赞数"><i></i>2</span> <span
                                        class="icons reply_num" title="回帖数"><i></i>22</span> <span
                                        class="icons read_num" title="阅读数"><i></i>50</span> <span class="topic_from">最后回复：thunder8510　12小时前</span>
                                    　|　<a href="/mag/1439084280" target="_blank"><span class="grey">资源快到碗里来</span></a>
                                    <span class="grey">(第279期)</span></div>
                            </div>
                        </li>
                    </ul>
                    <div class="loading" style="display: none;"></div>
                </div>
                <div class="pagination">
                    <ul>
                        <li class="active">1</li>
                        <li><a href="/mt/p2/" rel="nofollow">2</a></li>
                        <li><a href="/mt/p3/" rel="nofollow">3</a></li>
                        <li><a href="/mt/p4/" rel="nofollow">4</a></li>
                        <li><a href="/mt/p5/" rel="nofollow">5</a></li>
                        <li><a href="/mt/p6/" rel="nofollow">6</a></li>
                        <span>... </span>
                        <li><a href="/mt/p42/" rel="nofollow">42</a></li>
                        <li class="page-l"><a href="/mt/p2/" class="prevNext" rel="nofollow">下一页</a></li>
                    </ul>
                </div>
            </div>

            <div class="m-news-left m-news2-left">

                <div class="m-btn f-cb">
                    <div style="width: 40%;float:left">
                        <a href="/mag/1426841235/" target="_blank">
                            <div class="book">
                                <img class="mag_img" src="tmp/images/depart_logo_right.jpg" width="101" height="101">
                                <div class="book_root"></div>
                            </div>
                        </a>
                    </div>
                    <div style="width: 45%;float:left;text-align: center;">
                        <div style="width: 100%;height:36px;"><a class="mag_name_title" href="/mag/1426841235/"
                                                                 target="_blank">我说英语教育</a></div>
                        <div class="mag_desc" style="width: 100%;height:36px;    line-height: 36px;"><span
                                class="orange orange_right">已认证</span></div>
                        <div class="mag_num" style="width: 100%;height:auto;"><img src="tmp/images/pay.png"
                                                                                   width="30px"/></div>
                    </div>
                </div>
                <div class="m-btn f-cb right_span blue_border">
                    课程数：15|好评度：98%|学生数：1.2万人
                </div>
                <div class="m-btn f-cb  right_span">
                    XXX语言俱乐部学习社（成员2000 | 总帖量3000）
                </div>
                <div class="m-btn f-cb right_span">
                    方向：语言学习 | 类型：公开
                </div>
                <div class="m-btn f-cb right_span blue_border">
                    社长：James
                </div>
                <div class="m-btn f-cb blue_border" style="height: 64px;line-height: 34px;">
                    管理员：小李飞刀，Victoria,Dixon,我是谁，我爱
                    他，小雨，非常完美
                </div>
                <div class="m-btn f-cb" style="margin: 10px;">
                    <a href="../04学社管理/资料管理.html" class="m-btn-new" style="margin-left: -10px;">学社管理</a>
                    <span style="font-size: 11px;
    vertical-align: bottom;
    display: flex;
    padding-top: 25px;">咨询群QQ：12345006</span>
                </div>

            </div>

            <div class="m-news-left m-news2-left main_sidebar magazine_list" style="margin-top: 10px;">
                <h3><a href="http://st.awe.com/magazine/" onclick="SendEvent(46,1172,{})" class="change_mag"
                       target="_blank">2017-5-21</a>公告栏</h3>

                <ul>
                    <li class="clearfix">
                        <div style="width: 100%;height: 90px;">
                            <img class="mag_img" src="tmp/images/msg1.jpg">


                            <span class="book">
                  明天9点积玉桥开会明天9点积玉桥开会明天9点积玉桥开会开会内容开会内容开会内容
					  </span>
                        </div>
                        <div style="width: 100%;height: 16px;">
                            <span>公告贴主题公告贴主题</span>
                            <a href=""><span class="mag_num mag_num_right"> &gt;&gt;进入</span></a>
                        </div>
                    </li>
                    <li class="clearfix">
                        <div style="width: 100%;height: 90px;">
                            <img class="mag_img" src="tmp/images/msg2.jpg">


                            <span class="book">
                  明天9点积玉桥开会明天9点积玉桥开会明天9点积玉桥开会开会内容开会内容开会内容
					  </span>
                        </div>
                        <div style="width: 100%;height: 16px;">
                            <span>公告贴主题公告贴主题</span>
                            <a href=""><span class="mag_num mag_num_right"> &gt;&gt;进入</span></a>
                        </div>
                    </li>
                </ul>
                <div style="margin: 15px 0px;    padding: 0px 10px;">
                    <a href="javascript:void(0)" class="m-btn-qd"
                       style="background: #d6d4d3;margin-left: -10px;">前一步</a>
                    <a href="javascript:void(0)" class="m-btn-qd"
                       style="float:right;background: #313342;margin-right: -10px;">后一步</a>
                </div>
            </div>

            <div class="m-news-left m-news2-left" style="width: 340px;margin-top: 10px;
    padding: 0px;
    border: 0px;">
                <div class="m-btn f-cb">
                    <a href="../02帖子发布及内容/帖子页面/发布帖子.htm" class="m-btn-new">我要发帖</a>
                    <a href="javascript:void(0)" class="m-btn-qd">本社签到</a>
                </div>
                <!--
                                <div class="g-sarch-input2">
                                    <input type="text" name="" placeholder="请搜索关键字" />
                                    <button type="submit">搜索</button>
                                </div>
                -->
                <p class="m-create">共同学习</p>
                <div class="m-head-top">
                    <div class="m-head-tabs">
                        <ul>
                            <li class="m-head-act">本社优秀成员</li>
                            <li>最近加入成员</li>
                        </ul>
                    </div>
                    <div style="width: 340px;height:360px;  background-image: url(images/bg_right_small.jpg);background-size: 100% ">
                        <ul class="m-head-list" style="background: #fff;margin-bottom: 10px;">
                            <li><a href=""><span class="m-garden">1</span>我是小明</a></li>
                            <li><a href=""><span class="m-garden">2</span>我是小明</a></li>
                            <li><a href="" class="orange"><span class="m-garden blue">3</span>我是小明</a></li>
                            <li><a href=""><span class="m-garden">4</span>我是小明</a></li>
                            <li><a href=""><span class="m-garden">5</span>我是小明</a></li>
                            <li><a href=""><span class="m-garden">6</span>初学者</a></li>
                            <li><a href=""><span class="m-garden">7</span>初学者</a></li>
                            <li><a href=""><span class="m-garden">8</span>初学者</a></li>
                            <li><a href=""><span class="m-garden">9</span>初学者</a></li>
                            <li><a href=""><span class="m-garden">10</span>初学者</a></li>
                            <!--                        <li><a href=""><span class="m-garden">11</span>初学者</a></li>-->
                            <!--                        <li><a href=""><span class="m-garden">1</span>初学者</a></li>                                             -->
                        </ul>
                    </div>
                    <p class="m-create">学有所乐</p>
                    <div class="m-head-top">
                        <div class="m-head-tabs">
                            <ul>
                                <li class="m-head-act">本社优秀课程</li>
                                <li>本社优秀帖子</li>
                            </ul>
                        </div>
                        <div style="width: 340px;height:410px;  background-image: url(images/bg_right_small.jpg);background-size: 100% ">
                            <ul class="m-head-list" style="background: #fff;margin-bottom: 10px;">
                                <li><a href=""><span class="m-garden">1</span>初级英语练习</a></li>
                                <li><a href=""><span class="m-garden">2</span>初级英语练习</a></li>
                                <li><a href="" class="orange"><span class="m-garden blue">3</span>初级英语练习</a></li>
                                <li><a href=""><span class="m-garden">4</span>初级英语练习</a></li>
                                <li><a href=""><span class="m-garden">5</span>初级英语练习</a></li>
                                <li><a href=""><span class="m-garden">6</span>初级英语练习</a></li>
                                <li><a href=""><span class="m-garden">7</span>初级英语练习</a></li>
                                <li><a href=""><span class="m-garden">8</span>初级英语练习</a></li>
                                <li><a href=""><span class="m-garden">9</span>初级英语练习</a></li>
                                <li><a href=""><span class="m-garden">10</span>初级英语练习</a></li>
                                <!--                        <li><a href=""><span class="m-garden">11</span>初级英语练习</a></li>-->
                                <!--                        <li><a href=""><span class="m-garden">1</span>初级英语练习</a></li>                                             -->
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="m-corporation">
        <p>© 2015 武汉外语培训 Corporation 【网站后台管理】 备案号</p>
    </div>
    <script src="js/index.js" type="text/javascript" charset="utf-8"></script>
</body>
</html>