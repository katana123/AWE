<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="header.jsp" flush="true"/>


<div class="wrapper" style="overflow: hidden;">
    <div class="container">
        <div class="container-title">
            <div class="section-title">创建完成</div>
            <p style="border-bottom: 2px solid #28c2f5;">CREATE complete</p>
        </div>
        <ol class="ui-step ui-step-3" style="overflow: visible">
            <li class="ui-step-start ui-step-active" id="stepstart">
                <div class="ui-step-line">-</div>
                <div class="ui-step-icon">
                    <img src="${pageContext.request.contextPath }/dist/communityCreate/images/1.png" width="50px"> <span
                        class="ui-step-text">创建学社</span></div>
            </li>
            <li class="ui-step-active">
                <div class="ui-step-line">-</div>
                <div class="ui-step-icon">
                    <!--
                        <i class="iconfont">y</i>
                        <i class="ui-step-number">2</i>
        -->
                    <img src="${pageContext.request.contextPath }/dist/communityCreate/images/2.png" width="50px"> <span
                        class="ui-step-text" style="left: -70px;">学社审核</span></div>
            </li>
            <li class="ui-step-end ui-step-active">
                <div class="ui-step-line">-</div>
                <div class="ui-step-icon">
                    <!--
                    <i class="iconfont">y</i>
                    <i class="iconfont ui-step-number"></i>
        -->
                    <img src="${pageContext.request.contextPath }/dist/communityCreate/images/3.png" width="50px"> <span
                        class="ui-step-text">创建完成</span></div>
            </li>
        </ol>
        <div class="cont-l" style="margin-top:50px;">
            <!-- <p class="singletitle-nav"><i></i>创建社团</p>            -->
            <div class=" create_league">
                <!-- <div class="panel st-info"> -->
                <div class="create-form">
                    <div class="create-form-item clearfix">
                        <div class="name fl"></div>
                        <div class="create-form-con fl">
                            <div style="width: 100%;height:150px;background: #fff;color: #000;padding: 40px">
                                <p style="font-size: 20px;">恭喜您的学社已创建完成！</p>
                                <p style="line-height: 20px;;padding-top: 30px;">普通学社直接点击：<a
                                        style="padding-left: 10px;color: #169bd5"
                                        href="societyMainpage">&gt;&gt;进入个人学社主页</a></p>
                                <p style="line-height: 20px;;padding-top: 30px;">机构/老师学社需要审核期3-5天：：<a
                                        style="padding-left: 10px;color: #169bd5" href="">&gt;&gt;审核进度查询</a></p>
                                <div style="float: left;padding-top: 30px;font-size: 18px;color: #169bd5"><a
                                        style="float: left;color: #169bd5"
                                        href="communityMainpage">&gt;&gt;返回AWE学社首页</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<jsp:include page="footer.jsp" flush="true"/>