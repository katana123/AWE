<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/5/7
  Time: 14:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/dist/register/css/register_aliyun.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/dist/register/css/reg_check.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/dist/register/css/index.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/dist/common/css/site-demos.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/dist/common/css/verify.css"/>

    <script type="text/javascript"
            src="${pageContext.request.contextPath }/dist/common/js/jquery-3.3.1.min.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath }/dist/common/js/jquery.validate.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/dist/common/js/messages_zh.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/dist/common/js/verify.min.js"></script>

    <script type="text/javascript">

        function validate_form(thisform) {
            return false;
        }

        function show_dialog() {
            var uname = $("#J_Nick").val();
            var psw = $("#J_Password").val();
            var pn = $("#J_Mobile").val();

            var cusername = $("#cusername").val(uname);
            var cpwd = $("#cpwd").val(psw);
            var cupn = $("#cupn").val(pn);
            var phone = $("#phone").html(pn);

            var d = document.getElementById("dialog_up");
            var c = document.getElementById("cover");
            d.style.display = "block";
            c.style.display = "block";
        }

        function close_dialog() {
            var d = document.getElementById("dialog_up");
            var c = document.getElementById("cover");
            d.style.display = "none";
            c.style.display = "none";
        }

        $(function () {

            $("#basic_info").validate({
                submitHandler: function (form) {
                    show_dialog();
                    form.submit();
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
                    nick: {
                        required: true,
                        checkPwd: true,
                        remote: {                                          //验证用户名是否存在
                            type: "POST",
                            url: "${pageContext.request.contextPath }/ajaxValidateCusername",             //servlet
                            data: {
                                nick: function () {
                                    return $("#J_Nick").val();
                                }
                            }
                        }
                    },
                    password: {required: true, checkPwd: true},
                    r_password: {required: true, equalTo: "#J_Password"},
                    mobile: {required: true, mobile: true},
                    drag: {checkDrag: true},
                    servebox: {required: true}
                },
                messages: {
                    nick: {required: "请输入会员名", remote: "用户名已经被注册"},
                    password: {required: "请输入密码"},
                    r_password: {required: "请再次输入密码", equalTo: "两次输入密码不一致"},
                    mobile: {required: "请输入手机"},
                    servebox: {required: "请勾选服务条款"}
                },
                //提交表单后，（第一个）未通过验证的表单获得焦点
                focusInvalid: true,
                //当未通过验证的元素获得焦点时，移除错误提示
                focusCleanup: true,
            });

            $.validator.addMethod("checkPwd", function (value, element, params) {
                var checkPwd = /^[a-zA-Z]\w{5,17}$/;
                return this.optional(element) || (checkPwd.test(value));
            }, "以字母开头，长度在6~18之间，只能包含字母、数字和下划线！");

            $.validator.addMethod("mobile", function (value, element) {
                var length = value.length;
                var mobile = /^[1][3,4,5,7,8][0-9]{9}$/;
                return this.optional(element) || (length == 11 && mobile.test(value));
            }, "手机号码格式错误");

            $.validator.addMethod("checkDrag", function () {
                var returnVal = false;
                var drag_text = $("#drag").val();
                if (drag_text == 1) {
                    returnVal = true;
                }
                return returnVal;
            }, "请拖动滑块验证！");

            $('#mpanel1').slideVerify({
                type: 1,		//类型
                vOffset: 5,	//误差量，根据需求自行调整
                barSize: {
                    width: '269px',
                    height: '35px',
                },
                ready: function () {
                },
                success: function () {
                    //alert('验证成功，添加你自己的代码！');
                    var drag_text = $("#drag").val(1);
                    $("#drag").blur();
                },
                error: function () {
                    //alert('验证失败！');
                }
            });
        });
    </script>
</head>
<body>
<div class="next-overlay-backdrop" id="cover" style="display:none"></div>
<div class="header-fix">
    <div class="header">
        <div class="auto">
            <div class="header-logo"><a href="" class="logo"></a><span class="logo-title">账号注册</span></div>
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

<div class="content"><span class="login-tip"> 如有帐号可直接登录， <a href="../登录/登录.html"> 立即登录 </a></span>
    <div class="next-dialog right next-overlay-inner animated zoomIn mobile-check-dialog"
         style="width: 480px; left: 400px; top:180px;z-index: 100;      background-color: #fff;border:1px solid rgb(237, 233, 233); position: absolute; display:none;"
         id="dialog_up">
        <div prefix="next-" id="dialog-header-3" class="next-dialog-header">验证手机</div>
        <div prefix="next-" id="dialog-body-4" class="next-dialog-body">
            <form:form class="next-form next-form-left ver next-form-large"
                       action="${pageContext.request.contextPath }/register_add" method="post" modelAttribute="ccuser">
                <form:hidden path="cusername" id="cusername"/>
                <form:hidden path="cpwd" id="cpwd"/>
                <form:hidden path="cupn" id="cupn"/>
                <div class="next-form-item next-row" label="手机号:">
                    <label class="next-col-fixed-5 next-form-item-label tel">手机号:</label>
                    <div class="next-col-18 next-form-item-control">
                        <p class="next-form-text-align" id="phone"></p>
                        <div class=""></div>
                    </div>
                </div>
                <div class="next-form-item next-row">
                    <label class="next-col-fixed-5 next-form-item-label">校验码:</label>
                    <div class="next-col-18 next-form-item-control">
                        <div class="next-row">
                            <div class="next-col next-col-12">
                                <div class="next-form-item next-row" style="margin-right: 10px;">
                                    <div class=" next-form-item-control"><span
                                            class="next-input next-input-single next-input-large" style="width: 160px;">
                  <input type="text" data-meta="Field" id="code" placeholder="请输入校验码" value="" maxlength="6"
                         height="100%">
                  </span>
                                        <div class="next-form-item-explain"><span
                                                class="code-send-tip">请输入您的手机收到的验证码</span></div>
                                    </div>
                                </div>
                            </div>
                            <div class="next-col next-col-12">
                                <div class="next-form-item next-row">
                                    <div class=" next-form-item-control">
                                        <button type="button" class="next-btn next-btn-primary next-btn-large"
                                                disabled="">
                                            重发(41 s)
                                        </button>
                                        <div class=""></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class=""></div>
                    </div>
                </div>
                <div class="next-form-item next-row" label="">
                    <label class="next-col-fixed-5 next-form-item-label"></label>
                    <div class="next-col-18 next-form-item-control">
                        <input class="next-btn next-btn-primary next-btn-large" type="submit" value="提交"/>
                    </div>
                </div>
            </form:form>
        </div>
        <a href="javascript:" class="next-dialog-close" onclick="close_dialog()">x<i
                class="next-icon next-icon-close next-icon-small"></i></a>
    </div>


    <form class="form-list form-main-list" id="basic_info" action="" onsubmit="return validate_form(this)"
          method="post">

        <div class="form-group account-set">
            <div class="form-item"><span class="form-label form-label-b form-label_title">账户设置</span> <span
                    class="sub-title form-label_title">请设置你的会员名和密码用于登录</span></div>
            <div class="form-item"><span class="form-label"><span class="star">*</span>会员名</span>
                <input autocomplete="off" class="form-text" id="J_Nick" name="nick" type="text" value=""
                       placeholder="设置会员名">
            </div>
            <div class="form-item"><span class="form-label tsl"><span class="star">*</span>登录密码</span>
                <input class="form-text" id="J_Password" type="password" placeholder="设置你的登录密码" name="password"/>
            </div>
            <div class="form-item">
                <span class="form-label tsl"><span class="star">*</span>密码确认</span>
                <input class="form-text" id="J_RePassword" type="password" placeholder="请再次输入你的密码" name="r_password"/>
            </div>
        </div>

        <div class="form-group basic-info">

            <div class="form-item">
                <span class="form-label form-label-b form-label_title">基本信息</span>
                <span class="sub-title form-label_title">请输入真实的信息</span>
            </div>

            <div class="form-item">
                <span class="form-label">
                    <span class="star">*</span>手机号
                </span>
                <div class="mobile-text">
                    <span class="mobile-text-code" id="J_AreaCode">+86</span>
                    <input class="form-text mobile-text-input" name="mobile" id="J_Mobile" type="text"
                           placeholder="请输入手机号码">
                </div>
            </div>


            <div class="form-item">
                <span class="form-label tsl"> <span class="star">*</span>验证</span>
                <div id="mpanel1" style="float: right"></div>
                <input name="drag" id="drag" type="text" value="0"
                       style="height:0px;width:0px;padding:0px;margin:0px;border: none;"/>
            </div>

            <div class="form-item">
                <span class="form-label tsl"></span>
                <div id="J_CnAgreement" style="float: left;margin-left: 70px;">
                    <input class="form-checkbox" type="checkbox" checked="" name="servebox" id="J_Agreement"
                           style="float: left;margin-top: 10px;"/>
                    <span>我同意:<a href="">《AWE服务条款》</a></span>
                    <div style="clear: both"></div>
                </div>
            </div>

            <div id="register_no_captcha" class="nc-container">
                <div class="form-item form-item-short">
                    <button type="submit" class="btn btn-large tsl"
                            style="float: left;margin-left: 70px;cursor: pointer;">确认
                    </button>
                </div>
            </div>

        </div>
    </form>
</div>


</body>
</html>
