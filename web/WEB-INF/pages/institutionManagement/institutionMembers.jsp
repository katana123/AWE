<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="institutionHeader.jsp" flush="true"/>
<script>
    function addMember() {
        var username = $("#cusername").val();
        if (username) {
            $.ajax({
                type: "POST",
                url: "${pageContext.request.contextPath }/ajaxAddInstitutionMember",
                data: {cusername: username, ccid: ${ccid}},
                success: function (result) {
                    if (result == 0) {
                        layer.alert("用户不存在！");
                    } else if (result == 1) {
                        layer.alert("添加成功！");
                    } else if (result == 2) {
                        layer.alert("已添加该成员，不可重复添加！");
                    }
                }
            });
        } else {
            layer.alert("请输入要添加用户的用户名！");
            $("#cusername").focus();
        }

    }
</script>
<div class="wrapper">
    <div class="form-li">
        <div class="action_btns"><a href="javascript:void(0);" onclick="addMember()" class="btn-export btn ">添加成员</a>
            <!--          <a id="blackListManageBTN" href="javascript:;" class="btn">管理黑名单</a>-->
        </div>
        <div class="form-c mem-search">
            <input type="text" placeholder="输入用户名" maxlength="20" value="" id="cusername" style="width: 100%;">
            <%--<input id="hid_LeagueID" type="hidden" value="10118">
            <a href="javascript:" class="btn-search"><i></i>搜索</a>--%>
        </div>
        <div class="fr grey"> 已添加成员30</div>
    </div>
    <div class="del_more_users hide">
        <div class="container"><a href="javascript:" class="fr btn btn-default deleteMoreUser">删除成员</a></div>
    </div>
    <div class="user_list">
        <ul>
            <li class="menu"><span class="member_nickName">昵称</span><span class="member_info">成员</span> <span
                    class="month_reply" data-value="3">qq号码</span> <span class="month_check" data-value="9">电话号码</span>
                <span class="level_no" data-value="11">等级</span> <span class="rank_num" data-value="13">经验值</span> <span
                        class="join_date" data-value="5">入社时间</span> <span class="last_post" data-value="7">操作</span>
            </li>
            <li class="" data-userid="72310219" data-username="LOVEWUST"><span class="no">01</span> <span
                    class="owner"></span> <a rel="nofollow" href=href="#" target="_blank"> <span
                    class="header_icon"> <img
                    src="${pageContext.request.contextPath }/dist/institutionManagement/images/user_list.jpg"
                    alt=""></span> <span class="ellipsis_text">LOVEWUST</span> </a> <span
                    class="member_nickName"></span><span class="month_reply">123456</span> <span class="month_check">13212341234</span>
                <span class="level_no">2</span> <span class="rank_num">0</span> <span
                        class="join_date">2017/06/02</span> <span class="last_post"><a href="">编辑</a> <a href="">删除</a></span>
            </li>
            <li class="odd" data-userid="75938834" data-username="格桑花的曲调"><span class="no">02</span> <span
                    class="check_box">
              <input type="checkbox" name="chk_UserID" value="75938834">
              </span> <a rel="nofollow" href="#" target="_blank"> <span class="header_icon"> <img
                    src="${pageContext.request.contextPath }/dist/institutionManagement/images/user_list.jpg"
                    alt=""></span> <span class="ellipsis_text">格桑花的曲调</span> </a> <span class="member_nickName"></span>
                <span class="month_reply">123456</span> <span class="month_check">13212341234</span> <span
                        class="month_post">1</span> <span class="month_post">0</span> <span
                        class="join_date">2017/07/11</span><span class="last_post"><a href="">编辑</a> <a
                        href="">删除</a></span>
            </li>
        </ul>
    </div>
</div>
</div>
<jsp:include page="institutionFooter.jsp" flush="true"/>
