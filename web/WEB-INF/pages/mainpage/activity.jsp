<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/5/24
  Time: 16:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="header.jsp" flush="true"/>
<style>
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

    ul, li {
        margin: 0;
        padding: 0;
    }

    .pagination ul {
        zoom: 1;
        text-align: center;
    }

    .pagination li {
        text-align: center;
        /* width: 24px; */
        /* padding: 0 8px; */

        height: 24px;
        margin-right: 4px;
        margin-left: 4px;
        vertical-align: top;
        color: #666;
        background: #fff;
        margin-top: 60px;
        display: inline-block;
        line-height: 24px;
        border: 1px solid #eee;
        border-radius: 2px;
    }

    .pagination li a {
        padding: 0 8px;
        color: #333;
    }

    .pagination .active {
        color: #fff;
        padding: 0 8px;
        background-color: #68c04a;
        border: 1px solid #68c04a;
    }
</style>
<div class="g-bd">
    <div class="g-mn  g-w1200 f-cb ">
        <div class="m-toutiao f-cb">
            <p class="g-tt">活动专区</p>
            <ul class="m-son-nav f-fl">
                <li class="son-act"><a href="">全部</a></li>
                <li><a href="">语言学习</a></li>
                <li><a href="">科学文化</a></li>
                <li><a href="">生活娱乐</a></li>
                <li><a href="">其他</a></li>
            </ul>
        </div>
        <div class="m-news-top2">
            <div class="m-bg">
                <dl class="m-news-list2 f-cb">
                    <dt class="m-news-list2-title"><a href="">2016年度中国现代远程教育十大新闻发布</a></dt>
                    <dt class="f-fl"><a href=""><img
                            src="${pageContext.request.contextPath }/dist/mainpage/tmp/images/product.jpg" width="210"
                            height="140"></a></dt>
                    <div class="m-news-content">
                        <dt><span><i class="fa fa-eye"></i>25685</span><span><i
                                class="fa fa-comment-o">288</i></span><span><i class="fa fa-thumbs-o-up"></i>258</span>
                        </dt>
                        <dd>
                            2017年是“史上最牛军改”决胜之年。当前，军队规模结构和力量编成改革正在向纵深推进，涉及面更广、触及利益更深、任务更为艰巨，一些官兵将面临单位撤并降改和个人进退去留的考验。习主席在中央政治局围绕深化国防和军队改革进行第三十四次集体学习时强调：“在国防和军队改革向纵深推...全文＞
                        </dt>
                        <dd class="c36b9c5">AWE学社名称</dd>
                        <dd class="m-time">2016-11-11</dd>
                    </div>
                </dl>
                <dl class="m-news-list2 f-cb">
                    <dt class="m-news-list2-title"><a href="">2016年度中国现代远程教育十大新闻发布</a></dt>
                    <dt class="f-fl"><a href=""><img
                            src="${pageContext.request.contextPath }/dist/mainpage/tmp/images/product.jpg" width="210"
                            height="140"></a></dt>
                    <div class="m-news-content">
                        <dt><span><i class="fa fa-eye"></i>25685</span><span><i
                                class="fa fa-comment-o">288</i></span><span><i class="fa fa-thumbs-o-up"></i>258</span>
                        </dt>
                        <dd>
                            2017年是“史上最牛军改”决胜之年。当前，军队规模结构和力量编成改革正在向纵深推进，涉及面更广、触及利益更深、任务更为艰巨，一些官兵将面临单位撤并降改和个人进退去留的考验。习主席在中央政治局围绕深化国防和军队改革进行第三十四次集体学习时强调：“在国防和军队改革向纵深推...全文＞
                        </dt>
                        <dd class="c36b9c5">AWE学社名称</dd>
                        <dd class="m-time">2016-11-11</dd>
                    </div>
                </dl>
                <dl class="m-news-list2 f-cb">
                    <dt class="m-news-list2-title"><a href="">2016年度中国现代远程教育十大新闻发布</a></dt>
                    <dt class="f-fl"><a href=""><img
                            src="${pageContext.request.contextPath }/dist/mainpage/tmp/images/product.jpg" width="210"
                            height="140"></a></dt>
                    <div class="m-news-content">
                        <dt><span><i class="fa fa-eye"></i>25685</span><span><i
                                class="fa fa-comment-o">288</i></span><span><i class="fa fa-thumbs-o-up"></i>258</span>
                        </dt>
                        <dd>
                            2017年是“史上最牛军改”决胜之年。当前，军队规模结构和力量编成改革正在向纵深推进，涉及面更广、触及利益更深、任务更为艰巨，一些官兵将面临单位撤并降改和个人进退去留的考验。习主席在中央政治局围绕深化国防和军队改革进行第三十四次集体学习时强调：“在国防和军队改革向纵深推...全文＞
                        </dt>
                        <dd class="c36b9c5">AWE学社名称</dd>
                        <dd class="m-time">2016-11-11</dd>
                    </div>
                </dl>
            </div>
        </div>
        <div class="m-news-left m-news2-left">
            <div class="m-btn f-cb">
                <a href="javascript:void(0)" class="m-btn-new">发布专题活动</a>
                <a href="javascript:void(0)" class="m-btn-qd">签到</a>
            </div>
            <div class="g-sarch-input2">
                <input type="text" name="" placeholder="请熟人关键字"/>
                <button type="submit">搜索</button>
            </div>
            <p class="m-create">创建学社</p>
            <div class="m-head-top">
                <div class="m-head-tabs">
                    <ul>
                        <li class="m-head-act">AWE头条排行榜</li>
                        <li>官方推荐区</li>
                    </ul>
                </div>
                <div style="width: 305px;height:410px;  background-image: url(${pageContext.request.contextPath }/dist/mainpage/images/bg_right_small.jpg);background-size: 100% ">
                    <ul class="m-head-list" style=" background: #f6f7fb;margin-bottom: 10px;">
                        <li><a href=""><span class="m-garden">1</span>英语朗读，让耳朵爆炸的声音。。</a></li>
                        <li><a href=""><span class="m-garden">2</span>英语朗读，让耳朵爆炸的声音。。</a></li>
                        <li><a href="" class="orange"><span class="m-garden blue">3</span>英语朗读，让耳朵爆炸的声音。。</a></li>
                        <li><a href=""><span class="m-garden">4</span>英语朗读，让耳朵爆炸的声音。。</a></li>
                        <li><a href=""><span class="m-garden">5</span>英语朗读，让耳朵爆炸的声音。。</a></li>
                        <li><a href=""><span class="m-garden">6</span>英语朗读，让耳朵爆炸的声音。。</a></li>
                        <li><a href=""><span class="m-garden">7</span>英语朗读，让耳朵爆炸的声音。。</a></li>
                        <li><a href=""><span class="m-garden">8</span>英语朗读，让耳朵爆炸的声音。。</a></li>
                        <li><a href=""><span class="m-garden">9</span>英语朗读，让耳朵爆炸的声音。。</a></li>
                        <li><a href=""><span class="m-garden">10</span>英语朗读，让耳朵爆炸的声音。。</a></li>
                        <!--                       <li><a href=""><span class="m-garden">11</span>英语朗读，让耳朵爆炸的声音。。</a></li>-->
                        <!--                        <li><a href=""><span class="m-garden">1</span>英语朗读，让耳朵爆炸的声音。。</a></li>                                             -->
                    </ul>
                </div>
            </div>
        </div>
    </div>


    <div class="m-product-list g-w1200">
        <div class="pagination" style=" margin-bottom: 0px;width: 100%;
    margin-top:0px;">
            <ul style="
    text-align: center;list-style: none; ">
                <li><a href="/cihui/">1</a></li>
                <li><a href="/cihui/p2/">2</a></li>
                <li class="active">3</li>
                <li><a href="/cihui/p4/">4</a></li>
                <li><a href="/cihui/p5/">5</a></li>
                <li><a href="/cihui/p6/">6</a></li>
                <span style="    margin-top: 60px;
    display: inline-block;">... </span>
                <li><a href="/cihui/p50/" class="otherpage">50</a></li>
                <li class="page-l"><a href="/cihui/p4/" class="prevNext">下一页</a></li>
            </ul>
        </div>
    </div>


</div>
</div>
<jsp:include page="footer.jsp" flush="true"/>