<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/5/8
  Time: 2:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en-US" class="hb-loaded">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <meta name="data-spm" content="a1z5k">
    <title>awe</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/dist/register/css/ucenter(1).css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/dist/register/css/register_aliyun.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/dist/register/css/reg_check.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/dist/register/css/index.css">

    <script type="text/javascript" src="${pageContext.request.contextPath }/dist/register/js/jquery.min.js"></script>

    <script type="text/javascript">
        var verifycode;

        $(function () {
            $("#J_GetCode").click(function () {
                var email = $("#J_Email").val();
                email = $.trim(email);

                var url = "${pageContext.request.contextPath }/ajaxSendEmailVerify";
                var args = {"email": email, "date": new Date()};
                $.post(url, args, function (data) {
                    var i = parseInt(data);
                    var regPos = /^\+?[1-9][0-9]*$/;　　//判断是否为正整数
                    if (regPos.test(i)) {
                        verifycode = data;
                        $("#J_GetCode").attr("disabled", true);
                        $("#J_GetCode").attr("class", "ui-button ui-button-mdisable");
                        $("#J_GetCode").text("(30秒后)重新获取验证码");
                        $("#explain_text").attr("style", "display:block");
                    } else {
                        alert(data);
                    }
                });
            });

            $("#emailSubmit").click(function () {
                var email = $("#J_Email").val();
                email = $.trim(email);

                var checkCode = $("#J_Checkcode").val();
                checkCode = $.trim(checkCode);

                if (verifycode == checkCode) {
                    $("#cemail").val(email);
                    $("#J_Form").submit();
                }
            });
        });
    </script>
</head>
<body>
<!--头部 start-->
<div class="header-fix">
    <div class="header">
        <div class="auto">
            <div class="header-logo"><a href="" class="logo"></a><span class="logo-title">修改安全邮箱</span></div>
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
<!--头部 end-->
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
                <li class="ui-step-active">
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
                <div class="maincenter-box-tip">
                    <p class="ui-tiptext ui-tiptext-message ft-14">
                        <i class="ui-tiptext-icon iconfont" title="提示"></i>
                        请确保您输入的邮箱能正常接收激活邮件，邮箱才能生效。
                    </p>
                </div>
                <form:form class="ui-form" id="J_Form"
                           action="${pageContext.request.contextPath }/bound_email/${ccuser.cuid}" method="post"
                           data-widget-cid="widget-1" modelAttribute="ccuser">
                    <form:hidden path="cemail" id="cemail"/>

                    <div class="ui-form-item">
                        <label class="ui-label"> 登录名: </label>
                        <p class="ui-form-text">${ccuser.cusername}</p>
                    </div>
                    <div class="ui-form-item">
                        <label class="ui-label"> 邮箱： </label>
                        <input class="ui-input" type="text" maxlength="128" id="J_Email" value="" data-explain=""
                               autocomplete="off" data-widget-cid="widget-2"/>
                        <div class="ui-form-explain"></div>
                    </div>
                    <div class="ui-form-item ui-tiptext-success">
                        <button id="J_GetCode" class="ui-button ui-button-mwhite" type="button"
                                data-widget-cid="widget-2">获取邮件校验码
                        </button>
                            <%--<button class="ui-button ui-button-mdisable" id="J_GetCode" type="button" data-widget-cid="widget-5" disabled="">(30秒后)重新获取验证码</button>--%>
                        <div class="ui-form-explain" id="explain_text" style="display: none;"><i
                                class="ui-tiptext-icon iconfont"></i>校验码已发送到你的邮箱，15分钟内输入有效，请勿泄露于他人
                        </div>
                    </div>
                    <div class="ui-form-item">
                        <label class="ui-label"> 验证码: </label>
                        <input name="_fm-h-_0-c" id="J_Checkcode" class="ui-input ui-input-checkcode" type="text"
                               maxlength="6" placeholder=" 6位数字 " value="" data-explain="" data-widget-cid="widget-3">
                    </div>
                    <div class="ui-form-item">
                        <!--    <input type="submit" value=" 确定 " class="ui-button ui-button-lorange">-->
                        <a href="javascript:void(0);" id="emailSubmit" class="ui-button ui-button-lorange">确定</a>
                    </div>

                </form:form>
            </div>
            <div class="bottom-tips">
                <div class="bottom-tips-title">没收到邮箱验证码</div>
                <ul class="ui-list ui-list-nosquare">
                    <li class="ui-list-item">
                        <span class="ui-list-item-text">1、网络通讯异常可能会造成邮件丢失，请重新获取或稍后再试。</span>
                    </li>
                    <li class="ui-list-item">
                        <span class="ui-list-item-text">2、请核实邮箱是否正常使用，并检查垃圾邮箱夹。</span>
                    </li>

                </ul>
            </div>
        </div>
    </div>
</div>
<!--foot start-->
<div id="footer">
    <div class="footer-layout">
        <div class="copyright">
            awe版权所有 2017
        </div>
    </div>
</div>
</body>
</html>
