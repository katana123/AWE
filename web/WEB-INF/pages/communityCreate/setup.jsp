<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<jsp:include page="header.jsp" flush="true"/>

<div class="next-overlay-backdrop" id="cover" style="display:none"></div>
<div class="next-dialog right next-overlay-inner animated zoomIn mobile-check-dialog"
     style="width: 480px; left: 400px; top:180px;z-index: 100;background-color: #fff;border:1px solid rgb(237, 233, 233); position: absolute; display:none;"
     id="dialog_up"></div>
<div class="wrapper" style="overflow: hidden;">
    <div class="container">
        <div class="container-title">
            <div class="section-title">创建社团</div>
            <p style="border-bottom: 2px solid #28c2f5;">CREATE STUDY CENTER</p>
        </div>
        <ol class="ui-step ui-step-3" style="overflow: visible">
            <li class="ui-step-start ui-step-active" id="stepstart">
                <div class="ui-step-line">-</div>
                <div class="ui-step-icon">
                    <!--
                    <i class="iconfont">y</i>
                    <i class="ui-step-number">1</i>
        -->
                    <img src="${pageContext.request.contextPath }/dist/communityCreate/images/1.png" width="50px">
                    <span class="ui-step-text">创建学社</span></div>
            </li>
            <li class="">
                <div class="ui-step-line">-</div>
                <div class="ui-step-icon">
                    <!--
                        <i class="iconfont">y</i>
                        <i class="ui-step-number">2</i>
        -->
                    <img src="${pageContext.request.contextPath }/dist/communityCreate/images/2.png" width="50px">
                    <span class="ui-step-text" style="left: -70px;">学社审核</span>
                </div>
            </li>
            <li class="ui-step-end">
                <div class="ui-step-line">-</div>
                <div class="ui-step-icon">
                    <!--
                    <i class="iconfont">y</i>
                    <i class="iconfont ui-step-number"></i>
        -->
                    <img src="${pageContext.request.contextPath }/dist/communityCreate/images/3.png" width="50px">
                    <span class="ui-step-text">创建完成</span>
                </div>
            </li>
        </ol>
        <div class="cont-l" style="margin-top:50px;">

            <!--                <p class="singletitle-nav"><i></i>创建社团</p>            -->


            <div class=" create_league">
                <!-- <div class="panel st-info"> -->

                <form:form class="next-form next-form-left ver next-form-large" id="check_form"
                           enctype="multipart/form-data"
                           action="${pageContext.request.contextPath }/createSetup" method="post"
                           modelAttribute="ccinfo">
                    <form:input type="hidden" path="cuid" id="ccuid" value="${cookie.userid.value }"/>
                    <div class="create-form">
                        <div class="create-form-item clearfix">
                            <div class="name fl">
                                学社名称：
                            </div>
                            <div class="create-form-con fl">
                                <form:input placeholder="名称最多15个汉字，创建后名称不可修改" type="text"
                                            path="ccname" id="ccname" class="width3" value=""/>
                                <span id="checkname" style="color:red;"></span>

                            </div>
                        </div>

                        <div class="create-form-item clearfix por10">
                            <div class="name fl">
                                行业方向：
                            </div>
                            <div class="create-form-con fl form-li">
                                <div class="form-c">
                                    <form:select class="m-select" path="ccl" id="CCl" name="CCl">
                                        <option value="1">
                                            语言
                                        </option>
                                    </form:select>
                                    <span id="checkccl" style="color:red;"></span>
                                </div>
                            </div>
                        </div>


                        <div class="create-form-item clearfix por9 ">
                            <div class="name fl">
                                学社类型：
                            </div>
                            <div class="create-form-con fl form-li">
                                <div class="form-c">
                                    <form:select class="m-select" path="ccp" id="CCp" name="CCp">
                                        <option value="1">
                                            开放加入
                                        </option>
                                    </form:select>
                                    <span id="checkccp" style="color:red;"></span>
                                </div>
                            </div>
                        </div>
                        <!--
                                            <div class="create-form-item clearfix hint hide">
                                                <div class="name fl">
                                                    申请提示：
                                                </div>
                                                <div class="create-form-con fl">
                                                    <input type="text" maxlength="140" class="width2" placeholder="描述最多140个汉字，非必填" id="applyHint" name="leagueTag" value="">
                                                </div>
                                            </div>

                        -->
                        <div class="create-form-item clearfix">
                            <div class="name fl">
                                图标：
                            </div>
                            <div class="create-form-con fl">
                                <div class="upload_out">
                                    <div class="file-set">
                                        <!--<form method="POST" class="upload_form" name="upload_file_form"
                                              style="position:relative;height:40px;" action="" target="">-->
                                        <!--<input type="file" class="input-file" id="CClpa" name="CClpa" value="选择图片">-->
                                        <input type="file" name="CClpa" id="CClpa"
                                               onchange="preImg(this.id,'imgPre');"
                                               class="input-file"/>
                                        <!--</form>-->
                                        <div class="btn-upload" id="uploadbutton">上传图标</div>
                                        <span id="checkcclpa" style="color:red;"></span>
                                    </div>
                                </div>
                                <span class="grey" style="position: absolute;margin: -33px 0 0 174px;">你可以上传一个 180*180 大小的图片作为社团图标。</span>
                                <!-- <div class="input_file_uploaded_img">
                                <img src="" id="upImg" style="display:block;height: 180px;" class="upload-img">-->

                                <img id="imgPre" src="" width="180px" height="180px" style="display: none;"/>
                                <!-- </div> -->
                            </div>
                        </div>


                        <div class="create-form-item clearfix hint hide">
                            <div class="name fl">
                                验证：
                            </div>
                            <div class="create-form-con fl">
                                <input id="drag1" type="hidden" value="0"/>
                                <div id="drag">

                                    <div class="handler handler_bg"></div>
                                </div>
                                <span id="checkdrag" style="color:red;"></span>
                                <script type="text/javascript">
                                    $('#drag').drag();

                                </script>


                            </div>
                        </div>
                        <div class="create-form-item clearfix">
                            <div class="create-form-con fl">
                                <div class="check">
                                    <input type="checkbox" id="cbAgree" name="cbAgree" checked="checked">已阅读并同意
                                    <a href="" target="_blank" style="color: #47c8fb">AWE社团规范</a>

                                </div>
                            </div>
                        </div>
                        <div class="create-form-item clearfix">
                            <div class="create-form-con fl">
                                <button type="submit" id="formSubmit" class="btn btn-m btn-blue"
                                        style="border:none;width:120px;">创建社团
                                </button>
                            </div>
                        </div>

                    </div>
                </form:form>
            </div>
        </div>
    </div>
</div>
<!--<form method="post" action="${pageContext.request.contextPath}/addpic" enctype="multipart/form-data">
<input type="file" name="file" value="file">
<input type="submit" value="确定">
</form>-->
<script type="text/javascript">
    /**
     * 从 file 域获取 本地图片 url
     */
    function getFileUrl(sourceId) {
        var url;
        if (navigator.userAgent.indexOf("MSIE") >= 1) { // IE
            url = document.getElementById(sourceId).value;
        } else if (navigator.userAgent.indexOf("Firefox") > 0) { // Firefox
            url = window.URL.createObjectURL(document.getElementById(sourceId).files.item(0));
        } else if (navigator.userAgent.indexOf("Chrome") > 0) { // Chrome
            url = window.URL.createObjectURL(document.getElementById(sourceId).files.item(0));
        }
        return url;
    }

    /**
     * 将本地图片 显示到浏览器上
     */
    function preImg(sourceId, targetId) {
        var url = getFileUrl(sourceId);
        var imgPre = document.getElementById(targetId);
        imgPre.style.display = "block";
        imgPre.src = url;
    }
</script>
<script type="text/javascript">
    // 点击按钮的时候选择图片
    $("#uploadbutton").click(function () {
        $("#CClpa").click();
    });

</script>
<script type="text/javascript">

    $(document).ready(function () {

        $("#ccname").blur(function () {
            //$("#checkname").text("");
            var val = $("#ccname").val();
            var len = 0;
            for (var i = 0; i < val.length; i++) {
                var a = val.charAt(i);
                if (a.match(/[^\x00-\xff]/ig) != null) {
                    len += 2;
                }
                else {
                    len += 1;
                }
            }
            if (len == 0) {
                $("#checkname").text("名称不能为空");
            }
            else if (len > 30) {
                $("#checkname").text("名称最多15个汉字,请修改");
            } else {
                $.post("${pageContext.request.contextPath }/ajaxValidateCcname",
                    {nick: $("#ccname").val()},
                    function (data) {
                        if (data) {
                            $("#checkname").text("");
                        } else {
                            $("#checkname").text("有相同名称,请修改");
                        }
                    });
            }

        });
        $("#formSubmit").click(function () {
            if ($("#checkname").text() != '') {
                return false
            } else if ($("#ccname").val() == '') {
                $("#checkname").text("请填写名称");
                return false
            } else if ($("#CCl").val() == 0) {
                $("#checkccl").text("请选择行业方向");
                return false
            } else if ($("#CCp").val() == 0) {
                $("#checkccp").text("请选择学社类型");
                return false
            } else if ($("#CClpa").val() == '') {
                $("#checkcclpa").text("请选择图片");
                return false
            } else if ($("#drag1").val() == 0) {
                $("#checkdrag").text("请拖动滑块验证");
                return false
            } else if ($("#ccuid").val() == 0) {

                return false
            }

        });
    });
</script>

<jsp:include page="footer.jsp" flush="true"/>