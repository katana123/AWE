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
                <div class="section-title">栏目管理</div>
                <p style="border-bottom: 2px solid #28c2f5;width: 230px;">COLUMN MANAGEMENT</p>
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
                <div class="panel-list">
                    <div class="panel tz-cate"><a href="javascript:" class="btn btn-m btn-green btn-createcate"
                                                  data-id="10118">创建新分类</a>
                        <div class="list">
                            <ul id="boardListBox">
                                <li id="board_33973"><span class="board_title"><a href="/15101186271/mag/"
                                                                                  target="_blank">社刊</a></span> <span
                                        class="board_tagName"></span>
                                    <input type="hidden" value="1" class="hid_isIndexVisible">
                                    <div class="func" data-sort="1" data-lid="10118" data-id="33973" data-type="2"><a
                                            href="javascript:;" class="icon icon-up btn-up"><i></i>向上</a> <a
                                            href="javascript:;" class="icon icon-down btn-down"><i></i>向下</a> <a
                                            href="javascript:;" class="icon icon-edit btn-edit"><i></i>修改</a> <a
                                            href="javascript:" class="icon icon-option btn-option "
                                            title="点击设置为前台隐藏"><i></i>删除</a></div>
                                </li>
                                <li id="board_33972"><span class="board_title"><a href="/15101186271/event/"
                                                                                  target="_blank">社团活动</a></span> <span
                                        class="board_tagName"></span>
                                    <input type="hidden" value="1" class="hid_isIndexVisible">
                                    <div class="func" data-sort="2" data-lid="10118" data-id="33972" data-type="1"><a
                                            href="javascript:;" class="icon icon-up btn-up"><i></i>向上</a> <a
                                            href="javascript:;" class="icon icon-down btn-down"><i></i>向下</a> <a
                                            href="javascript:;" class="icon icon-edit btn-edit"><i></i>修改</a> <a
                                            href="javascript:" class="icon icon-option btn-option "
                                            title="点击设置为前台隐藏"><i></i>删除</a></div>
                                </li>
                            </ul>
                        </div>
                    </div>

                    <div class="panel tz-cate"><a href="javascript:" class="btn btn-m btn-green btn-createcate"
                                                  data-id="10118">创建子分类</a>
                        <div class="list">
                            <ul id="boardListBox">
                                <li id="board_33973"><span class="board_title"><a href="/15101186271/mag/"
                                                                                  target="_blank">社刊</a></span> <span
                                        class="board_tagName"></span>
                                    <input type="hidden" value="1" class="hid_isIndexVisible">
                                    <div class="func" data-sort="1" data-lid="10118" data-id="33973" data-type="2"><a
                                            href="javascript:;" class="icon icon-up btn-up"><i></i>向上</a> <a
                                            href="javascript:;" class="icon icon-down btn-down"><i></i>向下</a> <a
                                            href="javascript:" class="icon icon-edit btn-edit"><i></i>修改</a> <a
                                            href="javascript:;" class="icon icon-option btn-option "
                                            title="点击设置为前台隐藏"><i></i>删除</a></div>
                                </li>
                                <li id="board_33972"><span class="board_title"><a href="/15101186271/event/"
                                                                                  target="_blank">社团活动</a></span> <span
                                        class="board_tagName"></span>
                                    <input type="hidden" value="1" class="hid_isIndexVisible">
                                    <div class="func" data-sort="2" data-lid="10118" data-id="33972" data-type="1"><a
                                            href="javascript:;" class="icon icon-up btn-up"><i></i>向上</a> <a
                                            href="javascript:;" class="icon icon-down btn-down"><i></i>向下</a> <a
                                            href="javascript:" class="icon icon-edit btn-edit"><i></i>修改</a> <a
                                            href="javascript:;" class="icon icon-option btn-option "
                                            title="点击设置为前台隐藏"><i></i>删除</a></div>
                                </li>
                            </ul>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <!--   <div id="simplemodal-container" class="simplemodal-container" style="position: fixed; z-index: 1002; height: 217px; width: 500px; left: 189.5px; top: 186px;"><a class="modalCloseImg simplemodal-close" title="Close"></a><div tabindex="-1" class="simplemodal-wrap" style="height: 100%; outline: 0px; width: 100%; overflow: visible;"><div class="pop-out hide edit_board_box simplemodal-data" id="editBoardBox">
          <h3>修改帖子分类</h3>
          <p><label>分类名称</label><span class="input_box" style="border:1px solid #CCC;display:inline-block;">%E7%A4%BE%E5%9B%A2%E6%B4%BB%E5%8A%A8</span><input type="text" class="input_box" maxlength="12" value="" style="display: none;"></p>
          <p style="display:none"><label>分类标签</label><input type="text" class="input_box" maxlength="20" value=""></p>
          <p class="edit_tip" style="display:none"><label>&nbsp;</label>选填，最多可设置5个标签，不同标签用英文逗号分隔。</p>
          <p class="index-visible"><label for="indexV">首页可见</label><input type="checkbox" id="indexV" checked="checked"><span class="edit_tip">该分类下内容设置首页是否可见，勾选为可见</span></p>
          <p><a href="javascript:;" class="btn btn-m btn-green" id="saveEditBoardBTN">保存</a></p>
      </div></div></div>
      -->
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