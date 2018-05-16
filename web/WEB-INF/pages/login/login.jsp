<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/5/15
  Time: 16:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="Cache-Control" content="no-transform ">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>登录</title>
    <link href="${pageContext.request.contextPath }/dist/login/files/login2.css" rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath }/dist/login/files/login1.css" rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath }/dist/login/css/poposlides.css" rel="stylesheet">

    <script type="text/javascript"
            src="${pageContext.request.contextPath }/dist/common/js/jquery-3.3.1.min.js"></script>
    <%--<script type="text/javascript" src="${pageContext.request.contextPath }/dist/login/files/login1.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/dist/login/files/login2.js"></script>--%>
    <script type="text/javascript" src="${pageContext.request.contextPath }/dist/login/files/index.min.js"></script>
    <script src="${pageContext.request.contextPath }/dist/login/js/poposlides.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath }/dist/common/js/jquery.validate.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/dist/common/js/messages_zh.min.js"></script>
    <script>
        $(".slides").poposlides();

        function hideu() {
            $("#nouser").hide();
        }

        function hidep() {
            $("#falsepwd").hide();
        }

        $(function () {
            $("#uname_pwd_login").validate({
                submitHandler: function (form) {
                    var cusername = $("#cusername").val();
                    var cpwd = $("#cpwd").val();
                    $.ajax({
                        type: "POST",
                        url: "${pageContext.request.contextPath }/ajaxValidateUnamePwd",
                        data: {cusername: cusername, cpwd: cpwd},
                        async: false,
                        success: function (result) {
                            if (result == "0") {
                                $("#nouser").show();
                                return false;
                            } else if (result == "1") {
                                $("#falsepwd").show();
                                return false;
                            } else if (result == "2") {
                                alert("登陆成功");
                                return false;
                                //form.submit();
                            }
                        }
                    });
                },
                errorElement: 'div',
                errorPlacement: function (error, element) {
                    error.addClass('tooltip tooltip-inner');
                    element.after(error);
                    var pos = $.extend({}, element.offset(), {
                            width: element.outerWidth()
                            , height: element.outerHeight()
                        }),
                        actualWidth = error.outerWidth(),
                        actualHeight = error.outerHeight();
                    error.css({display: 'block', opacity: '0.8', top: -20});
                },
                highlight: function (element, errorClass) {
                    //高亮显示
                    $(element).addClass(errorClass);
                    $(element).parents('li:first').children('label').addClass(errorClass);
                },
                unhighlight: function (element, errorClass) {
                    $(element).removeClass(errorClass);
                    $(element).parents('li:first').children('label').removeClass(errorClass);
                },
                excluded: [":disabled"],
                ignore: [],
                rules: {
                    cusername: {required: true},
                    cpwd: {required: true},
                },
                messages: {
                    cusername: {required: "请输入用户名"},
                    cpwd: {required: "请输入密码"},
                },
                //提交表单后，（第一个）未通过验证的表单获得焦点
                focusInvalid: true,
                //当未通过验证的元素获得焦点时，移除错误提示
                focusCleanup: false,
            })
        });
    </script>

    <style>
        .g-head {
            background-color: #fff;
            width: 100%;
            height: 79px;
        }

        .header_top {
            min-width: 1100px;
            padding: 0px 20px;
            margin: 0 auto;
            margin-left: 80px;
        }

        .g-logo {
            font-size: 20px;
            font-weight: bold;
        }

        .right_div {
            width: 490px;
            height: 520px;
            position: relative;
            float: right;
            right: 80px;
            background-image: url(${pageContext.request.contextPath }/dist/login/files/login_bg.png);
            background-size: 100% 100%;
            background-origin: inherit;
            background-repeat: no-repeat;
        }
    </style>
    <!--  checkbox样式js-->
    <script type="text/javascript">
        var result = true;

        function checkbox() {
            var element = document.getElementById('checklabel');
            if (result == true) {
                element.src = "${pageContext.request.contextPath }/dist/login/images/selector_focus.png";
                result = false;
            }
            else if (result == false) {
                element.src = "${pageContext.request.contextPath }/dist/login/images/selector_default.png"
                result = true;
            }
        }
    </script>
</head>
<body class="media_screen_1200">
<div class="g-head">
    <div class="header_top">
        <div class="g-search f-cb"><a class="g-logo" href="" style="float:left;"><img
                src="${pageContext.request.contextPath }/dist/login/images/logo.png">登录</a></div>

    </div>
</div>
<div class="content clearfix" style="margin-top:3%;">
    <div class="lg_left" style="width:467px;background-color:#fff;margin-left:80px">
        <div style="margin: 0px">
            <div class="slides-box">
                <ul class="slides">
                    <li style="background: url('${pageContext.request.contextPath }/dist/login/images/1.png') center"></li>
                    <li style="background: url('${pageContext.request.contextPath }/dist/login/images/2.png') center"></li>
                    <li style="background: url('${pageContext.request.contextPath }/dist/login/images/3.png') center"></li>
                </ul>
            </div>
        </div>
    </div>
    <div class="right_div">
        <div class="lg_left ui-option-main-box" id="lg_content" style="float: right; margin: auto;  position: absolute;  top: 0; left: 0; bottom: 0; right: 0;height: 360px;
       border: 10px solid #fff;">
            <!-- 登录方式tab -->
            <div class="toggle-qrcode"></div>
            <div class="qrcode-wrapper hidden">
                <div class="toggle-regular"></div>
                <div class="scan-login" style="background:none">手机扫码 安全登录</div>
                <div id="qrcodeimg1"><span class="qrcode-logo"></span></div>
                <div class="scan-login3"><a class="regist" href="/register">免费注册</a></div>
                <div class="scan-login2"></div>
            </div>
            <div class="login_mod_tab">
                <div class="fl mod"><a class="lo_mod tab_on" lo-mod="normal" href="javascript:;" title="普通登入">普通登录</a>
                </div>
                <div class="fl mod"><a class="eb_mod" lo-mod="ebmod" href="javascript:;" title="手机免密码登入">手机无密码登录</a>
                </div>
            </div>
            <div id="signform" class="formbox">
                <p class="error_tip">登录名或密码错误</p>
                <div class="lg_form">
                    <!-- 正常登录 start -->
                    <form:form id="uname_pwd_login"
                               action="${pageContext.request.contextPath }/loginSccuess" method="post"
                               modelAttribute="ccuser">
                        <div class="mod_box lo_mod_box" data-isshow="0">
                            <div class="ui-sign-item ui-name-item lg_item lg_name">
                                <form:input type="text" maxlength="32" class="ui-input pwd_text" path="cusername"
                                            name="cusername" id="cusername" placeholder="用户名/邮箱/手机号"
                                            style="border-color:#dadada;text-indent: 4em;background: #fff url(${pageContext.request.contextPath }/dist/login/files/input_bg1.png) no-repeat !important;
        background-position: 0px -2px !important;" onfocus="hideu()"/>
                                <p id="nouser" style="display: none;">用户不存在</p>
                            </div>
                            <div class="ui-sign-item ui-name-item ui-sign-common-item lg_item lg_pass">
                                <form:input type="password" maxlength="32" class="ui-input pwd_text" path="cpwd"
                                            name="cpwd" id="cpwd" placeholder="密码"
                                            style="border-color:#dadada;text-indent: 4em;background: #fff url(${pageContext.request.contextPath }/dist/login/files/input_bg2.png) no-repeat !important;
        background-position: 0px -2px !important;" onfocus="hidep()"/>
                                <p id="falsepwd" style="display: none;">密码错误</p>
                            </div>
                            <div class="ui-sign-item" style="width:300px">
                                <label for="chkRememberPwd"><img
                                        src="${pageContext.request.contextPath }/dist/login/images/selector_default.png"
                                        width="28" height="28" style="margin-bottom: -8px;padding-right: 7px;"
                                        id="checklabel" onclick="checkbox()"/>下次自动登录</label>
                                <a class="findpwd" href="findpwd.html" style="float:right;margin-top: 5px;">忘记密码</a>
                            </div>
                            <div class="lg_login clearfix">
                                <!--                 <input type="submit" value="登录" class="sub">-->
                                <button type="submit" class="sub1">登录</button>

                            </div>
                        </div>
                    </form:form>
                    <!-- 正常登录 end -->
                    <!-- 无密码 start -->
                    <form action=""></form>
                    <div class="mod_box eb_mod_box" data-isshow="0">
                        <div class="ui-sign-item ui-name-item clearfix mb">
                            <input type="text" maxlength="32" class="ui-input short_text" name="tele" data-type="mobile"
                                   placeholder="手机号码"
                                   style="border-color:#dadada;text-indent: 4em;background: #fff url(${pageContext.request.contextPath }/dist/login/files/input_bg3.png) no-repeat !important;
                                           background-position: 0px -2px !important;
                                           ">
                        </div>
                        <!-- 动态密码输入 -->
                        <div class="ui-sign-item ui-sign-common-item lg_item lg_code">
                            <!-- 获取验证码按钮 -->
                            <div class="lg_item lg_getcode">
                                <input type="text" maxlength="32" class="ui-input pwd_text width_180" name="telcode"
                                       data-type="phonecode" placeholder="动态密码" style="">
                                <a href="javascript:;" class="get_tel_code" id="get_tel_code">获取动态密码</a></div>
                        </div>
                        <div class="lg_chk_item"></div>
                        <div class="lg_login clearfix">
                            <!--                 <input type="submit" value="登录" class="sub">-->
                            <a class="sub1" href="/login">登录</a>

                        </div>
                    </div>
                    </form>
                    <!-- 无密码 end -->
                    <input type="hidden" class="imgcheckstate">
                    <div id="_content"></div>
                    <input type="hidden" class="imgchecklevel">
                    <div id="appendchk"></div>
                    <%--<div class="lg_login clearfix">
                        <!--                 <input type="submit" value="登录" class="sub">-->
                        <a class="sub1" href="/login">登录</a>

                    </div>--%>
                    <div class="ot_login">
                        <div class="ot_btn clearfix"><a class="ui-ot-btn mr-42" href="javascript:;" data-type="qq"><img
                                src="${pageContext.request.contextPath }/dist/login/files/qq.png"></a> <a
                                class="ui-ot-btn mr-42" href="javascript:;" data-type="weixin"><img
                                src="${pageContext.request.contextPath }/dist/login/files/wechat.png"></a> <a
                                class="ui-ot-btn mr-42" href="javascript:;" data-type="sina"><img
                                src="${pageContext.request.contextPath }/dist/login/files/weibo.png"></a> <a
                                class="ui-ot-btn" href="javascript:;" data-type="sina"><img
                                src="${pageContext.request.contextPath }/dist/login/files/phone.png"></a></div>
                    </div>
                    <div class="lg_reg"><a class="regist" href="/register">免费注册</a></div>
                    <input type="hidden" value="" id="imgcheckvalue">
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>
