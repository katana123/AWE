<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/5/3
  Time: 15:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
  <link rel="stylesheet" href="css/common.css"/>
  <link rel="stylesheet" href="css/font-awesome.min.css"/>
  <link rel="stylesheet" href="css/index.css"/>
  <link rel="stylesheet" href="css/default.css"/>
  <style>
    .m-son-nav li {
      width: 100px;
    }
    .imgicon-list{
      margin-top: 10px;
    }
    .list_ul{
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
      height:16px;
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
    .font_blue{
      color: #0076ca;
    }
    .slideBox .bd_small img{
      height: 300px;
    }
  </style>
  <script src="libs/jquery.min.js" type="text/javascript" charset="utf-8"></script>
  <script src="libs/jquery.SuperSlide.2.1.1.js" type="text/javascript" charset="utf-8"></script>
</head>
<body>
<div class="g-doc">
  <div class="g-search g-w1200 f-cb">
    <a class="g-logo" href=""><img src="images/logo.jpg"></a>
    <div class="g-sarch-input">
      <select class="g-select" name="" >
        <option value="">精品推荐</option>
        <option value="">公司头条</option>
      </select>
      <input type="text" name="search" id="search" value="" placeholder="请输入关键字">
      <div class="g-btn-search"><i class="fa fa-search"></i></div>
    </div>
    <ul class="g-login">
      <li><a href=""> 登录</a>|</li>
      <li><a href=""> 注册</a>|</li>
      <li><a href=""> 社区</a></li>
      <ul>
  </div>
  <div class="g-hd">
    <ul class="m-nav f-cb g-w1200">
      <li class="g-act"><a href="index.html">首页</a></li>

      <li ><a href="../学社首页/学社首页.htm">AWE社区</a></li>
      <li><a href="headline.html">AWE头条</a></li>
      <li><a href="activity.html">活动专区</a></li>
      <li><a href="resources.html">精品资源</a></li>
      <li><a href="video.html">视频课程</a></li>
      <li><a href="">关于我们</a></li>
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
          <li><a href="" target=""><img src="tmp/images/banner.jpg"></a></li>
          <li><a href="" target=""><img src="tmp/images/banner.jpg"></a></li>
          <li><a href="" target=""><img src="tmp/images/banner.jpg"></a></li>
        </ul>
      </div>
    </div>
  </div>
  <div class="g-bd">
    <div class="g-mn  g-w1200 f-cb ">
      <div class="m-news-top">
        <div class="m-toutiao f-cb">
          <p class="g-tt">AWE头条</p>
          <p class="g-more"><a href="">更多</a></p>
        </div>
        <dl class="m-news-list f-cb">
          <dt class="m-news-img"><a href=""><img src="tmp/images/product.jpg" width="210" height="90"></a></dt>
          <div class="m-news-content">
            <dt><a href="">2016年度中国现代远程教育十大新闻发布</a></dt>
            <dd>1月27日，由《中国远程教育》杂志社主办的2015年度中国现代远程教育十条...
            </dt>
            <dd class="m-time">2016-11-11</dd>
          </div>
        </dl>
        <dl class="m-news-list f-cb">
          <dt class="m-news-img"><a href=""><img src="tmp/images/product.jpg" width="210" height="90"></a></dt>
          <div class="m-news-content">
            <dt><a href="">2016年度中国现代远程教育十大新闻发布</a></dt>
            <dd>1月27日，由《中国远程教育》杂志社主办的2015年度中国现代远程教育十条...
            </dt>
            <dd class="m-time">2016-11-11</dd>
          </div>
        </dl>
        <dl class="m-news-list f-cb">
          <dt class="m-news-img"><a href=""><img src="tmp/images/product.jpg" width="210" height="90"></a></dt>
          <div class="m-news-content">
            <dt><a href="">2016年度中国现代远程教育十大新闻发布</a></dt>
            <dd>1月27日，由《中国远程教育》杂志社主办的2015年度中国现代远程教育十条...
            </dt>
            <dd class="m-time">2016-11-11</dd>
          </div>
        </dl>
      </div>
      <div class="m-news-left">
        <div class="m-toutiao f-cb">
          <p class="g-tt">活动专区</p>
          <p class="g-more"><a href="">更多</a></p>
        </div>
        <div class="m-huodong">
          <div id="slideBox" class="slideBox slideBox2">
            <div class="hd">
              <ul>
                <li class="">1</li>
                <li class="">2</li>
                <li class="on">3</li>
              </ul>
            </div>
            <div class="bd bd_small">
              <ul>
                <li><a href="" target=""><img src="tmp/images/banner_small.jpg"></a></li>
                <li><a href="" target=""><img src="tmp/images/banner_small.jpg"></a></li>
                <li><a href="" target=""><img src="tmp/images/banner_small.jpg"></a></li>
              </ul>
            </div>
          </div>
          <div class="m-huodong-list">
            <ul>
              <li><a href="">2016年度中国现代远程教育十大新闻发布</a></li>
              <li><a href="">2016年度中国现代远程教育十大新闻发布</a></li>
              <li><a href="">2016年度中国现代远程教育十大新闻发布</a></li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="g-sd  g-w1200">
    <div class="m-sd-top">
      <p>Specialty courses</p>
      <p>特色课程</p>
      <div class="m-hx"></div>
    </div>
    <div class="m-sd-list f-cb"> <img class="f-fl" src="tmp/images/list.jpg" width="580" /> <img class="f-fr" src="tmp/images/list.jpg" width="580" /> </div>
    <div class="imgicon-list f-cb">
      <ul class="list_ul">
        <li class="superiority-li-item">
          <div class="animate-wrapper-div">
            <img src="images/li_1.png" width="120px"/>
          </div>
          <p class="superiority-big-num">旅游英语</p>
          <p class="superiority-small-text">5年二元期权市场开拓经验</p>
        </li>
        <li class="superiority-li-item">
          <div class="animate-wrapper-div">
            <img src="images/li_2.png" width="120px"/>
          </div>
          <p class="superiority-big-num font_blue">旅游日语</p>
          <p class="superiority-small-text font_blue">拥有国内最强大的二元期权分析师团队</p>
        </li>
        <li class="superiority-li-item">
          <div class="animate-wrapper-div">
            <img src="images/li_3.png" width="120px"/>
          </div>
          <p class="superiority-big-num">旅游法语</p>
          <p class="superiority-small-text">最了解中国二元期权投资者的心理</p>
        </li>
        <li class="superiority-li-item">
          <div class="animate-wrapper-div">
            <img src="images/li_4.png" width="120px"/>
          </div>
          <p class="superiority-big-num">旅游韩语</p>
          <p class="superiority-small-text">为客户提供国内最强大的喊单系统</p>
        </li>
      </ul>
    </div>
  </div>
  <div class="m-product-list g-w1200">
    <div class="m-toutiao f-cb">
      <p class="g-tt">精品资源</p>
      <ul class="m-son-nav f-fl">
        <li class="son-act"><a href="">全部</a></li>
        <li><a href="">语言学习</a></li>
        <li><a href="">科学文化</a></li>
        <li><a href="">生活娱乐</a></li>
        <li><a href="">其他</a></li>
      </ul>
      <p class="g-more"><a href="">更多</a></p>
    </div>
    <div class="m-cp-list">
      <div class="m-list"> <img src="tmp/images/porduct1.jpg" width="250" height="180" />
        <p class="m-list-title">GRE  托福   雅思考试指导</p>
        <div class="m-price f-cb">
          <p class="f-fl m-price-color">免费</p>
          <p class="f-fr">25865</p>
        </div>
        <div class="m-user f-cb"> <img class="m-user-img" src="tmp/images/list.jpg" width="30" height="30" >
          <p>owe教育</p>
        </div>
      </div>
      <div class="m-list"> <img src="tmp/images/porduct1.jpg" width="250" height="180" />
        <p class="m-list-title">GRE  托福   雅思考试指导</p>
        <div class="m-price f-cb">
          <p class="f-fl m-price-color">免费</p>
          <p class="f-fr">25865</p>
        </div>
        <div class="m-user f-cb"> <img class="m-user-img" src="tmp/images/list.jpg" width="30" height="30" >
          <p>owe教育</p>
        </div>
      </div>
      <div class="m-list"> <img src="tmp/images/porduct1.jpg" width="250" height="180" />
        <p class="m-list-title">GRE  托福   雅思考试指导</p>
        <div class="m-price f-cb">
          <p class="f-fl m-price-color">免费</p>
          <p class="f-fr">25865</p>
        </div>
        <div class="m-user f-cb"> <img class="m-user-img" src="tmp/images/list.jpg" width="30" height="30" >
          <p>owe教育</p>
        </div>
      </div>
      <div class="m-list"> <img src="tmp/images/porduct1.jpg" width="250" height="180" />
        <p class="m-list-title">GRE  托福   雅思考试指导</p>
        <div class="m-price f-cb">
          <p class="f-fl m-price-color">免费</p>
          <p class="f-fr">25865</p>
        </div>
        <div class="m-user f-cb"> <img class="m-user-img" src="tmp/images/list.jpg" width="30" height="30" >
          <p>owe教育</p>
        </div>
      </div>
      <div class="m-list"> <img src="tmp/images/porduct1.jpg" width="250" height="180" />
        <p class="m-list-title">GRE  托福   雅思考试指导</p>
        <div class="m-price f-cb">
          <p class="f-fl m-price-color">免费</p>
          <p class="f-fr">25865</p>
        </div>
        <div class="m-user f-cb"> <img class="m-user-img" src="tmp/images/list.jpg" width="30" height="30" >
          <p>owe教育</p>
        </div>
      </div>
      <div class="m-list"> <img src="tmp/images/porduct1.jpg" width="250" height="180" />
        <p class="m-list-title">GRE  托福   雅思考试指导</p>
        <div class="m-price f-cb">
          <p class="f-fl m-price-color">免费</p>
          <p class="f-fr">25865</p>
        </div>
        <div class="m-user f-cb"> <img class="m-user-img" src="tmp/images/list.jpg" width="30" height="30" >
          <p>owe教育</p>
        </div>
      </div>
      <div class="m-list"> <img src="tmp/images/porduct1.jpg" width="250" height="180" />
        <p class="m-list-title">GRE  托福   雅思考试指导</p>
        <div class="m-price f-cb">
          <p class="f-fl m-price-color">免费</p>
          <p class="f-fr">25865</p>
        </div>
        <div class="m-user f-cb"> <img class="m-user-img" src="tmp/images/list.jpg" width="30" height="30" >
          <p>owe教育</p>
        </div>
      </div>
      <div class="m-list"> <img src="tmp/images/porduct1.jpg" width="250" height="180" />
        <p class="m-list-title">GRE  托福   雅思考试指导</p>
        <div class="m-price f-cb">
          <p class="f-fl m-price-color">免费</p>
          <p class="f-fr">25865</p>
        </div>
        <div class="m-user f-cb"> <img class="m-user-img" src="tmp/images/list.jpg" width="30" height="30" >
          <p>owe教育</p>
        </div>
      </div>
    </div>
  </div>
</div>

<div class="m-product-list g-w1200">
  <div class="m-toutiao f-cb">
    <p class="g-tt">视频课程</p>
    <ul class="m-son-nav f-fl">
      <li class="son-act"><a href="">全部</a></li>
      <li><a href="">语言学习</a></li>
      <li><a href="">科学文化</a></li>
      <li><a href="">生活娱乐</a></li>
      <li><a href="">其他</a></li>
    </ul>
    <p class="g-more"><a href="">更多</a></p>
  </div>
  <div class="m-cp-list">
    <div class="m-list"> <img src="tmp/images/video.jpg" width="250" height="180" />
      <p class="m-list-title">GRE  托福   雅思考试指导</p>
      <div class="m-price f-cb">
        <p class="f-fl m-price-color">免费</p>
        <p class="f-fr">25865</p>
      </div>
      <div class="m-user f-cb"> <img class="m-user-img" src="tmp/images/list.jpg" width="30" height="30" >
        <p>owe教育</p>
      </div>
    </div>
    <div class="m-list"> <img src="tmp/images/video.jpg" width="250" height="180" />
      <p class="m-list-title">GRE  托福   雅思考试指导</p>
      <div class="m-price f-cb">
        <p class="f-fl m-price-color">免费</p>
        <p class="f-fr">25865</p>
      </div>
      <div class="m-user f-cb"> <img class="m-user-img" src="tmp/images/list.jpg" width="30" height="30" >
        <p>owe教育</p>
      </div>
    </div>
    <div class="m-list"> <img src="tmp/images/video.jpg" width="250" height="180" />
      <p class="m-list-title">GRE  托福   雅思考试指导</p>
      <div class="m-price f-cb">
        <p class="f-fl m-price-color">免费</p>
        <p class="f-fr">25865</p>
      </div>
      <div class="m-user f-cb"> <img class="m-user-img" src="tmp/images/list.jpg" width="30" height="30" >
        <p>owe教育</p>
      </div>
    </div>
    <div class="m-list"> <img src="tmp/images/video.jpg" width="250" height="180" />
      <p class="m-list-title">GRE  托福   雅思考试指导</p>
      <div class="m-price f-cb">
        <p class="f-fl m-price-color">免费</p>
        <p class="f-fr">25865</p>
      </div>
      <div class="m-user f-cb"> <img class="m-user-img" src="tmp/images/list.jpg" width="30" height="30" >
        <p>owe教育</p>
      </div>
    </div>
    <div class="m-list"> <img src="tmp/images/video.jpg" width="250" height="180" />
      <p class="m-list-title">GRE  托福   雅思考试指导</p>
      <div class="m-price f-cb">
        <p class="f-fl m-price-color">免费</p>
        <p class="f-fr">25865</p>
      </div>
      <div class="m-user f-cb"> <img class="m-user-img" src="tmp/images/list.jpg" width="30" height="30" >
        <p>owe教育</p>
      </div>
    </div>
    <div class="m-list"> <img src="tmp/images/video.jpg" width="250" height="180" />
      <p class="m-list-title">GRE  托福   雅思考试指导</p>
      <div class="m-price f-cb">
        <p class="f-fl m-price-color">免费</p>
        <p class="f-fr">25865</p>
      </div>
      <div class="m-user f-cb"> <img class="m-user-img" src="tmp/images/list.jpg" width="30" height="30" >
        <p>owe教育</p>
      </div>
    </div>
    <div class="m-list"> <img src="tmp/images/video.jpg" width="250" height="180" />
      <p class="m-list-title">GRE  托福   雅思考试指导</p>
      <div class="m-price f-cb">
        <p class="f-fl m-price-color">免费</p>
        <p class="f-fr">25865</p>
      </div>
      <div class="m-user f-cb"> <img class="m-user-img" src="tmp/images/list.jpg" width="30" height="30" >
        <p>owe教育</p>
      </div>
    </div>
    <div class="m-list"> <img src="tmp/images/video.jpg" width="250" height="180" />
      <p class="m-list-title">GRE  托福   雅思考试指导</p>
      <div class="m-price f-cb">
        <p class="f-fl m-price-color">免费</p>
        <p class="f-fr">25865</p>
      </div>
      <div class="m-user f-cb"> <img class="m-user-img" src="tmp/images/list.jpg" width="30" height="30" >
        <p>owe教育</p>
      </div>
    </div>
  </div>
</div>
<div class="m-product-list g-w1200">
  <div class="m-toutiao f-cb">
    <p class="g-tt">名师有约</p>
    <ul class="m-son-nav f-fl">
      <li class="son-act"><a href="">全部</a></li>
      <li><a href="">语言学习</a></li>
      <li><a href="">科学文化</a></li>
      <li><a href="">生活娱乐</a></li>
      <li><a href="">其他</a></li>
    </ul>
    <p class="g-more"><a href="">更多</a></p>
  </div>
  <div class="m-cp-list">
    <div class="m-list"> <img src="tmp/images/video.jpg" width="250" height="180" />
      <p class="m-list-title">GRE  托福   雅思考试指导</p>
      <div class="m-price f-cb">
        <p class="f-fl m-price-color">免费</p>
        <p class="f-fr">25865</p>
      </div>
      <div class="m-user f-cb"> <img class="m-user-img" src="tmp/images/list.jpg" width="30" height="30" >
        <p>owe教育</p>
      </div>
    </div>
    <div class="m-list"> <img src="tmp/images/video.jpg" width="250" height="180" />
      <p class="m-list-title">GRE  托福   雅思考试指导</p>
      <div class="m-price f-cb">
        <p class="f-fl m-price-color">免费</p>
        <p class="f-fr">25865</p>
      </div>
      <div class="m-user f-cb"> <img class="m-user-img" src="tmp/images/list.jpg" width="30" height="30" >
        <p>owe教育</p>
      </div>
    </div>
    <div class="m-list"> <img src="tmp/images/video.jpg" width="250" height="180" />
      <p class="m-list-title">GRE  托福   雅思考试指导</p>
      <div class="m-price f-cb">
        <p class="f-fl m-price-color">免费</p>
        <p class="f-fr">25865</p>
      </div>
      <div class="m-user f-cb"> <img class="m-user-img" src="tmp/images/list.jpg" width="30" height="30" >
        <p>owe教育</p>
      </div>
    </div>
    <div class="m-list"> <img src="tmp/images/video.jpg" width="250" height="180" />
      <p class="m-list-title">GRE  托福   雅思考试指导</p>
      <div class="m-price f-cb">
        <p class="f-fl m-price-color">免费</p>
        <p class="f-fr">25865</p>
      </div>
      <div class="m-user f-cb"> <img class="m-user-img" src="tmp/images/list.jpg" width="30" height="30" >
        <p>owe教育</p>
      </div>
    </div>
    <div class="m-list"> <img src="tmp/images/video.jpg" width="250" height="180" />
      <p class="m-list-title">GRE  托福   雅思考试指导</p>
      <div class="m-price f-cb">
        <p class="f-fl m-price-color">免费</p>
        <p class="f-fr">25865</p>
      </div>
      <div class="m-user f-cb"> <img class="m-user-img" src="tmp/images/list.jpg" width="30" height="30" >
        <p>owe教育</p>
      </div>
    </div>
    <div class="m-list"> <img src="tmp/images/video.jpg" width="250" height="180" />
      <p class="m-list-title">GRE  托福   雅思考试指导</p>
      <div class="m-price f-cb">
        <p class="f-fl m-price-color">免费</p>
        <p class="f-fr">25865</p>
      </div>
      <div class="m-user f-cb"> <img class="m-user-img" src="tmp/images/list.jpg" width="30" height="30" >
        <p>owe教育</p>
      </div>
    </div>
    <div class="m-list"> <img src="tmp/images/video.jpg" width="250" height="180" />
      <p class="m-list-title">GRE  托福   雅思考试指导</p>
      <div class="m-price f-cb">
        <p class="f-fl m-price-color">免费</p>
        <p class="f-fr">25865</p>
      </div>
      <div class="m-user f-cb"> <img class="m-user-img" src="tmp/images/list.jpg" width="30" height="30" >
        <p>owe教育</p>
      </div>
    </div>
    <div class="m-list"> <img src="tmp/images/video.jpg" width="250" height="180" />
      <p class="m-list-title">GRE  托福   雅思考试指导</p>
      <div class="m-price f-cb">
        <p class="f-fl m-price-color">免费</p>
        <p class="f-fr">25865</p>
      </div>
      <div class="m-user f-cb"> <img class="m-user-img" src="tmp/images/list.jpg" width="30" height="30" >
        <p>owe教育</p>
      </div>
    </div>
  </div>
</div>



<div class="m-product-list g-w1200">
  <div class="m-toutiao f-cb">
    <p class="g-tt">教坛之星</p>
    <ul class="m-son-nav f-fl">
      <li class="son-act"><a href="">全部</a></li>
      <li><a href="">英语 </a></li>
      <li><a href="">英语</a></li>
      <li><a href="">英语</a></li>
      <li><a href="">英语</a></li>
    </ul>
    <p class="g-more"><a href="">更多</a></p>
  </div>
  <div class="m-teacher f-cb">
    <div class="m-teacher-list"> <img class="f-fl m-teacher-img" src="images/teacher.png" />
      <div class="f-fl m-teacher-content">
        <p class="m-teacher-name">张德利</p>
        <p>武汉/雅思 英语</p>
        <div class="m-teacher-des">
          <p>加课虫资深教育专家，多年从事教育行业，具有丰富的...</p>
          <p>教龄：7 课件：102 关注：188</p>
        </div>
      </div>
    </div>
    <div class="m-teacher-list"> <img class="f-fl m-teacher-img" src="images/teacher.png" />
      <div class="f-fl m-teacher-content">
        <p class="m-teacher-name">张德利</p>
        <p>武汉/雅思 英语</p>
        <div class="m-teacher-des">
          <p>加课虫资深教育专家，多年从事教育行业，具有丰富的...</p>
          <p>教龄：7 课件：102 关注：188</p>
        </div>
      </div>
    </div>
    <div class="m-teacher-list"> <img class="f-fl m-teacher-img" src="images/teacher.png" />
      <div class="f-fl m-teacher-content">
        <p class="m-teacher-name">张德利</p>
        <p>武汉/雅思 英语</p>
        <div class="m-teacher-des">
          <p>加课虫资深教育专家，多年从事教育行业，具有丰富的...</p>
          <p>教龄：7 课件：102 关注：188</p>
        </div>
      </div>
    </div>
    <div class="m-teacher-list"> <img class="f-fl m-teacher-img" src="images/teacher.png" />
      <div class="f-fl m-teacher-content">
        <p class="m-teacher-name">张德利</p>
        <p>武汉/雅思 英语</p>
        <div class="m-teacher-des">
          <p>加课虫资深教育专家，多年从事教育行业，具有丰富的...</p>
          <p>教龄：7 课件：102 关注：188</p>
        </div>
      </div>
    </div>
  </div>
</div>
<div class="m-product-list g-w1200">
  <div class="m-toutiao f-cb">
    <p class="g-tt">入驻机构</p>
  </div>
  <div class="m-footer f-cb">
    <ul class="m-footer-img f-cb">
      <li><a href="###"><img src="images/logo_03.jpg"></a></li>
      <li><a href="###"><img src="images/b_02.jpg"></a></li>
      <li><a href="###"><img src="images/b_03.jpg"></a></li>
      <li><a href="###"><img src="images/b_04.jpg"></a></li>
      <li><a href="###"><img src="images/b_05.jpg"></a></li>
      <li><a href="###"><img src="images/b_06.jpg"></a></li>
      <li><a href="###"><img src="images/b_07.jpg"></a></li>
      <li><a href="###"><img src="images/b_08.jpg"></a></li>
    </ul>
  </div>
</div>
<div class="footer ">
  <div>
    <!-- <a href="/rd/" style="color:#fff;position:absolute;width:60px;margin:33px 0 0 -34%;">开发团队</a> -->
    <div id="footer-ft" class="hui-footer">
      <div class="hui-footer-ft">

        <p class="copyright"> <span>Copyright © 2016 AWE All Rights Reserved.ICP认证：xxxxxxxxxxxxxx&nbsp;&nbsp;&nbsp;&nbsp;</span></p>
      </div>
    </div>
    <div class="footer_go_top">
      <ul>
        <li> <a href="javascript:;" class="news_btn"></a> <span class="news_dotted" style="display: none;"></span> </li>
        <li><a href="#pageContent" class="go_top" style="display: none;"><i></i><span class="hide_text">返回<br>
          顶部</span></a></li>
      </ul>
    </div>
  </div>
</div>
<div class="m-corporation">
  <p>©  2015 武汉外语培训 Corporation 【网站后台管理】 备案号</p>
</div>
<script src="js/index.js" type="text/javascript" charset="utf-8"></script>
</body>
</html>
