<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="comheader.jsp"></jsp:include>


<div id="pageContent" style="min-width:1140px;">

    <div class="wrapper">
        <div class="container">
            <div class="container-title">
                <div class="section-title">AWE社区</div>
                <p style="border-bottom: 2px solid #28c2f5;">LANGUAGE GROUP</p>
            </div>
            <div class="main_content">
                <div class="hotmember-interview">
                    <ul class="menu">
                        <li class="all active" data-id="0">AWE官方社区</li>
                    </ul>
                    <!--
                            <h3><a class="more" href="http://st.awe.com/mag/165488081295/" target="_blank">更多</a>
                                <span>AWE官方学社</span>
                            </h3>
          -->
                    <div class="clearfix">
                        <c:forEach items="${authorityCommunities}" var="authorityCommunities">
                            <a href="${pageContext.request.contextPath }/communityUserMainpage/${authorityCommunities.ccid}"
                               class="member-item" target="_parent">
                                <div class="interview-img"><img
                                        src="${pageContext.request.contextPath }/dist/communityMainpage/files_com/2017-06-01-1496246655-322-3667.jpg"
                                        alt="AWE官方学社" title="AWE官方学社"></div>
                                <div class="interview-info">
                                    <p class="interview-title">${authorityCommunities.ccname}</p>
                                    <p class="interview-des">${authorityCommunities.ccinfo}</p>
                                    <p class="interview-des"> 学友数：999</p>
                                </div>
                            </a>
                        </c:forEach>
                    </div>


                </div>
                <div class="hotmember-interview">
                    <ul class="menu" id="tab-interview">
                        <li class="all active" data-id="0" id="list1" onclick="tab1('tab1')">语言学习</li>
                        <li class="hotLeague" data-id="1" id="list2" onclick="tab1('tab2')">科学文化</li>
                        <li class="hotLeague" data-id="2" id="list3" onclick="tab1('tab3')">生活娱乐</li>
                        <li class="hotLeague" data-id="3" id="list4" onclick="tab1('tab4')">其他社区</li>
                    </ul>
                    <script type="application/javascript">

                        function tab1(pid) {
                            var tabs = ["tab1", "tab2", "tab3", "tab4"];
                            if (tabs[0] == pid) {
                                document.getElementById("list1").className = "all active";
                                document.getElementById("list2").className = "hotLeague";
                                document.getElementById("list3").className = "hotLeague";
                                document.getElementById("list4").className = "hotLeague";
                            }
                            else if (tabs[1] == pid) {
                                document.getElementById("list2").className = "all active";
                                document.getElementById("list1").className = "hotLeague";
                                document.getElementById("list3").className = "hotLeague";
                                document.getElementById("list4").className = "hotLeague";
                            }
                            else if (tabs[2] == pid) {
                                document.getElementById("list3").className = "all active";
                                document.getElementById("list2").className = "hotLeague";
                                document.getElementById("list1").className = "hotLeague";
                                document.getElementById("list4").className = "hotLeague";
                            }
                            else if (tabs[3] == pid) {
                                document.getElementById("list4").className = "all active";
                                document.getElementById("list2").className = "hotLeague";
                                document.getElementById("list3").className = "hotLeague";
                                document.getElementById("list1").className = "hotLeague";
                            }

                        }

                    </script>
                    <div id="tabCon">
                        <div class="show_div">
                            <div class="clearfix"><a href="communityUserMainpage" class="member-item" target="_blank">
                                <div class="interview-img"><img
                                        src="${pageContext.request.contextPath }/dist/communityMainpage/files_com/2017-06-01-1496246655-322-3667.jpg"
                                        alt="AWE官方学社" title="AWE官方学社"></div>
                                <div class="interview-info">
                                    <p class="interview-title">英语学社</p>
                                    <p class="interview-des"> awe俱乐部，awe俱乐</p>
                                    <p class="interview-des"> 学友数：999</p>
                                </div>
                            </a> <a href="communityUserMainpage" class="member-item" target="_blank">
                                <div class="interview-img"><img
                                        src="${pageContext.request.contextPath }/dist/communityMainpage/files_com/c9ac691c-378b-47ed-9d1b-5581ea348ee0(1).jpg"
                                        alt="AWE官方学社" title="AWE官方学社"></div>
                                <div class="interview-info">
                                    <p class="interview-title">法语学社</p>
                                    <p class="interview-des"> awe俱乐部，awe俱乐</p>
                                    <p class="interview-des"> 学友数：999</p>
                                </div>
                            </a> <a href="communityUserMainpage" class="member-item" target="_blank">
                                <div class="interview-img"><img
                                        src="${pageContext.request.contextPath }/dist/communityMainpage/files_com/a2c79b17-0832-4ee0-affb-efcd2ba25861(1).png"
                                        alt="AWE官方学社" title="AWE官方学社"></div>
                                <div class="interview-info">
                                    <p class="interview-title">日语学社</p>
                                    <p class="interview-des"> awe俱乐部，awe俱乐</p>
                                    <p class="interview-des"> 学友数：999</p>
                                </div>
                            </a></div>
                            <div class="clearfix"><a href="communityUserMainpage" class="member-item" target="_blank">
                                <div class="interview-img"><img
                                        src="${pageContext.request.contextPath }/dist/communityMainpage/files_com/2017-06-01-1496246655-322-3667.jpg"
                                        alt="AWE官方学社" title="AWE官方学社"></div>
                                <div class="interview-info">
                                    <p class="interview-title">英语学社</p>
                                    <p class="interview-des"> awe俱乐部，awe俱乐</p>
                                    <p class="interview-des"> 学友数：999</p>
                                </div>
                            </a> <a href="communityUserMainpage" class="member-item" target="_blank">
                                <div class="interview-img"><img
                                        src="${pageContext.request.contextPath }/dist/communityMainpage/files_com/c9ac691c-378b-47ed-9d1b-5581ea348ee0(1).jpg"
                                        alt="AWE官方学社" title="AWE官方学社"></div>
                                <div class="interview-info">
                                    <p class="interview-title">法语学社</p>
                                    <p class="interview-des"> awe俱乐部，awe俱乐</p>
                                    <p class="interview-des"> 学友数：999</p>
                                </div>
                            </a> <a href="communityUserMainpage" class="member-item" target="_blank">
                                <div class="interview-img"><img
                                        src="${pageContext.request.contextPath }/dist/communityMainpage/files_com/a2c79b17-0832-4ee0-affb-efcd2ba25861(1).png"
                                        alt="AWE官方学社" title="AWE官方学社"></div>
                                <div class="interview-info">
                                    <p class="interview-title">日语学社</p>
                                    <p class="interview-des"> awe俱乐部，awe俱乐</p>
                                    <p class="interview-des"> 学友数：999</p>
                                </div>
                            </a></div>
                            <div class="clearfix"><a href="communityUserMainpage" class="member-item" target="_blank">
                                <div class="interview-img"><img
                                        src="${pageContext.request.contextPath }/dist/communityMainpage/files_com/2017-06-01-1496246655-322-3667.jpg"
                                        alt="AWE官方学社" title="AWE官方学社"></div>
                                <div class="interview-info">
                                    <p class="interview-title">英语学社</p>
                                    <p class="interview-des"> awe俱乐部，awe俱乐</p>
                                    <p class="interview-des"> 学友数：999</p>
                                </div>
                            </a> <a href="communityUserMainpage" class="member-item" target="_blank">
                                <div class="interview-img"><img
                                        src="${pageContext.request.contextPath }/dist/communityMainpage/files_com/c9ac691c-378b-47ed-9d1b-5581ea348ee0(1).jpg"
                                        alt="AWE官方学社" title="AWE官方学社"></div>
                                <div class="interview-info">
                                    <p class="interview-title">法语学社</p>
                                    <p class="interview-des"> awe俱乐部，awe俱乐</p>
                                    <p class="interview-des"> 学友数：999</p>
                                </div>
                            </a> <a href="communityUserMainpage" class="member-item" target="_blank">
                                <div class="interview-img"><img
                                        src="${pageContext.request.contextPath }/dist/communityMainpage/files_com/a2c79b17-0832-4ee0-affb-efcd2ba25861(1).png"
                                        alt="AWE官方学社" title="AWE官方学社"></div>
                                <div class="interview-info">
                                    <p class="interview-title">日语学社</p>
                                    <p class="interview-des"> awe俱乐部，awe俱乐</p>
                                    <p class="interview-des"> 学友数：999</p>
                                </div>
                            </a></div>
                        </div>
                    </div>
                </div>
                <div class="learning-ways">
                    <ul class="menu">
                        <li class="all active" data-id="0">攻关秘籍</li>
                    </ul>
                    <!--                  <h3>攻关秘籍</h3>-->
                    <div class="tab-header">
                        <ul class="clearfix">
                            <li class=""><a href="/article/category/toutiao" class="tab-header_bg1">泰文入门</a></li>
                            <li class=""><a href="/article/category/inews" class="tab-header_bg2">英语口语</a></li>
                            <li class=""><a href="/article/category/tech" class="tab-header_bg3">英语入门</a></li>
                            <li class=""><a href="/article/category/source" class="tab-header_bg4">法语入门</a></li>
                        </ul>
                        <ul class="clearfix">
                            <li class=""><a href="/article/category/toutiao" class="tab-header_bg5">英语六级</a></li>
                            <li class=""><a href="/article/category/inews" class="tab-header_bg6">行业英语</a></li>
                            <li class=""><a href="/article/category/tech" class="tab-header_bg7">英语四级</a></li>
                            <li class=""><a href="/article/category/source" class="tab-header_bg8">托福考试</a></li>
                        </ul>
                        <ul class="clearfix">
                            <li class=""><a href="/article/category/toutiao" class="tab-header_bg9">英语高阶</a></li>
                            <li class=""><a href="/article/category/inews" class="tab-header_bg10">行业英语</a></li>
                            <li class=""><a href="/article/category/tech" class="tab-header_bg11">日语入门</a></li>
                            <li class=""><a href="/article/category/source" class="tab-header_bg12">韩语入门</a></li>
                        </ul>
                    </div>
                </div>
                <div class="hot_topic">
                    <div class="nav_select_box index_nav_select_box" style="display: none;">
                        <dl class="m-select" id="myLeaguesType" style="margin-bottom:20px">
                            <dt>最新回复</dt>
                            <dd style="display: none;">
                                <input type="hidden" name="leagueType" id="leagueType" value="0">
                                <a class="selected" val="0" href="javascript:">最新回复</a><a val="1" href="javascript:">最新发布</a>
                            </dd>
                        </dl>
                    </div>
                    <ul class="menu">
                        <li id="li1" class="all active" onclick="tab('topic_list_all')">全部热门帖子</li>
                        <li id="li2" class="hotLeague" onclick="tab('topic_list_forme')">热门学社</li>
                    </ul>
                    <script type="application/javascript">
                        function tab(pid) {
                            var tabs = ["topic_list_forme", "topic_list_all", "tab3", "tab4"];
                            for (var i = 0; i < 4; i++) {
                                if (tabs[i] == pid) {
                                    document.getElementById(tabs[i]).style.display = "block";
                                    document.getElementById("li1").className = "all active";
                                    document.getElementById("li2").className = "all";

                                } else {
                                    document.getElementById(tabs[i]).style.display = "none";
                                    document.getElementById("li1").className = "all";
                                    document.getElementById("li2").className = "all active";
                                }
                            }
                        }
                    </script>
                    <div class="topic_list">
                        <div id="topic_list_all" class="hide" style="display: block;">
                            <ul>
                                <li class="clearfix"><a class="topic_icon" href="http://st.awe.com/supertxh/"
                                                        target="_blank" title="【AWE网校】超级校园"> <img class="topic_list_img"
                                                                                                  src="${pageContext.request.contextPath }/dist/communityMainpage/files_com/d6c5c1c0-7d59-4f52-b985-2af57bc825f3(1).jpg"
                                                                                                  alt="【AWE网校】超级校园"></a>
                                    <div class="topic_content">
                                        <div class="topic_title clearfix"><span class="topic_times">5小时前</span> <a
                                                href="http://st.awe.com/topic/1711891647727/" class="ellipsis_text"
                                                target="_blank" title="【头脑风暴】~让你的大脑转起来 ~第三百三十四期">【头脑风暴】~让你的大脑转起来
                                            ~第三百三十四期</a> <i class="icon_new">new</i></div>
                                        <p class="topic_desc">&nbsp;&nbsp;小伙伴们，闲暇时动动你的大脑，一起来场智力大比拼吧！&nbsp;&nbsp;文末可见基金奖励的正确获取方式&nbsp;&nbsp;小学僧的奥数题&amp;…</p>
                                        <div class="other_info clearfix"><span class="icons praise_num"
                                                                               title="点赞数"><i></i>2</span> <span
                                                class="icons reply_num" title="回帖数"><i></i>49</span> <span
                                                class="icons read_num" title="阅读数"><i></i>130</span> <a
                                                href="http://st.awe.com/supertxh/" class="league_name" target="_blank"
                                                title="【AWE网校】超级校园">【AWE网校】超级校园</a> 　|　<span class="topic_from">最后回复：sjj18　15分钟前</span>
                                            　
                                        </div>
                                    </div>
                                </li>
                                <li class="clearfix"><a class="topic_icon" href="http://st.awe.com/mskt/"
                                                        target="_blank" title="栖霞网络名师课堂"> <img class="topic_list_img"
                                                                                               src="${pageContext.request.contextPath }/dist/communityMainpage/files_com/fe19257e-d5e5-4b5a-907d-6d94a08dde56.gif"
                                                                                               alt="栖霞网络名师课堂"></a>
                                    <div class="topic_content">
                                        <div class="topic_title clearfix"><span class="topic_times">20小时前</span> <a
                                                href="http://st.awe.com/topic/1711889561580/" class="ellipsis_text"
                                                target="_blank" title="报道帖&amp;笔记达人招募令丨2018届栖霞网络名师课堂笔记达人招募">报道帖&amp;笔记达人招募令丨2018届栖霞网络名师课堂笔记达人招募</a>
                                        </div>
                                        <p class="topic_desc">首先，欢迎各位同学来到2018届栖霞网络名师课堂！&nbsp;【启动仪式&amp;第一课报道】如果你参与了今晚的启动仪式%暑期第一课，请在本帖下方留下…</p>
                                        <div class="other_info clearfix"><span class="icons praise_num"
                                                                               title="点赞数"><i></i>6</span> <span
                                                class="icons reply_num" title="回帖数"><i></i>4</span> <span
                                                class="icons read_num" title="阅读数"><i></i>180</span> <a
                                                href="http://st.awe.com/mskt/" class="league_name" target="_blank"
                                                title="栖霞网络名师课堂">栖霞网络名师课堂</a> 　|　<span class="topic_from">最后回复：qxsz801郭茹玉　8小时前</span>
                                            　|　
                                        </div>
                                    </div>
                                </li>
                                <li class="clearfix"><a class="topic_icon" href="http://st.awe.com/djdejiushidiao/"
                                                        target="_blank" title="【网校】德语同学会"> <img class="topic_list_img"
                                                                                                src="${pageContext.request.contextPath }/dist/communityMainpage/files_com/30222d56-d93c-482b-851f-df8f87ee066d.jpg"
                                                                                                alt="【网校】德语同学会"></a>
                                    <div class="topic_content">
                                        <div class="topic_title clearfix"><span class="topic_times">3小时前</span> <a
                                                href="http://st.awe.com/topic/1711892281337/" class="ellipsis_text"
                                                target="_blank"
                                                title="【组队】壮大我们贼船的队伍，7月学习号蓄势待发">【组队】壮大我们贼船的队伍，7月学习号蓄势待发</a> <i
                                                class="icon_new">new</i></div>
                                        <p class="topic_desc">
                                            白熊船长的“学习号”邮轮于7月19日再次起航，经10天乘风破浪的航行，将于7月28日抵达新大陆年轻的水手们，赶紧上船啦，来壮大我们贼船的队伍吧~&amp;…</p>
                                        <div class="other_info clearfix"><span class="icons praise_num"
                                                                               title="点赞数"><i></i>1</span> <span
                                                class="icons reply_num" title="回帖数"><i></i>23</span> <span
                                                class="icons read_num" title="阅读数"><i></i>180</span> <a
                                                href="http://st.awe.com/djdejiushidiao/" class="league_name"
                                                target="_blank" title="【网校】德语同学会">【网校】德语同学会</a> 　|　<span
                                                class="topic_from">最后回复：u150xkuXS19　15分钟前</span> 　|　
                                        </div>
                                    </div>
                                </li>
                                <li class="clearfix"><a class="topic_icon" href="http://st.awe.com/mskt/"
                                                        target="_blank" title="栖霞网络名师课堂"> <img class="topic_list_img"
                                                                                               src="${pageContext.request.contextPath }/dist/communityMainpage/files_com/fe19257e-d5e5-4b5a-907d-6d94a08dde56.gif"
                                                                                               alt="栖霞网络名师课堂"></a>
                                    <div class="topic_content">
                                        <div class="topic_title clearfix"><span class="topic_times">20小时前</span> <a
                                                href="http://st.awe.com/topic/1711889603511/" class="ellipsis_text"
                                                target="_blank" title="背词达人招募令丨2018届栖霞网络名师课堂">背词达人招募令丨2018届栖霞网络名师课堂</a>
                                        </div>
                                        <p class="topic_desc">&nbsp;【跟帖方式】电脑端，记得留下你的学校和姓名哦（可多次上传！！！）&nbsp;【跟帖方式】手机端，记得留下你的学校和姓名哦（可多次上传！！！）&nbsp;…</p>
                                        <div class="other_info clearfix"><span class="icons praise_num"
                                                                               title="点赞数"><i></i>1</span> <span
                                                class="icons reply_num" title="回帖数"><i></i>16</span> <span
                                                class="icons read_num" title="阅读数"><i></i>150</span> <a
                                                href="http://st.awe.com/mskt/" class="league_name" target="_blank"
                                                title="栖霞网络名师课堂">栖霞网络名师课堂</a> 　|　<span class="topic_from">最后回复：nsxl1507邓浩然　4小时前</span>
                                            　|　
                                        </div>
                                    </div>
                                </li>
                                <li class="clearfix"><a class="topic_icon" rel="nofollow"
                                                        href="http://st.awe.com/yingshishe/" target="_blank"
                                                        userid="34216838" title="影视社"><img class="topic_list_img"
                                                                                           src="${pageContext.request.contextPath }/dist/communityMainpage/files_com/c9ac691c-378b-47ed-9d1b-5581ea348ee0(1).jpg"><span
                                        class="user_name"></span></a>
                                    <div class="topic_content">
                                        <div class="topic_title clearfix"><span class="topic_times">7小时前</span><a
                                                href="http://st.awe.com/topic/1711891211337/" class="ellipsis_text"
                                                target="_blank" title="【你画我猜】第503期 20170718要是嫌弃我的画画水平乃们就完蛋了！">【你画我猜】第503期
                                            20170718要是嫌弃我的画画水平乃们就完蛋了！</a></div>
                                        <p class="topic_desc">&nbsp;&nbsp;游戏规则：&nbsp;1.答案仅楼主可见！！！否则作废！！！&nbsp;2.当日凡答对即奖励3基金~3.时间：每天1期~时间可看标题~4.未加入或修改I…</p>
                                        <div class="other_info clearfix"><span class="icons praise_num"
                                                                               title="点赞数"><i></i>1</span><span
                                                class="icons reply_num" title="回帖数"><i></i>36</span><span
                                                class="icons read_num" title="阅读数"><i></i>70</span><a
                                                href="http://st.awe.com/yingshishe/" class="league_name"
                                                title="影视社">影视社</a>　|　<span class="topic_from">最后回复：凤凰之浴火重生　45分钟前</span>
                                        </div>
                                    </div>
                                </li>
                                <li class="clearfix"><a class="topic_icon" rel="nofollow"
                                                        href="http://st.awe.com/cihui/" target="_blank"
                                                        userid="75532489" title="AWE词汇社"><img class="topic_list_img"
                                                                                              src="${pageContext.request.contextPath }/dist/communityMainpage/files_com/a2c79b17-0832-4ee0-affb-efcd2ba25861(1).png"><span
                                        class="user_name"></span></a>
                                    <div class="topic_content">
                                        <div class="topic_title clearfix"><span class="topic_times">2小时前</span><a
                                                href="http://st.awe.com/topic/1711892479142/" class="ellipsis_text"
                                                target="_blank" title="随机找不同">随机找不同</a></div>
                                        <p class="topic_desc">
                                            1.[CC得意][CC得意][CC得意][CC得意][CC猥琐][CC得意][CC得意][CC得意][CC得意][CC得意][CC得意][CC得意][CC得意][CC得意][CC得意][CC得意]</p>
                                        <div class="other_info clearfix"><span class="icons praise_num"
                                                                               title="点赞数"><i></i>5</span><span
                                                class="icons reply_num" title="回帖数"><i></i>25</span><span
                                                class="icons read_num" title="阅读数"><i></i>60</span><a
                                                href="http://st.awe.com/cihui/" class="league_name" title="AWE词汇社">AWE词汇社</a>　|　<span
                                                class="topic_from">最后回复：加勒比海盗之死无对证　18分钟前</span></div>
                                    </div>
                                </li>
                            </ul>
                            <div class="more"><a href="http://st.awe.com/hot/p4/" target="_blank" rel="nofollow">查看更多
                                &gt; </a></div>
                        </div>
                        <div id="topic_list_forme" class="" style="display: none;">
                            <ul>
                                <li class="clearfix">
                                    <div class="col-33 col-33_bg">
                                        <div class="st-li"><a href="/listenmore/" target="_blank">
                                            <div class="row row-1">
                                                <div class="col-4">
                                                    <div class="pic" align="center"><img class=""
                                                                                         src="${pageContext.request.contextPath }/dist/communityMainpage/files_com/2017-06-01-1496246655-322-3667.jpg"
                                                                                         alt="AWE词汇社">
                                                        <!--                                    <img src="images/my_c3.png" alt="视听森林" title="视听森林">-->
                                                    </div>
                                                </div>
                                                <div class="col-6">
                                                    <div class="title"> 视听森林</div>
                                                    <div class="info"> 社长: hahaleaf</div>
                                                    <div class="summary grey">
                                                        欢迎来到视听森林一起玩转多语种！是不是觉得帖子太多一脸懵逼？直接点击标签，学社内容全掌握
                                                    </div>
                                                </div>
                                            </div>
                                        </a>
                                            <div class="row row-2">
                                                <div class="fr"><a href="/listenmore/" rel="nofollow" target="_blank">进入学社</a>
                                                </div>
                                                <span class="fl">成员: 10821</span> <span class="unsigned-icon"
                                                                                        data-id="6221"></span></div>
                                        </div>
                                    </div>
                                    <div class="col-33 col-33_bg">
                                        <div class="st-li"><a href="/listenmore/" target="_blank">
                                            <div class="row row-1">
                                                <div class="col-4">
                                                    <div class="pic" align="center"><img class=""
                                                                                         src="${pageContext.request.contextPath }/dist/communityMainpage/files_com/c9ac691c-378b-47ed-9d1b-5581ea348ee0(1).jpg"
                                                                                         alt="AWE词汇社">
                                                        <!--                                    <img src="images/my_c3.png" alt="视听森林" title="视听森林">-->
                                                    </div>
                                                </div>
                                                <div class="col-6">
                                                    <div class="title"> 视听森林</div>
                                                    <div class="info"> 社长: hahaleaf</div>
                                                    <div class="summary grey">
                                                        欢迎来到视听森林一起玩转多语种！是不是觉得帖子太多一脸懵逼？直接点击标签，学社内容全掌握?
                                                    </div>
                                                </div>
                                            </div>
                                        </a>
                                            <div class="row row-2">
                                                <div class="fr"><a href="/listenmore/" rel="nofollow" target="_blank">进入学社</a>
                                                </div>
                                                <span class="fl">成员: 10821</span> <span class="unsigned-icon"
                                                                                        data-id="6221"></span></div>
                                        </div>
                                    </div>
                                </li>
                                <li class="clearfix">
                                    <div class="col-33 col-33_bg">
                                        <div class="st-li"><a href="/listenmore/" target="_blank">
                                            <div class="row row-1">
                                                <div class="col-4">
                                                    <div class="pic" align="center"><img class=""
                                                                                         src="${pageContext.request.contextPath }/dist/communityMainpage/files_com/2017-06-01-1496246655-322-3667.jpg"
                                                                                         alt="AWE词汇社">
                                                        <!--                                    <img src="images/my_c3.png" alt="视听森林" title="视听森林">-->
                                                    </div>
                                                </div>
                                                <div class="col-6">
                                                    <div class="title"> 视听森林</div>
                                                    <div class="info"> 社长: hahaleaf</div>
                                                    <div class="summary grey">
                                                        欢迎来到视听森林一起玩转多语种！是不是觉得帖子太多一脸懵逼？直接点击标签，学社内容全掌握
                                                    </div>
                                                </div>
                                            </div>
                                        </a>
                                            <div class="row row-2">
                                                <div class="fr"><a href="/listenmore/" rel="nofollow" target="_blank">进入学社</a>
                                                </div>
                                                <span class="fl">成员: 10821</span> <span class="unsigned-icon"
                                                                                        data-id="6221"></span></div>
                                        </div>
                                    </div>
                                    <div class="col-33 col-33_bg">
                                        <div class="st-li"><a href="/listenmore/" target="_blank">
                                            <div class="row row-1">
                                                <div class="col-4">
                                                    <div class="pic" align="center"><img class=""
                                                                                         src="${pageContext.request.contextPath }/dist/communityMainpage/files_com/c9ac691c-378b-47ed-9d1b-5581ea348ee0(1).jpg"
                                                                                         alt="AWE词汇社">
                                                        <!--                                    <img src="images/my_c3.png" alt="视听森林" title="视听森林">-->
                                                    </div>
                                                </div>
                                                <div class="col-6">
                                                    <div class="title"> 视听森林</div>
                                                    <div class="info"> 社长: hahaleaf</div>
                                                    <div class="summary grey">
                                                        欢迎来到视听森林一起玩转多语种！是不是觉得帖子太多一脸懵逼？直接点击标签，学社内容全掌握?
                                                    </div>
                                                </div>
                                            </div>
                                        </a>
                                            <div class="row row-2">
                                                <div class="fr"><a href="/listenmore/" rel="nofollow" target="_blank">进入学社</a>
                                                </div>
                                                <span class="fl">成员: 10821</span> <span class="unsigned-icon"
                                                                                        data-id="6221"></span></div>
                                        </div>
                                    </div>
                                </li>
                                <li class="clearfix">
                                    <div class="col-33 col-33_bg">
                                        <div class="st-li"><a href="/listenmore/" target="_blank">
                                            <div class="row row-1">
                                                <div class="col-4">
                                                    <div class="pic" align="center"><img class=""
                                                                                         src="${pageContext.request.contextPath }/dist/communityMainpage/files_com/2017-06-01-1496246655-322-3667.jpg"
                                                                                         alt="AWE词汇社">
                                                        <!--                                    <img src="images/my_c3.png" alt="视听森林" title="视听森林">-->
                                                    </div>
                                                </div>
                                                <div class="col-6">
                                                    <div class="title"> 视听森林</div>
                                                    <div class="info"> 社长: hahaleaf</div>
                                                    <div class="summary grey">
                                                        欢迎来到视听森林一起玩转多语种！是不是觉得帖子太多一脸懵逼？直接点击标签，学社内容全掌握
                                                    </div>
                                                </div>
                                            </div>
                                        </a>
                                            <div class="row row-2">
                                                <div class="fr"><a href="/listenmore/" rel="nofollow" target="_blank">进入学社</a>
                                                </div>
                                                <span class="fl">成员: 10821</span> <span class="unsigned-icon"
                                                                                        data-id="6221"></span></div>
                                        </div>
                                    </div>
                                    <div class="col-33 col-33_bg">
                                        <div class="st-li"><a href="/listenmore/" target="_blank">
                                            <div class="row row-1">
                                                <div class="col-4">
                                                    <div class="pic" align="center"><img class=""
                                                                                         src="${pageContext.request.contextPath }/dist/communityMainpage/files_com/c9ac691c-378b-47ed-9d1b-5581ea348ee0(1).jpg"
                                                                                         alt="AWE词汇社">
                                                        <!--                                    <img src="images/my_c3.png" alt="视听森林" title="视听森林">-->
                                                    </div>
                                                </div>
                                                <div class="col-6">
                                                    <div class="title"> 视听森林</div>
                                                    <div class="info"> 社长: hahaleaf</div>
                                                    <div class="summary grey">
                                                        欢迎来到视听森林一起玩转多语种！是不是觉得帖子太多一脸懵逼？直接点击标签，学社内容全掌握?
                                                    </div>
                                                </div>
                                            </div>
                                        </a>
                                            <div class="row row-2">
                                                <div class="fr"><a href="/listenmore/" rel="nofollow" target="_blank">进入学社</a>
                                                </div>
                                                <span class="fl">成员: 10821</span> <span class="unsigned-icon"
                                                                                        data-id="6221"></span></div>
                                        </div>
                                    </div>
                                </li>
                                <li class="clearfix">
                                    <div class="col-33 col-33_bg">
                                        <div class="st-li"><a href="/listenmore/" target="_blank">
                                            <div class="row row-1">
                                                <div class="col-4">
                                                    <div class="pic" align="center"><img class=""
                                                                                         src="${pageContext.request.contextPath }/dist/communityMainpage/files_com/2017-06-01-1496246655-322-3667.jpg"
                                                                                         alt="AWE词汇社">
                                                        <!--                                    <img src="images/my_c3.png" alt="视听森林" title="视听森林">-->
                                                    </div>
                                                </div>
                                                <div class="col-6">
                                                    <div class="title"> 视听森林</div>
                                                    <div class="info"> 社长: hahaleaf</div>
                                                    <div class="summary grey">
                                                        欢迎来到视听森林一起玩转多语种！是不是觉得帖子太多一脸懵逼？直接点击标签，学社内容全掌握
                                                    </div>
                                                </div>
                                            </div>
                                        </a>
                                            <div class="row row-2">
                                                <div class="fr"><a href="/listenmore/" rel="nofollow" target="_blank">进入学社</a>
                                                </div>
                                                <span class="fl">成员: 10821</span> <span class="unsigned-icon"
                                                                                        data-id="6221"></span></div>
                                        </div>
                                    </div>
                                    <div class="col-33 col-33_bg">
                                        <div class="st-li"><a href="/listenmore/" target="_blank">
                                            <div class="row row-1">
                                                <div class="col-4">
                                                    <div class="pic" align="center"><img class=""
                                                                                         src="${pageContext.request.contextPath }/dist/communityMainpage/files_com/c9ac691c-378b-47ed-9d1b-5581ea348ee0(1).jpg"
                                                                                         alt="AWE词汇社">
                                                        <!--                                    <img src="images/my_c3.png" alt="视听森林" title="视听森林">-->
                                                    </div>
                                                </div>
                                                <div class="col-6">
                                                    <div class="title"> 视听森林</div>
                                                    <div class="info"> 社长: hahaleaf</div>
                                                    <div class="summary grey">
                                                        欢迎来到视听森林一起玩转多语种！是不是觉得帖子太多一脸懵逼？直接点击标签，学社内容全掌握?
                                                    </div>
                                                </div>
                                            </div>
                                        </a>
                                            <div class="row row-2">
                                                <div class="fr"><a href="/listenmore/" rel="nofollow" target="_blank">进入学社</a>
                                                </div>
                                                <span class="fl">成员: 10821</span> <span class="unsigned-icon"
                                                                                        data-id="6221"></span></div>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                            <div class="more"><a href="http://st.awe.com/mt/p4/" target="_blank" rel="nofollow">查看更多
                                &gt; </a></div>
                        </div>
                        <div id="topic_list_submag" class="hide" style="display: none;">
                            <ul>
                                <li>暂无数据</li>
                            </ul>
                        </div>
                        <div id="topic_list_league" class="hide" style="display: none;">
                            <ul class="topic_list_league clearfix">
                                <li><a href="http://st.awe.com/cihui/" target="_blank"> <img
                                        src="${pageContext.request.contextPath }/dist/communityMainpage/files_com/a2c79b17-0832-4ee0-affb-efcd2ba25861(2).png"
                                        alt="AWE词汇社"
                                        title="AWE词汇社"> </a> <span class="title"><a href="http://st.awe.com/cihui/"
                                                                                    target="_blank" title="AWE词汇社">AWE词汇社</a></span>
                                    <span class="grey">成员: 1655124</span></li>
                                <li><a href="http://st.awe.com/1474731309/" target="_blank"> <img
                                        src="${pageContext.request.contextPath }/dist/communityMainpage/files_com/54ef4a47-8d45-4b4f-ad14-4ca1a1587ef6(1).jpg"
                                        alt="【AWE网校】新手后援会"
                                        title="【AWE网校】新手后援会"> </a> <span class="title"><a
                                        href="http://st.awe.com/1474731309/" target="_blank" title="【AWE网校】新手后援会">【AWE网校】新手后援会</a></span>
                                    <span class="grey">成员: 899888</span></li>
                                <li><a href="http://st.awe.com/1444476955/" target="_blank"> <img
                                        src="${pageContext.request.contextPath }/dist/communityMainpage/files_com/e7f77576-0c94-4037-a936-808bd7929b7d.jpg"
                                        alt="AWE考试院"
                                        title="AWE考试院"> </a> <span class="title"><a href="http://st.awe.com/1444476955/"
                                                                                    target="_blank" title="AWE考试院">AWE考试院</a></span>
                                    <span class="grey">成员: 186902</span></li>
                                <li><a href="http://st.awe.com/abcenglish/" target="_blank"> <img
                                        src="${pageContext.request.contextPath }/dist/communityMainpage/files_com/27368150-c991-4b8b-81ec-e10b04f3ee7f(1).jpg"
                                        alt="零基础英语从头学"
                                        title="零基础英语从头学"> </a> <span class="title"><a
                                        href="http://st.awe.com/abcenglish/" target="_blank"
                                        title="零基础英语从头学">零基础英语从头学</a></span> <span class="grey">成员: 129154</span></li>
                                <li><a href="http://st.awe.com/yykb/" target="_blank"> <img
                                        src="${pageContext.request.contextPath }/dist/communityMainpage/files_com/ec6ed3ec-085a-41fd-94c9-d3171ed76bb9.gif"
                                        alt="英语酷吧"
                                        title="英语酷吧"> </a> <span class="title"><a href="http://st.awe.com/yykb/"
                                                                                  target="_blank" title="英语酷吧">英语酷吧</a></span>
                                    <span class="grey">成员: 117258</span></li>
                                <li><a href="http://st.awe.com/riyuclass/" target="_blank"> <img
                                        src="${pageContext.request.contextPath }/dist/communityMainpage/files_com/14cf3302-c5cf-41f9-9d5d-5281df180a37(2).jpg"
                                        alt="【网校】JLPT能力考同学会" title="【网校】JLPT能力考同学会"> </a> <span class="title"><a
                                        href="http://st.awe.com/riyuclass/" target="_blank" title="【网校】JLPT能力考同学会">【网校】JLPT能力考同学会</a></span>
                                    <span class="grey">成员: 99299</span></li>
                                <li><a href="http://st.awe.com/nceparty/" target="_blank"> <img
                                        src="${pageContext.request.contextPath }/dist/communityMainpage/files_com/dcd27bcb-0b0c-4bef-b2f6-ed7da9afeb30(1).jpg"
                                        alt="【网校】新概念同学会"
                                        title="【网校】新概念同学会"> </a> <span class="title"><a
                                        href="http://st.awe.com/nceparty/" target="_blank"
                                        title="【网校】新概念同学会">【网校】新概念同学会</a></span> <span class="grey">成员: 96126</span>
                                </li>
                                <li><a href="http://st.awe.com/xueriyu/" target="_blank"> <img
                                        src="${pageContext.request.contextPath }/dist/communityMainpage/files_com/88632471-6445-4471-8ac0-26526ba632e7.jpg"
                                        alt="从零开始学日语"
                                        title="从零开始学日语"> </a> <span class="title"><a href="http://st.awe.com/xueriyu/"
                                                                                     target="_blank" title="从零开始学日语">从零开始学日语</a></span>
                                    <span class="grey">成员: 90459</span></li>
                                <li><a href="http://st.awe.com/hanyu/" target="_blank"> <img
                                        src="${pageContext.request.contextPath }/dist/communityMainpage/files_com/e008fc1d-4edb-4cd2-b874-5e6b5b5aa04f(1).png"
                                        alt="【网校】韩语同学会"
                                        title="【网校】韩语同学会"> </a> <span class="title"><a href="http://st.awe.com/hanyu/"
                                                                                       target="_blank"
                                                                                       title="【网校】韩语同学会">【网校】韩语同学会</a></span>
                                    <span class="grey">成员: 76972</span></li>
                                <li><a href="http://st.awe.com/supertxh/" target="_blank"> <img
                                        src="${pageContext.request.contextPath }/dist/communityMainpage/files_com/d6c5c1c0-7d59-4f52-b985-2af57bc825f3(2).jpg"
                                        alt="【AWE网校】超级校园"
                                        title="【AWE网校】超级校园"> </a> <span class="title"><a
                                        href="http://st.awe.com/supertxh/" target="_blank" title="【AWE网校】超级校园">【AWE网校】超级校园</a></span>
                                    <span class="grey">成员: 76921</span></li>
                                <li><a href="http://st.awe.com/riyuxinshou/" target="_blank"> <img
                                        src="${pageContext.request.contextPath }/dist/communityMainpage/files_com/ceabe982-92a8-4c25-a109-ce0dd0c8d83a(1).jpg"
                                        alt=" 【网校】日语小白启航社"
                                        title=" 【网校】日语小白启航社"> </a> <span class="title"><a
                                        href="http://st.awe.com/riyuxinshou/" target="_blank" title=" 【网校】日语小白启航社"> 【网校】日语小白启航社</a></span>
                                    <span class="grey">成员: 70947</span></li>
                                <li><a href="http://st.awe.com/1430731584/" target="_blank"> <img
                                        src="${pageContext.request.contextPath }/dist/communityMainpage/files_com/529dc0d5-3fc2-4bae-a5ad-698aefd04980.jpg"
                                        alt="【AWE网校】学神基地"
                                        title="【AWE网校】学神基地"> </a> <span class="title"><a
                                        href="http://st.awe.com/1430731584/" target="_blank" title="【AWE网校】学神基地">【AWE网校】学神基地</a></span>
                                    <span class="grey">成员: 69179</span></li>
                                <li><a href="http://st.awe.com/zzd/" target="_blank"> <img
                                        src="${pageContext.request.contextPath }/dist/communityMainpage/files_com/9c477d30-4dba-424d-8227-7b315e9de098(2).jpg"
                                        alt="初声日语早早读"
                                        title="初声日语早早读"> </a> <span class="title"><a href="http://st.awe.com/zzd/"
                                                                                     target="_blank" title="初声日语早早读">初声日语早早读</a></span>
                                    <span class="grey">成员: 63632</span></li>
                                <li><a href="http://st.awe.com/rykb/" target="_blank"> <img
                                        src="${pageContext.request.contextPath }/dist/communityMainpage/files_com/d5218aae-4a38-4252-913d-87382358731d.png"
                                        alt="日语酷吧"
                                        title="日语酷吧"> </a> <span class="title"><a href="http://st.awe.com/rykb/"
                                                                                  target="_blank" title="日语酷吧">日语酷吧</a></span>
                                    <span class="grey">成员: 58415</span></li>
                                <li><a href="http://st.awe.com/cet/" target="_blank"> <img
                                        src="${pageContext.request.contextPath }/dist/communityMainpage/files_com/a0c8eb19-8dfe-4cb8-8666-a4be362b2d17.jpg"
                                        alt="四六级火线联盟"
                                        title="四六级火线联盟"> </a> <span class="title"><a href="http://st.awe.com/cet/"
                                                                                     target="_blank" title="四六级火线联盟">四六级火线联盟</a></span>
                                    <span class="grey">成员: 55978</span></li>
                                <li><a href="http://st.awe.com/0jckorean/" target="_blank"> <img
                                        src="${pageContext.request.contextPath }/dist/communityMainpage/files_com/c51c9ff3-324f-4438-9a90-81d60128e84d.jpg"
                                        alt="零基础学韩语"
                                        title="零基础学韩语"> </a> <span class="title"><a href="http://st.awe.com/0jckorean/"
                                                                                    target="_blank" title="零基础学韩语">零基础学韩语</a></span>
                                    <span class="grey">成员: 52598</span></li>
                                <li><a href="http://st.awe.com/hanyushe/" target="_blank"> <img
                                        src="${pageContext.request.contextPath }/dist/communityMainpage/files_com/5d597853-6fdc-4276-8af5-c9735d32fde0(1).jpg"
                                        alt="韩语社"
                                        title="韩语社"> </a> <span class="title"><a href="http://st.awe.com/hanyushe/"
                                                                                 target="_blank"
                                                                                 title="韩语社">韩语社</a></span> <span
                                        class="grey">成员: 43670</span></li>
                                <li><a href="http://st.awe.com/cctalk/" target="_blank"> <img
                                        src="${pageContext.request.contextPath }/dist/communityMainpage/files_com/d12567ce-4f8a-4dec-8b47-6d43e4497fc1.png"
                                        alt="CCtalk 官方学社"
                                        title="CCtalk 官方学社"> </a> <span class="title"><a
                                        href="http://st.awe.com/cctalk/" target="_blank"
                                        title="CCtalk 官方学社">CCtalk 官方学社</a></span> <span class="grey">成员: 32761</span>
                                </li>
                                <li><a href="http://st.awe.com/1436821891/" target="_blank"> <img
                                        src="${pageContext.request.contextPath }/dist/communityMainpage/files_com/44d13b6a-3538-40d8-b20b-4cd377354ce6.jpg"
                                        alt="AWE日语入门"
                                        title="AWE日语入门"> </a> <span class="title"><a
                                        href="http://st.awe.com/1436821891/" target="_blank" title="AWE日语入门">AWE日语入门</a></span>
                                    <span class="grey">成员: 31652</span></li>
                                <li><a href="http://st.awe.com/hftd/" target="_blank"> <img
                                        src="${pageContext.request.contextPath }/dist/communityMainpage/files_com/97c28c0d-c5d3-4ad6-84dd-d421bedafe90.png"
                                        alt="沪粉天地"
                                        title="沪粉天地"> </a> <span class="title"><a href="http://st.awe.com/hftd/"
                                                                                  target="_blank" title="沪粉天地">沪粉天地</a></span>
                                    <span class="grey">成员: 31210</span></li>
                                <li><a href="http://st.awe.com/takara/" target="_blank"> <img
                                        src="${pageContext.request.contextPath }/dist/communityMainpage/files_com/159c1c33-1b55-4ea4-8d5a-5ca1f66749fb(1).jpg"
                                        alt="日语免费资源寻宝队"
                                        title="日语免费资源寻宝队"> </a> <span class="title"><a href="http://st.awe.com/takara/"
                                                                                       target="_blank"
                                                                                       title="日语免费资源寻宝队">日语免费资源寻宝队</a></span>
                                    <span class="grey">成员: 30000</span></li>
                                <li><a href="http://st.awe.com/liuxueclub/" target="_blank"> <img
                                        src="${pageContext.request.contextPath }/dist/communityMainpage/files_com/a03561a2-3ba3-472e-b37d-8a9e6de6ae6a.gif"
                                        alt="AWE留学CLUB"
                                        title="AWE留学CLUB"> </a> <span class="title"><a
                                        href="http://st.awe.com/liuxueclub/" target="_blank"
                                        title="AWE留学CLUB">AWE留学CLUB</a></span> <span class="grey">成员: 29907</span></li>
                                <li><a href="http://st.awe.com/fayu/" target="_blank"> <img
                                        src="${pageContext.request.contextPath }/dist/communityMainpage/files_com/7181b128-4e46-48de-a43e-16231aae51af.jpg"
                                        alt="AWE法语社"
                                        title="AWE法语社"> </a> <span class="title"><a href="http://st.awe.com/fayu/"
                                                                                    target="_blank" title="AWE法语社">AWE法语社</a></span>
                                    <span class="grey">成员: 26509</span></li>
                                <li><a href="http://st.awe.com/jlpt/" target="_blank"> <img
                                        src="${pageContext.request.contextPath }/dist/communityMainpage/files_com/ceaf273e-1f8b-4749-959d-08e40c83a1a2.jpg"
                                        alt="JLPT备考集训营"
                                        title="JLPT备考集训营"> </a> <span class="title"><a href="http://st.awe.com/jlpt/"
                                                                                       target="_blank"
                                                                                       title="JLPT备考集训营">JLPT备考集训营</a></span>
                                    <span class="grey">成员: 24904</span></li>
                                <li><a href="http://st.awe.com/hjfy/" target="_blank"> <img
                                        src="${pageContext.request.contextPath }/dist/communityMainpage/files_com/b24354be-ec74-410b-8152-0834f122d2ed.png"
                                        alt="【网校】法语同学会"
                                        title="【网校】法语同学会"> </a> <span class="title"><a href="http://st.awe.com/hjfy/"
                                                                                       target="_blank"
                                                                                       title="【网校】法语同学会">【网校】法语同学会</a></span>
                                    <span class="grey">成员: 24700</span></li>
                                <li><a href="http://st.awe.com/xiaoxueyingyu/" target="_blank"> <img
                                        src="${pageContext.request.contextPath }/dist/communityMainpage/files_com/3746fece-228c-4367-a7fd-c2a61933ce56.jpg"
                                        alt="小学生英语基地"
                                        title="小学生英语基地"> </a> <span class="title"><a
                                        href="http://st.awe.com/xiaoxueyingyu/" target="_blank"
                                        title="小学生英语基地">小学生英语基地</a></span> <span class="grey">成员: 24347</span></li>
                                <li><a href="http://st.awe.com/zhichang/" target="_blank"> <img
                                        src="${pageContext.request.contextPath }/dist/communityMainpage/files_com/82f2069d-4fde-40f5-846e-714ab1aad0f8.png"
                                        alt="【网校】职场兴趣同学会"
                                        title="【网校】职场兴趣同学会"> </a> <span class="title"><a
                                        href="http://st.awe.com/zhichang/" target="_blank" title="【网校】职场兴趣同学会">【网校】职场兴趣同学会</a></span>
                                    <span class="grey">成员: 23883</span></li>
                                <li><a href="http://st.awe.com/hjbiz/" target="_blank"> <img
                                        src="${pageContext.request.contextPath }/dist/communityMainpage/files_com/d04484f2-a0da-4a96-b70e-388bc73611b5.png"
                                        alt="【网校】商务英语同学会"
                                        title="【网校】商务英语同学会"> </a> <span class="title"><a href="http://st.awe.com/hjbiz/"
                                                                                         target="_blank"
                                                                                         title="【网校】商务英语同学会">【网校】商务英语同学会</a></span>
                                    <span class="grey">成员: 23648</span></li>
                                <li><a href="http://st.awe.com/kaoshiguola/" target="_blank"> <img
                                        src="${pageContext.request.contextPath }/dist/communityMainpage/files_com/3952192e-5916-4c9f-bbd5-8d83709d1a11.png"
                                        alt="【网校】国内英语考试同学会"
                                        title="【网校】国内英语考试同学会"> </a> <span class="title"><a
                                        href="http://st.awe.com/kaoshiguola/" target="_blank" title="【网校】国内英语考试同学会">【网校】国内英语考试同学会</a></span>
                                    <span class="grey">成员: 22820</span></li>
                                <li><a href="http://st.awe.com/lcjhs/" target="_blank"> <img
                                        src="${pageContext.request.contextPath }/dist/communityMainpage/files_com/7b4318e9-9169-430e-89f8-7de5c6a4804e(1).jpg"
                                        alt="懒虫进化社"
                                        title="懒虫进化社"> </a> <span class="title"><a href="http://st.awe.com/lcjhs/"
                                                                                   target="_blank"
                                                                                   title="懒虫进化社">懒虫进化社</a></span> <span
                                        class="grey">成员: 22768</span></li>
                                <li><a href="http://st.awe.com/hjkr/" target="_blank"> <img
                                        src="${pageContext.request.contextPath }/dist/communityMainpage/files_com/5fde4763-501d-42e0-930c-a0bc434b7b51.jpg"
                                        alt="AWE韩语"
                                        title="AWE韩语"> </a> <span class="title"><a href="http://st.awe.com/hjkr/"
                                                                                   target="_blank"
                                                                                   title="AWE韩语">AWE韩语</a></span> <span
                                        class="grey">成员: 21513</span></li>
                                <li><a href="http://st.awe.com/1481451224/" target="_blank"> <img
                                        src="${pageContext.request.contextPath }/dist/communityMainpage/files_com/49f34974-870a-44fe-9599-acf476aba933(1).jpg"
                                        alt="开心词场大作战"
                                        title="开心词场大作战"> </a> <span class="title"><a
                                        href="http://st.awe.com/1481451224/" target="_blank" title="开心词场大作战">开心词场大作战</a></span>
                                    <span class="grey">成员: 20967</span></li>
                                <li><a href="http://st.awe.com/dushuhui/" target="_blank"> <img
                                        src="${pageContext.request.contextPath }/dist/communityMainpage/files_com/0f1561c6-4b2f-4ddd-8fa5-021af9769f31(1).jpg"
                                        alt="读书会"
                                        title="读书会"> </a> <span class="title"><a href="http://st.awe.com/dushuhui/"
                                                                                 target="_blank"
                                                                                 title="读书会">读书会</a></span> <span
                                        class="grey">成员: 19879</span></li>
                                <li><a href="http://st.awe.com/youxiao/" target="_blank"> <img
                                        src="${pageContext.request.contextPath }/dist/communityMainpage/files_com/cd8adf75-a0a2-4563-b426-b2c69c81cc93.jpg"
                                        alt="【网校】幼小学习帮"
                                        title="【网校】幼小学习帮"> </a> <span class="title"><a href="http://st.awe.com/youxiao/"
                                                                                       target="_blank"
                                                                                       title="【网校】幼小学习帮">【网校】幼小学习帮</a></span>
                                    <span class="grey">成员: 19353</span></li>
                                <li><a href="http://st.awe.com/yingshishe/" target="_blank"> <img
                                        src="${pageContext.request.contextPath }/dist/communityMainpage/files_com/c9ac691c-378b-47ed-9d1b-5581ea348ee0(2).jpg"
                                        alt="影视社"
                                        title="影视社"> </a> <span class="title"><a href="http://st.awe.com/yingshishe/"
                                                                                 target="_blank"
                                                                                 title="影视社">影视社</a></span> <span
                                        class="grey">成员: 19101</span></li>
                                <li><a href="http://st.awe.com/deyu/" target="_blank"> <img
                                        src="${pageContext.request.contextPath }/dist/communityMainpage/files_com/af693395-721c-43ed-9441-43befe65e029.jpg"
                                        alt="AWE德语社"
                                        title="AWE德语社"> </a> <span class="title"><a href="http://st.awe.com/deyu/"
                                                                                    target="_blank" title="AWE德语社">AWE德语社</a></span>
                                    <span class="grey">成员: 18926</span></li>
                                <li><a href="http://st.awe.com/rykszl/" target="_blank"> <img
                                        src="${pageContext.request.contextPath }/dist/communityMainpage/files_com/589e913a-06c9-4270-b5db-71e6f8c75cf7.png"
                                        alt="日语考试资料"
                                        title="日语考试资料"> </a> <span class="title"><a href="http://st.awe.com/rykszl/"
                                                                                    target="_blank" title="日语考试资料">日语考试资料</a></span>
                                    <span class="grey">成员: 17603</span></li>
                                <li><a href="http://st.awe.com/ifans/" target="_blank"> <img
                                        src="${pageContext.request.contextPath }/dist/communityMainpage/files_com/7bb401b0-822c-400d-ab43-06aa01c1d762.jpg"
                                        alt="爱翻不凡翻译社"
                                        title="爱翻不凡翻译社"> </a> <span class="title"><a href="http://st.awe.com/ifans/"
                                                                                     target="_blank" title="爱翻不凡翻译社">爱翻不凡翻译社</a></span>
                                    <span class="grey">成员: 16797</span></li>
                                <li><a href="http://st.awe.com/djdejiushidiao/" target="_blank"> <img
                                        src="${pageContext.request.contextPath }/dist/communityMainpage/files_com/30222d56-d93c-482b-851f-df8f87ee066d(1).jpg"
                                        alt="【网校】德语同学会"
                                        title="【网校】德语同学会"> </a> <span class="title"><a
                                        href="http://st.awe.com/djdejiushidiao/" target="_blank" title="【网校】德语同学会">【网校】德语同学会</a></span>
                                    <span class="grey">成员: 16468</span></li>
                                <li><a href="http://st.awe.com/hjapp/" target="_blank"> <img
                                        src="${pageContext.request.contextPath }/dist/communityMainpage/files_com/dcfc6edb-6ebb-4467-9b9d-72cafa394e4e.png"
                                        alt="AWE学习社"
                                        title="AWE学习社"> </a> <span class="title"><a href="http://st.awe.com/hjapp/"
                                                                                    target="_blank" title="AWE学习社">AWE学习社</a></span>
                                    <span class="grey">成员: 15412</span></li>
                                <li><a href="http://st.awe.com/xyjy/" target="_blank"> <img
                                        src="${pageContext.request.contextPath }/dist/communityMainpage/files_com/2dcb7ad7-05eb-464c-b3c7-5a26a03d6db2.jpg"
                                        alt="翔宇教育集团"
                                        title="翔宇教育集团"> </a> <span class="title"><a href="http://st.awe.com/xyjy/"
                                                                                    target="_blank" title="翔宇教育集团">翔宇教育集团</a></span>
                                    <span class="grey">成员: 15172</span></li>
                                <li><a href="http://st.awe.com/yytlxz/" target="_blank"> <img
                                        src="${pageContext.request.contextPath }/dist/communityMainpage/files_com/f6f450b5-db6d-43d6-a33d-33d1d835b4a6.jpg"
                                        alt="英语听力下载"
                                        title="英语听力下载"> </a> <span class="title"><a href="http://st.awe.com/yytlxz/"
                                                                                    target="_blank" title="英语听力下载">英语听力下载</a></span>
                                    <span class="grey">成员: 13909</span></li>
                                <li><a href="http://st.awe.com/drm/" target="_blank"> <img
                                        src="${pageContext.request.contextPath }/dist/communityMainpage/files_com/073d194b-843f-472e-aad0-1ff0d066568d.png"
                                        alt="德瑞姆心理社"
                                        title="德瑞姆心理社"> </a> <span class="title"><a href="http://st.awe.com/drm/"
                                                                                    target="_blank" title="德瑞姆心理社">德瑞姆心理社</a></span>
                                    <span class="grey">成员: 13637</span></li>
                                <li><a href="http://st.awe.com/bec/" target="_blank"> <img
                                        src="${pageContext.request.contextPath }/dist/communityMainpage/files_com/e2ec8deb-5504-4588-a21a-e84066b50b9e.gif"
                                        alt="BEC托业考神团"
                                        title="BEC托业考神团"> </a> <span class="title"><a href="http://st.awe.com/bec/"
                                                                                      target="_blank" title="BEC托业考神团">BEC托业考神团</a></span>
                                    <span class="grey">成员: 13532</span></li>
                                <li><a href="http://st.awe.com/1429684280/" target="_blank"> <img
                                        src="${pageContext.request.contextPath }/dist/communityMainpage/files_com/a9aa590c-5b7e-4b75-9246-0f020aea2425.png"
                                        alt="英语口语下载"
                                        title="英语口语下载"> </a> <span class="title"><a href="http://st.awe.com/1429684280/"
                                                                                    target="_blank" title="英语口语下载">英语口语下载</a></span>
                                    <span class="grey">成员: 13459</span></li>
                            </ul>
                            <div class="more" style="display:block"><a href="http://st.awe.com/explore/0/order3/p3/"
                                                                       target="_blank">查看更多 &gt; </a></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="main_sidebar"
                 style="width: 360px;background: url(${pageContext.request.contextPath }/dist/communityMainpage/tmp/images/Layer7.png) center top;background-repeat: no-repeat;background-size: contain;">
                <!-- 触屏端打卡赚沪元(新)提示 start
                    <a href="http://st.awe.com/topic/163421021021/" target="_blank" class="league-mobile-checkin">
                        <img src="/images/league-mobile-checkin.jpg" alt="触屏端打卡赚沪元(新)">
                    </a>触屏端打卡赚沪元(新)提示 start-->
                <div class="user_info" style="background:#f5f5f5;border: 10px solid #fff;     width: 270px;
    margin: 0px auto;
    padding: 10px;">
                    <div class="logon clearfix">
                        <div class="sign_info">
                            <div class="m-btn f-cb">
                                <div style="width: 40%;float:left">
                                    <a href="/mag/1426841235/" target="_blank">
                                        <div class="book">
                                            <img class="mag_img"
                                                 src="${pageContext.request.contextPath }/dist/communityMainpage/tmp/images/depart_logo_right.jpg"
                                                 width="101"
                                                 height="101">
                                            <div class="book_root"></div>
                                        </div>
                                    </a>
                                </div>
                                <div style="width: 55%;float:left;text-align: center;">
                                    <div style="width: 100%;height:36px;"><a class="mag_name_title"
                                                                             href="/mag/1426841235/" target="_blank">我说英语教育</a>
                                    </div>
                                    <div class="mag_desc" style="width: 100%;height:36px;    line-height: 36px;"><span
                                            class="orange_right">已认证</span></div>
                                    <div class="mag_num" style="width: 100%;height:auto;"><img
                                            src="${pageContext.request.contextPath }/dist/communityMainpage/tmp/images/pay.png"
                                            width="30px"></div>
                                </div>
                            </div>


                        </div>

                    </div>
                    <div class="blue_border">课程数：15|好评度：98%|学生数：1.2万人</div>
                    <div class="create_new_league"><a href="communitySetup"
                                                      class="btn btn-green">创建学社</a><span
                            class="create_desc">想拥有自己的学社？</span></div>
                    <script>
                        $(function () {

                            $('.league_guide .close').click(function () {
                                $('.league_guide').hide();
                                League.fun.setCookie('league_guide', 1, 9999 * 24 * 60 * 60);
                            })
                        })
                    </script>
                </div>
                <div class="fixedTop"
                     style="position: static; padding-top: 0px; top: 0px; left: auto; width: 290px;    margin: 0px auto; z-index: 0;">
                    <div class="magazine_list" style="padding-bottom: 50px;">
                        <h3><a href="http://st.awe.com/magazine/" onClick="SendEvent(46,1172,{})" class="change_mag"
                               target="_blank">更多</a>官方公告</h3>
                        <ul>
                            <li class="clearfix"><a href="http://st.awe.com/mag/133862085/"
                                                    onClick="SendEvent(46,1171,{position:1})" target="_blank">
                                <div class="book"><img class="mag_img"
                                                       src="${pageContext.request.contextPath }/dist/communityMainpage/tmp/images/msg1.jpg">
                                    <div class="book_root"></div>
                                </div>
                            </a> <a href="http://st.awe.com/mag/133862085/" class="mag_name ellipsis_text"
                                    target="_blank" title="【行走中国纪】国内旅行攻略分享">【行走中国纪】国内旅行攻略分享</a> <span class="mag_desc">想不出十一去哪里玩？来看看包客驴友们原创… </span>
                                <span class="mag_num">公告主题</span> <span class="mag_num mag_num_right"> >>进入</span></li>
                            <li class="clearfix"><a href="http://st.awe.com/mag/165502741075/"
                                                    onClick="SendEvent(46,1171,{position:2})" target="_blank">
                                <div class="book"><img class="mag_img"
                                                       src="${pageContext.request.contextPath }/dist/communityMainpage/tmp/images/msg2.jpg">
                                    <div class="book_root"></div>
                                </div>
                            </a> <a href="http://st.awe.com/mag/165502741075/" class="mag_name ellipsis_text"
                                    target="_blank" title="LM训练营之读句记词">LM训练营之读句记词</a> <span class="mag_desc">每一期发布一段日常对话或台词，通过朗读对… </span>
                                <span class="mag_num">公告主题</span> <span class="mag_num mag_num_right"> >>进入</span></li>

                        </ul>
                        <div style="margin: 15px 0px;    padding: 0px 10px;">
                            <a href="javascript:void(0)" class="m-btn-qd" style="background: #d6d4d3">前一步</a>
                            <a href="javascript:void(0)" class="m-btn-qd m-btn-qd2"
                               style="float:right;background: #313342">后一步</a>
                        </div>
                    </div>

                </div>
                <div class="topic_rank">
                    <h3><a onClick="SendEvent(46,1162,{})" href="http://st.awe.com/mag/165490081231/" class="more"
                           target="_blank" rel="nofollow">more+</a> 优秀热帖</h3>
                    <ul>
                        <li class="clearfix"><span class="lv1">1</span> <a onClick="SendEvent(46,1161,{inx:1})"
                                                                           href="http://st.awe.com/topic/1711887673510/"
                                                                           class="topic_name" target="_blank"
                                                                           title="招募口语体验大使，不服来战！"> 招募口语体验大使，不服来战！</a>
                        </li>
                        <li class="clearfix"><span class="lv2">2</span> <a onClick="SendEvent(46,1161,{inx:2})"
                                                                           href="http://cctalk.awe.com/m/zhuanti/100861"
                                                                           class="topic_name" target="_blank"
                                                                           title="带你见识世界嘻哈少年"> 带你见识世界嘻哈少年</a></li>
                        <li class="clearfix"><span class="lv2">3</span> <a onClick="SendEvent(46,1161,{inx:3})"
                                                                           href="http://cctalk.awe.com/m/zhuanti/100655"
                                                                           class="topic_name" target="_blank"
                                                                           title="Mac小白快速入门手册"> Mac小白快速入门手册</a></li>
                        <li class="clearfix"><span class="lv3">4</span> <a onClick="SendEvent(46,1161,{inx:4})"
                                                                           href="http://cctalk.awe.com/m/zhuanti/100864"
                                                                           class="topic_name" target="_blank"
                                                                           title="一分钟学会日语口语"> 一分钟学会日语口语</a></li>
                        <li class="clearfix"><span class="lv3">5</span> <a onClick="SendEvent(46,1161,{inx:5})"
                                                                           href="http://cctalk.awe.com/m/zhuanti/100866"
                                                                           class="topic_name" target="_blank"
                                                                           title="听完这些课助你成为万词王"> 听完这些课助你成为万词王</a></li>
                        <li class="clearfix"><span class="lv3">6</span> <a onClick="SendEvent(46,1161,{inx:6})"
                                                                           href="http://cctalk.awe.com/m/zhuanti/100869"
                                                                           class="topic_name" target="_blank"
                                                                           title="心理咨询师考试备考攻略"> 心理咨询师考试备考攻略</a></li>
                        <li class="clearfix"><span class="lv3">7</span> <a onClick="SendEvent(46,1161,{inx:7})"
                                                                           href="http://cctalk.awe.com/m/zhuanti/100870"
                                                                           class="topic_name" target="_blank"
                                                                           title="零起点直达中级英语课程"> 零起点直达中级英语课程</a></li>
                        <li class="clearfix"><span class="lv3">8</span> <a onClick="SendEvent(46,1161,{inx:8})"
                                                                           href="http://st.awe.com/topic/1711842391075/"
                                                                           class="topic_name" target="_blank"
                                                                           title="399元免费课程等你来拿！ "> 399元免费课程等你来拿！ </a>
                        </li>
                    </ul>
                </div>
                <div class="topic_rank">
                    <h3><a href="http://st.awe.com/explore/" onClick="SendEvent(46,1168,{})" class="more"
                           target="_blank">more+</a>学社排行榜</h3>
                    <ul class="clearfix">
                        <li class="clearfix"><span class="lv1">1</span> <a onClick="SendEvent(46,1161,{inx:1})"
                                                                           href="http://st.awe.com/topic/1711887673510/"
                                                                           class="topic_name" target="_blank"
                                                                           title="招募口语体验大使，不服来战！"> 招募口语体验大使，不服来战！</a>
                        </li>
                        <li class="clearfix"><span class="lv2">2</span> <a onClick="SendEvent(46,1161,{inx:2})"
                                                                           href="http://cctalk.awe.com/m/zhuanti/100861"
                                                                           class="topic_name" target="_blank"
                                                                           title="带你见识世界嘻哈少年"> 带你见识世界嘻哈少年</a></li>
                        <li class="clearfix"><span class="lv2">3</span> <a onClick="SendEvent(46,1161,{inx:3})"
                                                                           href="http://cctalk.awe.com/m/zhuanti/100655"
                                                                           class="topic_name" target="_blank"
                                                                           title="Mac小白快速入门手册"> Mac小白快速入门手册</a></li>
                        <li class="clearfix"><span class="lv3">4</span> <a onClick="SendEvent(46,1161,{inx:4})"
                                                                           href="http://cctalk.awe.com/m/zhuanti/100864"
                                                                           class="topic_name" target="_blank"
                                                                           title="一分钟学会日语口语"> 一分钟学会日语口语</a></li>
                        <li class="clearfix"><span class="lv3">5</span> <a onClick="SendEvent(46,1161,{inx:5})"
                                                                           href="http://cctalk.awe.com/m/zhuanti/100866"
                                                                           class="topic_name" target="_blank"
                                                                           title="听完这些课助你成为万词王"> 听完这些课助你成为万词王</a></li>
                        <li class="clearfix"><span class="lv3">6</span> <a onClick="SendEvent(46,1161,{inx:6})"
                                                                           href="http://cctalk.awe.com/m/zhuanti/100869"
                                                                           class="topic_name" target="_blank"
                                                                           title="心理咨询师考试备考攻略"> 心理咨询师考试备考攻略</a></li>
                        <li class="clearfix"><span class="lv3">7</span> <a onClick="SendEvent(46,1161,{inx:7})"
                                                                           href="http://cctalk.awe.com/m/zhuanti/100870"
                                                                           class="topic_name" target="_blank"
                                                                           title="零起点直达中级英语课程"> 零起点直达中级英语课程</a></li>
                        <li class="clearfix"><span class="lv3">8</span> <a onClick="SendEvent(46,1161,{inx:8})"
                                                                           href="http://st.awe.com/topic/1711842391075/"
                                                                           class="topic_name" target="_blank"
                                                                           title="399元免费课程等你来拿！ "> 399元免费课程等你来拿！ </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<link rel="stylesheet" type="text/css"
      href="${pageContext.request.contextPath }/dist/communityMainpage/files_com/footer.css">
<div class="footer ">
    <div>
        <!-- <a href="/rd/" style="color:#fff;position:absolute;width:60px;margin:33px 0 0 -34%;">开发团队</a> -->
        <div id="footer-ft" class="hui-footer">
            <div class="hui-footer-ft">

                <p class="copyright"><span>Copyright © 2016 AWE All Rights Reserved.ICP认证：xxxxxxxxxxxxxx&nbsp;&nbsp;&nbsp;&nbsp;</span>
                </p>
            </div>
        </div>
        <div class="footer_go_top">
            <ul>
                <li><a href="javascript:" class="news_btn"></a> <span class="news_dotted"
                                                                      style="display: none;"></span></li>
                <li><a href="#pageContent" class="go_top" style="display: none;"><i></i><span class="hide_text">返回<br>
          顶部</span></a></li>
            </ul>
        </div>
    </div>
</div>
<script>
    $(".slides").poposlides();
</script>
<script src="${pageContext.request.contextPath }/dist/communityMainpage/files_com/fixedtop1.js"
        type="text/javascript"></script>
</body>
</html>
