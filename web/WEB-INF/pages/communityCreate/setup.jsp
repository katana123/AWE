<jsp:include page="header.jsp" flush="true"/>

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
                    <img src="images/1.png" width="50px"> <span class="ui-step-text">创建学社</span></div>
            </li>
            <li class="">
                <div class="ui-step-line">-</div>
                <div class="ui-step-icon">
                    <!--
                        <i class="iconfont">y</i>
                        <i class="ui-step-number">2</i>
        -->
                    <img src="images/2.png" width="50px"> <span class="ui-step-text" style="left: -70px;">学社审核</span>
                </div>
            </li>
            <li class="ui-step-end">
                <div class="ui-step-line">-</div>
                <div class="ui-step-icon">
                    <!--
                    <i class="iconfont">y</i>
                    <i class="iconfont ui-step-number"></i>
        -->
                    <img src="images/3.png" width="50px"> <span class="ui-step-text">创建完成</span></div>
            </li>
        </ol>
        <div class="cont-l" style="margin-top:50px;">

            <!--                <p class="singletitle-nav"><i></i>创建社团</p>            -->


            <div class=" create_league">
                <!-- <div class="panel st-info"> -->
                <div class="create-form">
                    <div class="create-form-item clearfix">
                        <div class="name fl">
                            学社名称：
                        </div>
                        <div class="create-form-con fl">
                            <input placeholder="名称最多15个汉字，创建后名称不可修改" type="text" id="leagueName" class="width3"
                                   name="leagueName" value="">
                            <input id="hid_IsRepeatName" type="hidden" value="0">
                        </div>
                    </div>

                    <div class="create-form-item clearfix por10">
                        <div class="name fl">
                            行业方向：
                        </div>
                        <div class="create-form-con fl form-li">
                            <div class="form-c">
                                <select class="m-select" id="m_category">
                                    <option>
                                        语言
                                    </option>
                                </select>

                            </div>
                        </div>
                    </div>


                    <div class="create-form-item clearfix por9 ">
                        <div class="name fl">
                            学社类型：
                        </div>
                        <div class="create-form-con fl form-li">
                            <div class="form-c">
                                <select class="m-select" id="m_leagueType">
                                    <option>
                                        开放加入
                                    </option>
                                </select>

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
                                    <form method="POST" class="upload_form" name="upload_file_form"
                                          style="position:relative;height:40px;" action="" target=""><input type="file"
                                                                                                            class="input-file"
                                                                                                            id="btUpImg"
                                                                                                            name="imgUrl"
                                                                                                            value="选择图片">
                                        <input type="file" name="imgOne" id="imgOne"
                                               onchange="preImg(this.id,'imgPre');" tabindex="-1"
                                               style="position:absolute; visibility:visible; outline-width:medium; outline-style:none; outline-color:initial; opacity:0; filter:alpha(opacity:0); cursor:pointer;"/>
                                    </form>
                                    <div class="btn-upload">上传图标</div>
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
                            <div id="drag">

                                <div class="handler handler_bg"></div>
                            </div>
                            <script type="text/javascript">
                                $('#drag').drag();
                            </script>
                        </div>
                    </div>
                    <div class="create-form-item clearfix">
                        <div class="create-form-con fl">
                            <div class="check">
                                <input type="checkbox" id="cbAgree" checked="checked">已阅读并同意
                                <a href="" target="_blank" style="color: #47c8fb">AWE社团规范</a>

                            </div>
                        </div>
                    </div>
                    <div class="create-form-item clearfix">
                        <div class="create-form-con fl">
                            <a href="checked.jsp" id="formSubmit" class="btn btn-m btn-blue">创建社团</a>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>


<jsp:include page="footer.jsp" flush="true"/>