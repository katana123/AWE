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

    <script type="text/javascript"
            src="${pageContext.request.contextPath }/dist/common/js/jquery-3.3.1.min.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath }/dist/common/js/jquery.validate.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/dist/common/js/messages_zh.min.js"></script>
    <script type="text/javascript">

        var countdown = 60;

        function settime(val) {
            if (countdown == 0) {
                val.removeAttribute("disabled");
                val.innerHTML = "获取邮件校验码";
                countdown = 60;

                return;
            } else {
                val.setAttribute("disabled", true);
                val.innerHTML = "(" + countdown + "秒后)重新获取验证码";
                countdown--;
            }
            setTimeout(function () {
                settime(val)
            }, 1000)
        }

        $(function () {
            $("#J_GetCode").click(function () {
                var email = $("#J_Email").val();
                email = $.trim(email);
                var regEmail = /^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$/;

                if (regEmail.test(email)) {
                    settime(this);
                    var url = "${pageContext.request.contextPath }/ajaxSendEmailVerify";
                    var args = {"email": email, "date": new Date()};
                    $.post(url, args, function (data) {
                        var i = parseInt(data);
                        var regPos = /^\+?[1-9][0-9]*$/;　　//判断是否为正整数
                        if (regPos.test(i)) {
                            $("#checkcode").val(data);
                            $("#explain_text").attr("style", "display:block");
                        } else {
                            alert(data);
                        }
                    });
                } else {
                    alert("请输入正确的邮箱地址");
                    $("#J_Email").focus();
                }
            });

            $("#J_Form").validate({
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
                    error.css({display: 'block', opacity: '0.8', top: pos.top - actualHeight - 2, left: pos.left});
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
                    cemail: {required: true},
                    E_code: {
                        required: true,
                        equalTo: "#checkcode"
                    }
                },
                messages: {
                    cemail: {required: "请输入邮箱"},
                    E_code: {required: "请输入邮箱校验码", equalTo: "手机验证码有误"},
                },
                //提交表单后，（第一个）未通过验证的表单获得焦点
                focusInvalid: true,
                //当未通过验证的元素获得焦点时，移除错误提示
                focusCleanup: false,
            })
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
                        <img src="${pageContext.request.contextPath }/dist/register/img/1.png" width="50px"/> <span
                            class="ui-step-text">验证身份</span></div>
                </li>
                <li class="ui-step-active">
                    <div class="ui-step-line">-</div>
                    <div class="ui-step-icon">
                        <img src="${pageContext.request.contextPath }/dist/register/img/2.png" width="50px"/> <span
                            class="ui-step-text" style="left: -70px;">修改安全邮箱</span></div>
                </li>
                <li class="ui-step-end">
                    <div class="ui-step-line">-</div>
                    <div class="ui-step-icon">
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
                           modelAttribute="ccuser">
                    <div class="ui-form-item">
                        <label class="ui-label"> 登录名: </label>
                        <p class="ui-form-text">${ccuser.cusername}</p>
                    </div>
                    <div class="ui-form-item">
                        <label class="ui-label"> 邮箱： </label>
                        <input class="ui-input" type="text" maxlength="128" name="cemail" id="J_Email" value=""
                               data-explain=""
                               autocomplete="off" data-widget-cid="widget-2"/>
                        <div class="ui-form-explain"></div>
                    </div>
                    <div class="ui-form-item ui-tiptext-success">
                        <button id="J_GetCode" class="ui-button ui-button-mwhite" type="button">
                            获取邮件校验码
                        </button>
                            <%--<button class="ui-button ui-button-mdisable" id="J_GetCode" type="button" data-widget-cid="widget-5" disabled="">(30秒后)重新获取验证码</button>--%>
                        <div class="ui-form-explain" id="explain_text" style="display: none;"><i
                                class="ui-tiptext-icon iconfont"></i>校验码已发送到你的邮箱，15分钟内输入有效，请勿泄露于他人
                        </div>
                    </div>
                    <div class="ui-form-item">
                        <label class="ui-label"> 验证码: </label>
                        <input name="E_code" id="J_Checkcode" class="ui-input ui-input-checkcode" type="text"
                               maxlength="6" placeholder=" 6位数字 " value="" data-explain="" data-widget-cid="widget-3">
                        <input type="hidden" id="checkcode"/>
                    </div>
                    <div class="ui-form-item">
                        <button type="submit" class="ui-button ui-button-lorange">提交</button>
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
