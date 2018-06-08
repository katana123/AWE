<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="header.jsp" flush="true"/>

<div class="wrapper" style="overflow: hidden;">
    <div class="container">
        <div class="container-title">
            <div class="section-title">学社审核</div>

            <p style="border-bottom: 2px solid #28c2f5;">STUDY CENTER AUDITING</p>
        </div>
        <ol class="ui-step ui-step-3" style="overflow: visible">
            <li class="ui-step-start ui-step-active" id="stepstart">
                <div class="ui-step-line">-</div>
                <div class="ui-step-icon">
                    <!--
                    <i class="iconfont">y</i>
                    <i class="ui-step-number">1</i>
        -->
                    <img src="${pageContext.request.contextPath }/dist/communityCreate/images/1.png" width="50px"> <span
                        class="ui-step-text">创建学社</span></div>
            </li>
            <li class="ui-step-active">
                <div class="ui-step-line">-</div>
                <div class="ui-step-icon">
                    <img src="${pageContext.request.contextPath }/dist/communityCreate/images/2.png" width="50px"> <span
                        class="ui-step-text" style="left: -70px;">学社审核</span>
                </div>
            </li>
            <li class="ui-step-end">
                <div class="ui-step-line">-</div>
                <div class="ui-step-icon">
                    <img src="${pageContext.request.contextPath }/dist/communityCreate/images/3.png" width="50px"> <span
                        class="ui-step-text">创建完成</span></div>
            </li>
        </ol>
        <div class="cont-l" style="margin-top:50px;">
            <div class=" create_league">
                <!-- <div class="panel st-info"> -->
                <div class="create-form">
                    <div class="create-form-item clearfix">
                        <div class="name fl">
                            <!--                                   <input type="checkbox">-->
                            <img id="person"
                                 src="${pageContext.request.contextPath }/dist/communityCreate/images/checked.jpg"
                                 style="margin-top: -8px;"/>
                        </div>
                        <div class="create-form-con fl"> &nbsp;普通学社</div>
                    </div>
                    <div class="create-form-item clearfix">
                        <div class="name fl"></div>
                        <div class="create-form-con fl">
                            <div style="width: 100%;height:150px;background: #fff;color: #000;padding: 40px">
                                <p style="font-size: 20px;">恭喜您已创建普通用户学社，AWE欢迎您！</p>
                                <p style="line-height: 20px;;padding-top: 30px;">
                                    为了营造绿色的网络环境，让我们一起携手合作，打造出一个优秀的学习平台，相互学习；共同进步！所谓梦想，是永不停息的疯狂，可怕的是，比你优秀的人比你还要努力。</p>
                                <div style="float: left;padding-top: 30px;">
                                    <form action="personcomplete" method="post" modelAttribute="ccinfo">
                                        <span style="float: left">&gt;&gt;仅差一步之遥</span>

                                        <input type="hidden" name="ccname" value="${ccname}"/>
                                        <button type="submit" id="fSubmit" class="btn btn-m btn-blue"
                                                style="float: left;   margin:10px; margin-top: -10px;border:none;width:120px;">
                                            进入下一步
                                        </button>


                                        <span style="color: green" style="float: left">绿色网络，从我做起，亲们加油！！！</span>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="create-form-item clearfix por10">
                        <div class="name fl">
                            <!--                                    <input type="checkbox">-->
                            <img id="inst"
                                 src="${pageContext.request.contextPath }/dist/communityCreate/images/checked_grey.jpg"
                                 style="margin-top: -8px;"/>
                        </div>
                        <div class="create-form-con fl form-li">
                            <div class="form-c"> &nbsp;机构/老师学社</div>
                        </div>
                    </div>
                    <div class="create-form-item clearfix">
                        <div class="name fl">
                            *公司/教师名称：
                        </div>
                        <div class="create-form-con fl">
                            <input placeholder="请填写公司或者教师名称，最多15个汉字，创建后名称不可修改" type="text" id="instName"
                                   class="width3" name="instName" value="">
                            <span id="checkname" style="color:red;"></span>
                            <input id="IsRepeatName" type="hidden" value="${ccname}">
                        </div>
                    </div>
                    <div class="create-form-item clearfix" style="margin-top:0px">
                        <div class="name fl">

                        </div>
                        <div class="create-form-con fl">

                            <div style="width: 200px;float:left"><input type="radio" name="d_type" checked
                                                                        style="margin-bottom: 10px"/>我的营业执照<br> <img
                                    src="${pageContext.request.contextPath }/dist/communityCreate/images/add.jpg"/>
                            </div>
                            <div><input type="radio" name="d_type" style="margin-bottom: 10px"/>教师资格证书<br>
                                <p>公司请上传有年检的营业执照副本扫描件</p>
                                <p>教师请上传教师资格证书</p>
                                <p style="padding-top: 20px;">文件小于2M</p>
                                <p>支持JPG/PNG/BMP等格式图片</p>
                            </div>
                        </div>
                    </div>
                    <div class="create-form-item clearfix">
                        <div class="name fl">
                            *身份证号：
                        </div>
                        <div class="create-form-con fl">
                            <input placeholder="请输入身份证号码" type="text" id="leagueName" class="width3" name="leagueName"
                                   value="">
                            <input id="hid_IsRepeatName" type="hidden" value="0">
                        </div>
                    </div>
                    <div class="create-form-item clearfix">
                        <div class="name fl">

                        </div>
                        <div class="create-form-con fl">
                            <div style="width: 200px;float:left">*身份证正反两面扫描件<br> <img
                                    src="${pageContext.request.contextPath }/dist/communityCreate/images/add.jpg"/>
                            </div>
                            <div><br>

                                <p style="padding-top: 20px;">文件小于2M</p>
                                <p>支持JPG/PNG/BMP等格式图片</p>
                            </div>
                        </div>
                    </div>
                    <!--
                                         <div class="create-form-item clearfix">
                                            <div class="name fl">
                                                学社名称：
                                            </div>
                                            <div class="create-form-con fl">
                                                <input placeholder="名称最多15个汉字，创建后名称不可修改" type="text" id="leagueName" class="width3" name="leagueName" value="">
                                                <input id="hid_IsRepeatName" type="hidden" value="0">
                                            </div>
                                        </div>
                    -->
                    <div class="create-form-item clearfix">
                        <div class="create-form-con fl">
                            <div class="check">
                                <input type="checkbox" id="cbAgree" checked="checked"/>已阅读并同意
                                <a href="" target="_blank" style="color: #47c8fb">AWE社团规范</a>

                            </div>
                        </div>
                    </div>

                    <div class="create-form-item clearfix">
                        <div class="create-form-con fl">
                            <a href="complete.jsp" id="formSubmit" class="btn btn-m btn-blue">下一步</a>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>

<jsp:include page="footer.jsp" flush="true"/>
<script>
    $(document).ready(function () {
        $("#person").click(function () {
            document.getElementById('person').src = '${pageContext.request.contextPath }/dist/communityCreate/images/checked.jpg';
            //or $('#id').attr('src','a.png');
            document.getElementById('inst').src = '${pageContext.request.contextPath }/dist/communityCreate/images/checked_grey.jpg';
            //or $('#id').attr('src','b.png');

        });

        $("#inst").click(function () {
            document.getElementById('person').src = '${pageContext.request.contextPath }/dist/communityCreate/images/checked_grey.jpg';
            //or $('#id').attr('src','a.png');
            document.getElementById('inst').src = '${pageContext.request.contextPath }/dist/communityCreate/images/checked.jpg';
            //or $('#id').attr('src','b.png');

        })
    })
</script>
<script type="text/javascript">

    $(document).ready(function () {

        $("#instName").blur(function () {
            //$("#checkname").text("");
            var val = $("#instName").val();
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
                $("#checkname").text("");
                /*$.post("ajaxInstCccname",
                    {nick: $("#instName").val()},
                    function (data) {
                        if (data) {
                            $("#checkname").text("");
                        } else {
                            $("#checkname").text("有相同名称,请修改");
                        }
                    });*/
            }

        });
    })
</script>