<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/5/8
  Time: 0:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en-CH">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <title>AWE</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/dist/register/css/ucenter(1).css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/dist/register/css/register_aliyun.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/dist/register/css/reg_check.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/dist/register/css/index.css">
</head>

<body class="aliyun ">
<div class="header-fix">
    <div class="header">
        <div class="auto">
            <div class="header-logo"><a href="" class="logo"></a><span class="logo-title">绑定邮箱</span></div>
            <div class="header-nav">
                <ul class="">
                    <li class="nav-1 header-nav-li"><a href="../学社首页/学社首页.htm">首&nbsp;&nbsp;页</a></li>
                    <li class="nav-4 header-nav-li"><a href="">帮助中心</a></li>
                    <li class="nav-5 header-nav-li"><a href="">关于我们</a></li>
                </ul>
            </div>
        </div>
    </div>
</div>


<!--头部 start-->
<div id="content">
    <div class="content-layout">
        <div class="maincenter">
            <ol class="ui-step ui-step-3" style="overflow: visible">
                <li class="ui-step-start ui-step-active" id="stepstart">
                    <div class="ui-step-line">-</div>
                    <div class="ui-step-icon">
                        <!--
                        <i class="iconfont">y</i>
                        <i class="ui-step-number">1</i>
            -->
                        <img src="${pageContext.request.contextPath }/dist/register/img/1.png" width="50px"/> <span
                            class="ui-step-text">验证身份</span></div>
                </li>
                <li>
                    <div class="ui-step-line">-</div>
                    <div class="ui-step-icon">
                        <!--
                            <i class="iconfont">y</i>
                            <i class="ui-step-number">2</i>
            -->
                        <img src="${pageContext.request.contextPath }/dist/register/img/2.png" width="50px"/> <span
                            class="ui-step-text" style="left: -70px;">修改安全邮箱</span></div>
                </li>
                <li class="ui-step-end">
                    <div class="ui-step-line">-</div>
                    <div class="ui-step-icon">
                        <!--
                        <i class="iconfont">y</i>
                        <i class="iconfont ui-step-number"></i>
            -->
                        <img src="${pageContext.request.contextPath }/dist/register/img/3.png" width="50px"/> <span
                            class="ui-step-text">完成</span></div>
                </li>
            </ol>
            <div class="maincenter-box">
                <div style="width: 80%;margin:20px auto;font-size: 14px;    font-weight: bold;
    color: #444446;">
                    <label style="margin-right: 16px">手机验证码验证</label>
                    账户 ${ccuser.cusername} 为确认是你本人操作，请完成以下验证
                </div>
                <div class="ui-form-item">
                    <label class="ui-label">手机号码：</label>
                    <input id="J_Phone" class="ui-input ui-input-checkcode-new ui-input-checkcode-over " type="text"
                           maxlength="11" placeholder="手机号码" value="${ccuser.cupn}"/>

                </div>
                <div class="ui-form-item">
                    <label class="ui-label">验证码：</label>
                    <div class="checkcode-warp">
                        <input name="J_Phone_Checkcode" id="J_Phone_Checkcode"
                               class="ui-input ui-input-checkcode-new ui-input-checkcode-over " type="text"
                               maxlength="6" placeholder="6位数字" data-widget-cid="widget-1" data-explain="">
                        <button id="J_GetCode" class="getcheckcode ui-button-over ft-orange" type="button"
                                data-widget-cid="widget-2">获取短信校验码
                        </button>
                    </div>
                    <div class="ui-form-explain"></div>
                </div>
                <div class="ui-form-item">
                    <!--            <input type="submit" value=" 确定" class="ui-button ui-button-lorange">-->
                    <a href="${pageContext.request.contextPath }/modify_email/${ccuser.cuid}"
                       class="ui-button ui-button-lorange">确定</a>
                </div>

            </div>
            <div class="bottom-tips">
                <div class="bottom-tips-title">没收到短信验证码？</div>
                <ul class="ui-list ui-list-nosquare">
                    <li class="ui-list-item"><span class="ui-list-item-text">1、网络通讯异常可能会造成短信丢失，请重新获取或稍后再试。</span></li>
                    <li class="ui-list-item"><span class="ui-list-item-text">2、请核实手机是否已欠费停机，或者屏蔽了系统短信。</span></li>
                    <li class="ui-list-item"><span class="ui-list-item-text">3、如果手机已丢失或停用， 请选择其他验证方式 。</span></li>
                    <li class="ui-list-item"><span class="ui-list-item-text">4、您也可以尝试将SIM卡移动到另一部手机，然后重试。</span></li>
                </ul>
            </div>
        </div>
    </div>
</div>
</body>
</html>
