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
<html xmlns="http://www.w3.org/1999/xhtml"><head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/dist/register/css/register_aliyun.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/dist/register/css/reg_check.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/dist/register/css/drag.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/dist/register/css/index.css">

    <script src="${pageContext.request.contextPath }/dist/register/js/jquery.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/dist/register/js/drag.js"></script>

    <script type="text/javascript">
        function show_dialog(){
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
        function close_dialog(){
            var d = document.getElementById("dialog_up");
            var c = document.getElementById("cover");
            d.style.display = "none";
            c.style.display = "none";
        }

        $(function(){
            $("#J_Nick").change(function(){
                var val = $(this).val();
                val = $.trim(val);
                $(this).val(val);

                var url = "${pageContext.request.contextPath }/ajaxValidateCusername";
                var args = {"cuserName":val,"date":new Date()};

                $.post(url, args, function(data){
                    if(data == "0"){
                        $("#J_NickSuggest").html("<span style='color: green;'>用户名可用</span>") ;
                    }else if(data == "1"){
                        $("#J_NickSuggest").html("<span style='color: red;'>用户名不可用</span>") ;
                    }else{
                        $("#J_NickSuggest").html("<span style='color: red;'>网络或程序出错</span>") ;
                    }
                });
            });


            $("#J_RePassword").change(function(){
                var psw = $("#J_Password").val();
                var re_psw = $("#J_RePassword").val();

                if( psw != re_psw ){
                    $("#r_password").html("<span style='color: red;'>两次填写的密码不一致</span>") ;
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
            <div class="header-logo"> <a href="" class="logo"></a><span class="logo-title">账号注册</span> </div>
            <div class="header-nav">
                <ul class="">
                    <li class="nav-1 header-nav-li"><a href="../学社首页/学社首页.htm">首&nbsp;&nbsp;页</a></li>
                    <li class="nav-4 header-nav-li"><a href="">帮助中心</a>  </li>
                    <li class="nav-5 header-nav-li"><a href="">关于我们</a>  </li>
                </ul>
            </div>
        </div>
    </div>

</div>

<div class="content"> <span class="login-tip"> 如有帐号可直接登录， <a href="../登录/登录.html"> 立即登录 </a></span>
    <div class="next-dialog right next-overlay-inner animated zoomIn mobile-check-dialog" role="dialog" aria-labelledby="dialog-header-3" style="width: 480px; left: 400px; top:180px;z-index: 100;      background-color: #fff;border:1px solid rgb(237, 233, 233); position: absolute; display:none;" id="dialog_up">
        <div prefix="next-" id="dialog-header-3" class="next-dialog-header">验证手机</div>
        <div prefix="next-" id="dialog-body-4" class="next-dialog-body">
            <form:form class="next-form next-form-left ver next-form-large" action="${pageContext.request.contextPath }/register_add" method="post" modelAttribute="ccuser">
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
                <div class="next-form-item next-row" label="校验码:" required="">
                    <label required="" class="next-col-fixed-5 next-form-item-label">校验码:</label>
                    <div class="next-col-18 next-form-item-control">
                        <div class="next-row">
                            <div class="next-col next-col-12">
                                <div class="next-form-item next-row" style="margin-right: 10px;">
                                    <div class=" next-form-item-control"><span class="next-input next-input-single next-input-large" style="width: 160px;">
                  <input type="text" data-meta="Field" id="code" placeholder="请输入校验码" value="" maxlength="6" height="100%">
                  </span>
                                        <div class="next-form-item-explain"><span class="code-send-tip">请输入您的手机收到的验证码</span></div>
                                    </div>
                                </div>
                            </div>
                            <div class="next-col next-col-12">
                                <div class="next-form-item next-row">
                                    <div class=" next-form-item-control">
                                        <button type="button" class="next-btn next-btn-primary next-btn-large" disabled="">
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
        <a href="javascript:;" class="next-dialog-close" onclick="close_dialog()">x<i class="next-icon next-icon-close next-icon-small"></i></a>
    </div>


    <div class="form-list form-main-list">

        <div class="form-group account-set">
            <div class="form-item"> <span class="form-label form-label-b form-label_title">账户设置</span> <span class="sub-title form-label_title">请设置你的会员名和密码用于登录</span> </div>
            <div class="form-item"> <span class="form-label"><span class="star">*</span>会员名</span>
                <input autocomplete="off" class="form-text" id="J_Nick" name="nick" type="text" value="" placeholder="设置会员名">
                <div class="nick-suggest-container">
                    <div class="nick-suggest" id="J_NickSuggest"></div>
                </div>
                <div class="nick-size" id="J_NickSize" style="visibility: hidden;">{size} <span class="tsl" data-phase-id="r_ui_nickCountTip">字符</span></div>
            </div>
            <div class="form-item"> <span class="form-label tsl" data-phase-id="r_p_password"><span class="star">*</span>登录密码</span>
                <input class="form-text" id="J_Password" type="password" placeholder="设置你的登录密码" name="password" value="" data-inner_placeholder="r_p_input_enterPassword">
            </div>
            <div class="form-item"> <span class="form-label tsl" data-phase-id="r_p_confirmPassword"><span class="star">*</span>密码确认</span>
                <input class="form-text" id="J_RePassword" type="password" placeholder="请再次输入你的密码" value="" data-inner_placeholder="r_p_input_reEnterPassword" data-outer_placeholder="r_p_input_reEnterPwd">
                <div class="nick-suggest-container">
                    <div class="nick-suggest" id="r_password"></div>
                </div>
            </div>
        </div>
        <div class="form-group basic-info">
            <div class="form-item"> <span class="form-label form-label-b form-label_title">基本信息</span> <span class="sub-title form-label_title">请输入真实的信息</span> </div>
            <div class="form-item"> <span class="form-label"><span class="star">*</span>手机号</span>
                <div class="mobile-text"> <span class="mobile-text-code" id="J_AreaCode">+86</span>

                    <input class="form-text mobile-text-input" maxlength="20" name="mobile" id="J_Mobile" data-pattern="^(86){0,1}1\d{10}$" type="text" value="" data-inner_placeholder="r_p_input_inner_entermobile" placeholder="请输入手机号码">
                </div>
            </div>
            <div class="form-item"> <span class="form-label tsl" data-phase-id="r_p_noCaptcha"> <span class="star">*</span>验证</span>
                <div id="drag">

                    <div class="handler handler_bg"></div></div>
                <script type="text/javascript">
                    $('#drag').drag();
                </script>

            </div>

            <div id="register_no_captcha" class="nc-container" data-nc-idx="1">
                <div class="form-item">

                    <div class="agreement-content">
                        <div id="J_CnAgreement" style="float: left;
    margin-left: 70px;"> <span class="tsl"><input class="form-checkbox" type="checkbox" checked="" name="" id="J_Agreement" style="float: left;margin-top: 10px;"/>我同意:<a href="" target="_blank">《AWE服务条款》</a></span> </div>
                    </div>
                </div>
                <div class="form-item form-item-short">
                    <button type="submit" class="btn btn-large tsl" style="float: left;
    margin-left: 70px;" onclick="show_dialog()">确认</button>
                </div>
            </div>
        </div>
    </div>
</div>



</body>
</html>
