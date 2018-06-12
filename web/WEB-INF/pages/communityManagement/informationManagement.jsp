<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/6/11
  Time: 20:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="mheader.jsp"></jsp:include>
<script src="./manage_dp/$_js_leaguemember_js.js" type="text/javascript"></script>
<script src="./manage_dp/fpv2.js" type="text/javascript"></script>
<div id="pageContent" style="min-width:1140px;">
    <div class="wrapper">
        <div class="container pt20">
            <div class="container-title">
                <div class="section-title">资料管理</div>
                <p style="border-bottom: 2px solid #28c2f5;width: 230px;">INFORMATION MANAGEMENT</p>
            </div>
            <script type="text/javascript">
                $(function () {
                    function init() {
                        var totalWidth = 0,
                            obj = $('#adminNavBox'),
                            width = obj.width(),
                            paddingleft = 10;
                        obj.find('li').each(function () {
                            totalWidth += $(this).outerWidth();
                        });
                        if (document.documentElement.clientWidth >= 1200) {
                            paddingleft = 15;
                        }

                        if (totalWidth > width) {
                            //长度超过了
                            obj.prepend('<span class="more_nav_hide"></span>');
                            obj.on('click', '.more_nav_hide', function () {
                                var self = $(this),
                                    sl = 0,
                                    firstLen = 0,
                                    scrollLen = totalWidth - width - firstLen,
                                    duration = (scrollLen / 60) * 100;


                                if (!self.hasClass('active')) {
                                    self.addClass('active');
                                    obj.find('ul').animate({'margin-left': -scrollLen, 'padding-left': 0}, {
                                        duration: duration, queue: false, complete: function () {
                                            obj.find('li').each(function (i, n) {
                                                if (i != 0 && scrollLen > sl - 20) {
                                                    sl += $(this).outerWidth();
                                                } else if (i != 0) {
                                                    obj.find('ul').animate({'margin-left': -sl}, {
                                                        duration: 50,
                                                        queue: false
                                                    });
                                                    return false;
                                                }
                                            });
                                        }
                                    });
                                } else {
                                    self.removeClass('active');
                                    obj.find('li').css('visibility', 'visible');
                                    obj.find('ul').animate({'margin-left': 0, 'padding-left': 0}, {
                                        duration: duration,
                                        queue: false
                                    });
                                }
                            });

                            var _t = 0;
                            obj.find('li').each(function () {
                                _t += $(this).outerWidth();
                                if ($(this).hasClass('active')) {
                                    return false;
                                }
                            });
                            if (_t > width) {
                                obj.find('.more_nav_hide').click();
                            }
                        }
                    }

                    init();

                })
            </script>
            <div class="cont-l" style="margin-top:20px;">
                <div class=" create_league">
                    <!-- <div class="panel st-info"> -->
                    <div class="create-form">
                        <div class="create-form-item clearfix">
                            <div class="name fl"> 名称：</div>
                            <div class="create-form-con fl">
                                <input placeholder="名称最多15个汉字，创建后名称不可修改" type="text" id="leagueName" class="width3"
                                       name="leagueName" value="闲聊" readonly>
                                <input id="hid_IsRepeatName" type="hidden" value="0">
                            </div>
                        </div>
                        <div class="create-form-item clearfix">
                            <div class="name fl"> 描述：</div>
                            <div class="create-form-con fl">
                                <textarea placeholder="填写描述让用户更加了解你的社团，描述最多100字" id="leagueSummary" class="width2 fl"
                                          name="leagueSummary"></textarea>
                            </div>
                        </div>
                        <div class="create-form-item clearfix por10">
                            <div class="name fl"> 分类：</div>
                            <div class="create-form-con fl form-li">
                                <div class="form-c">
                                    <dl class="m-select" id="m_category">
                                        <dt>其他</dt>
                                        <dd style="display: none;">
                                            <input type="hidden" name="category" id="category" value="6">
                                            <a val="1" href="javascript:;">语言</a><a val="2" href="javascript:;">学习</a><a
                                                val="3" href="javascript:;">人文</a><a val="4"
                                                                                     href="javascript:;">生活</a><a
                                                val="5" href="javascript:;">娱乐</a><a val="6" href="javascript:">其他</a>
                                        </dd>
                                    </dl>
                                </div>
                            </div>
                        </div>
                        <div class="create-form-item clearfix">
                            <div class="name fl"> 标签：</div>
                            <div class="create-form-con fl" style="margin-bottom:12px;">
                                <input type="text" id="leagueTag" class="width2" name="leagueTag" value="">
                                <div class="greytip" style="margin-bottom:10px;"> 填写标签使用户更容易搜索，最多可选5个标签，不同标签用英文逗号分开
                                </div>
                                <div class="tag clearfix">
                                    <div class="tag-a"><a href="javascript:void(0);" onclick="OptionTag(this)">英语</a>
                                    </div>
                                    <div class="tag-a"><a href="javascript:void(0);" onclick="OptionTag(this)">法语</a>
                                    </div>
                                    <div class="tag-a"><a href="javascript:void(0);" onclick="OptionTag(this)">日语</a>
                                    </div>
                                    <div class="tag-a"><a href="javascript:void(0);" onclick="OptionTag(this)">韩语</a>
                                    </div>
                                    <div class="tag-a"><a href="javascript:void(0);" onclick="OptionTag(this)">法语</a>
                                    </div>
                                    <div class="tag-a"><a href="javascript:void(0);" onclick="OptionTag(this)">俄语</a>
                                    </div>
                                </div>
                                <div class="tag clearfix">
                                    <div class="tag-a"><a href="javascript:void(0);" onclick="OptionTag(this)">英语</a>
                                    </div>
                                    <div class="tag-a"><a href="javascript:void(0);" onclick="OptionTag(this)">法语</a>
                                    </div>
                                    <div class="tag-a"><a href="javascript:void(0);" onclick="OptionTag(this)">日语</a>
                                    </div>
                                    <div class="tag-a"><a href="javascript:void(0);" onclick="OptionTag(this)">韩语</a>
                                    </div>
                                    <div class="tag-a"><a href="javascript:void(0);" onclick="OptionTag(this)">法语</a>
                                    </div>
                                    <div class="tag-a"><a href="javascript:void(0);" onclick="OptionTag(this)">俄语</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="create-form-item clearfix por9 ">
                            <div class="name fl"> 社团类型：</div>
                            <div class="create-form-con fl form-li">
                                <div class="form-c">
                                    <dl class="m-select" id="m_leagueType">
                                        <dt>申请加入</dt>
                                        <dd style="display: none;">
                                            <input type="hidden" name="leagueType" id="leagueType" value="0">
                                            <a class="selected" val="0" href="javascript:">申请加入</a><a val="1"
                                                                                                      href="javascript:;">开放加入</a>
                                        </dd>
                                    </dl>
                                </div>
                            </div>
                        </div>
                        <div class="create-form-item clearfix hint ">
                            <div class="name fl"> 申请提示：</div>
                            <div class="create-form-con fl">
                                <input type="text" maxlength="140" class="width2" placeholder="描述最多140个汉字，非必填"
                                       id="applyHint" name="leagueTag" value="闲聊">
                            </div>
                        </div>
                        <div class="create-form-item clearfix hint ">
                            <div class="name fl"> 提示链接：</div>
                            <div class="create-form-con fl">
                                <input type="text" id="applyHintLink" class="width2" name="leagueTag" value=""
                                       placeholder="非必填">
                            </div>
                        </div>
                        <div class="create-form-item clearfix">
                            <div class="name fl"> 图标：</div>
                            <div class="create-form-con fl">
                                <div class="upload_out">
                                    <div class="file-set">
                                        <form method="POST" class="upload_form" name="upload_file_form"
                                              enctype="multipart/form-data" style="position:relative;height:40px;"
                                              action="https://st.awe.com/ajax/upImgHandler.ashx?action=upload&amp;callback=parent.picAdded&amp;t=1502635361778"
                                              target="upload_file_iframe1502635361778">
                                            <input type="file" class="input-file" id="btUpImg" name="imgUrl"
                                                   value="选择图片">
                                            <input name="imgFile" title="单击选择" type="file" tabindex="-1"
                                                   style="position:absolute; visibility:visible; outline-width:medium; outline-style:none; outline-color:initial; opacity:0; filter:alpha(opacity:0); cursor:pointer;">
                                        </form>
                                        <div class="btn-upload">修改图标</div>
                                    </div>
                                </div>
                                <span class="grey" style="position: absolute;margin: -33px 0 0 174px;">你可以上传一个 160*160 大小的图片作为社团图标。</span>
                                <!-- <div class="input_file_uploaded_img"> -->
                                <img src="https://st.awe.com/15101186271/admin/" id="upImg" style="display:none;"
                                     class="upload-img">
                                <!-- </div> -->
                            </div>
                        </div>
                        <div class="create-form-item clearfix">
                            <div class="create-form-con fl">
                                <div class="check">
                                    <input type="checkbox" id="cbAgree" checked="checked">
                                    已阅读并同意 <a href="http://st.awe.com/topic/15154473951/" target="_blank">《awe学社规范》</a>
                                    <!--<a href="http://st.awe.com/topic/162794851717/" target="_blank">（注销社团？）</a> -->
                                </div>
                            </div>
                        </div>
                        <div class="create-form-item clearfix">
                            <div class="create-form-con fl"><a href="javascript:" id="formSubmit"
                                                               class="btn btn-m btn-green">修改社团</a></div>
                        </div>
                        <input type="hidden" id="avatar"
                               value="http://n1image.hjfile.cn/shetuan/2017-06-02-1496383723-174-695.png" name="avatar">
                        <input type="hidden" id="hdcategoryID" value="6" name="categoryID">
                        <input type="hidden" id="hdleagueID" value="10118" name="leagueID">
                        <input type="hidden" id="hid_Tel" value="" name="hid_Tel">
                        <input id="hid_IsSuper" type="hidden" value="0">
                        <input id="hid_IsCode" type="hidden" value="0">
                        <input id="hid_IdentityType" type="hidden" value="0">
                        <input id="hid_TypeID" type="hidden" value="0">
                        <input id="hid_UnModifiedLeague" type="hidden" value="1">
                        <input id="hid_OpenedAliasPlugin" type="hidden" value="0">
                    </div>
                    <!-- </div> -->
                </div>
            </div>
        </div>

        <!--
       <div class="footer_go_top">
              <ul>
            <li> <a href="javascript:;" class="news_btn"></a> <span class="news_dotted" style="display: none;"></span> </li>

            <li><a href="#pageContent" class="go_top" style="display: none;"><i></i><span class="hide_text">返回<br>
              顶部</span></a></li>
          </ul>
            </div>
    -->

        <!-- st-list : end -->

        <!-- 页脚-->

        <script src="./manage_dp/leagueInfo.js"></script>
        <script src="./manage_dp/selectJS.js"></script>
        <script>

            if ($('#hdleagueID').val() > 1) {
                if ($('#leagueSummary').val() == '') {
                    $('#leagueSummary').focus();
                } else if ($('#leagueTag').val() == '') {
                    $('#leagueTag').focus();
                }
            }

            new SelectorJS.selector.init({
                id: '#m_leagueType',
                data: [["0", "申请加入"], ["1", "开放加入"],],
                value: '0'
            });
            $("#m_leagueType a").click(function () {
                if ($("#leagueType").val() == "0") {
                    $(".hint").show();
                } else {
                    $(".hint").hide();
                }
            });
            new SelectorJS.selector.init({
                id: '#m_category',
                data: [["0", "选择分类"]

                    , ["1", "语言"]

                    , ["2", "学习"]

                    , ["3", "人文"]

                    , ["4", "生活"]

                    , ["5", "娱乐"]

                    , ["6", "其他"]

                ],
                value: '选择分类'
            });

            $('#m_category').find('a').eq(0).remove();

            function updateIM() {
                var phoneNum = parseInt($("#tel").val());
                if (!phoneNum) {
                    $('#tel').focus().select();
                    alert('请输入有效的手机号码');
                    return;
                }
                if (!/1\d{10}/.test(phoneNum)) {
                    $('#tel').focus().select();
                    alert('请输入11位有效的手机号码');
                    return;
                }
                $('#btnCellphone').val('发送验证码中……').attr('disabled', true);
                $.comajax("/ajax/PostAjax.asmx", "SendSMSMessage", {tel: phoneNum}, function (d) {
                    var retVal = d.saveOK;
                    if (retVal == -2) {
                        alert("请重新登录");
                        return;
                    } else if (retVal == 0) {
                        alert('短信发送失败，请稍候重试');
                        $('#btnCellphone').val('重新获得验证码');
                        $('#btnCellphone').attr('disabled', false);
                        return;
                    }
                    var start = 60;
                    var t = setInterval(function () {
                        $('#btnCellphone').val(start + ' 秒后重新获得验证码');
                        start--;
                        if (start == 0) {
                            clearInterval(t);
                            $('#btnCellphone').val('重新获得验证码');
                            $('#btnCellphone').attr('disabled', false);
                        }
                    }, 1000);

                }, null);
            }

            function ValidCode() {
                $("#hid_IsCode").val("0");
                var code = $.trim($('#telCode').val());
                var phoneNum = $("#tel").val();
                if (phoneNum == null || phoneNum == '')
                    return;
                if (code == '') {
                    $('#telCode').focus().select();
                    alert('请输入有效的验证码');
                    return;
                }
                phoneNum = parseInt($("#tel").val());
                if (phoneNum == '') {
                    $('#tel').focus().select();
                    alert('请输入有效的手机号码');
                    return;
                }
                $.comajax("/ajax/PostAjax.asmx", "ValidSMS", {validCode: code, tel: phoneNum}, function (d) {
                    var retVal = d.saveOK; //-2:尚未生成验证码 -1:已经验证过 0：错误 1：正确
                    switch (retVal) {
                        case 0:
                            alert('此验证码已失效，请重新选择生成验证码');
                            break;
                        case -2:
                            alert('请重新登录');
                            break;
                        case -1:
                            alert('验证码输入不正确');
                            break;
                        case 1: {
                            $("#hid_IsCode").val("1");
                        }
                            break;
                    }
                }, null);
            }
        </script>
    </div>
</div>
<input type="hidden" id="hid_shareType" value="common">
<script src="./manage_dp/bhome.js" type="text/javascript"></script>
<script type="text/javascript">


    window._bd_share_config = {
        common: {
            bdText: document.title,
            bdDesc: 'awe社团',
            bdPic: '//st.awe.com/images/icon114.png'
        },
        share: [{
            "bdSize": 32
        }]
    };
    //with(document)0[(getElementsByTagName('head')[0]||body).appendChild(createElement('script')).src='http://bdimg.share.baidu.com/static/api/js/share.js?cdnversion='+~(-new Date()/36e5)];

    var centerUserID = 72310219;
    var centerUserName = "LOVEWUST";
    register_tooltip.userID = centerUserID;

    var sign_red_dot = '<b class="sign-red-dot"></b>';

    $(function () {

        $('.go_top').click(function () {
            if (document.documentElement.scrollTop > 0) {
                $(document.documentElement).animate({"scrollTop": 0});
            } else {
                $('body').animate({"scrollTop": 0});
            }
        });


    });

</script>
<script src="./manage_dp/bulo_st.js"></script>
<script type="text/javascript" src="./manage_dp/gentian.1.0.3.min.js"></script>
<script>
    $(".slides").poposlides();
</script>
<jsp:include page="mfooter.jsp"></jsp:include>