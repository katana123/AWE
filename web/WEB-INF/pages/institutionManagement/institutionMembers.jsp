<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="json" uri="http://www.atg.com/taglibs/json" %>
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
                        layer.confirm("添加成功!", {
                            btn: ['确定']
                        }, function () {
                            location.reload();
                        })
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

    function deleteMember(cuid, ccid, cusername) {
        layer.confirm("确定要删除" + cusername + "的信息么？", {
            btn: ['确定', "取消"]
        }, function () {
            $.ajax({
                type: "POST",
                url: "${pageContext.request.contextPath }/ajaxDeleteInstitutionMember",
                data: {cuid: cuid, ccid: ccid},
                success: function (result) {
                    if (result == 1) {
                        layer.confirm("删除成功", {
                            btn: ['确定']
                        }, function () {
                            location.reload();
                        })
                    } else {
                        layer.alert("网络或程序错误！");
                    }
                }
            });
        });
    }

    $(function () {
        var html = "";
        var ajson =${members};
        for (var i = 0; i < ajson.length; i++) {
            if (i % 2 == 0) {
                html += "<li class=\"odd\">";
            } else {
                html += "<li class=\"\">";
            }
            html += "<span class=\"no\">";
            if (i < 10) {
                html += "0" + (i + 1);
            } else {
                html += i;
            }
            html += "</span>";
            html += "<span class=\"owner\"></span>";
            html += "<a rel=\"nofollow\" href=\"#\" target=\"_blank\">";
            html += "<span class=\"header_icon\">";
            html += "<img src=\"${pageContext.request.contextPath }/dist/institutionManagement/images/user_list.jpg\" alt=\"\">";
            html += "</span>";
            html += "<span class=\"ellipsis_text\">" + ajson[i][1] + "</span>";
            html += "</a>";
            html += "<span class=\"member_nickName\"></span>";
            html += "<span class=\"month_reply\">" + ajson[i][2] + "</span>";
            html += "<span class=\"month_check\">" + ajson[i][3] + "</span>";
            html += "<span class=\"level_no\">2</span>";
            html += "<span class=\"rank_num\">0</span>";
            html += "<span class=\"join_date\">2017/06/02</span>";
            html += "<span class=\"last_post\"><a href=\"javascript:;\">编辑</a> <a href=\"javascript:;\" onclick=\"deleteMember(" + ajson[i][0] + ",${ccid},'" + ajson[i][1] + "')\">删除</a></span>";
            html += "</li>";
        }
        $("#linkedmembers").append(html);
    });
</script>
<div class="wrapper">
    <div class="form-li">
        <div class="action_btns"><a href="javascript:void(0);" onclick="addMember()" class="btn-export btn ">添加成员</a>
            <!--          <a id="blackListManageBTN" href="javascript:;" class="btn">管理黑名单</a>-->
        </div>
        <div class="form-c mem-search">
            <input type="text" placeholder="输入用户名，搜索本社成员" maxlength="20" value="" id="cusername" style="width: 100%;">
            <%--<input id="hid_LeagueID" type="hidden" value="10118">
            <a href="javascript:" class="btn-search"><i></i>搜索</a>--%>
        </div>
        <div class="fr grey"> 已添加成员${membercount}</div>
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
            <div id="linkedmembers">

            </div>
        </ul>
    </div>
</div>
</div>
<jsp:include page="institutionFooter.jsp" flush="true"/>
