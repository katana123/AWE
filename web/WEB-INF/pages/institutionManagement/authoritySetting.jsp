<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/5/28
  Time: 10:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="institutionHeader.jsp" flush="true"/>
<style>
    .user_list .ellipsis_text {
        width: 190px;
        height: 50px;
        line-height: 50px;
        text-align: left
    }

    .user_list .month_post, .user_list .month_reply, .user_list .month_check, .user_list .level_no, .user_list .rank_num {
        width: 400px
    }

    .user_list .no, .user_list .header_icon, .user_list .remarks {
        width: 45px;
    }

    .user_list .last_post {
        width: 200px;
    }

    .form-li .form-c {
        width: 24% !important;
    }

    .form-li .form-c input[type="text"] {
        border: 0;
        width: 200px;
    }
</style>
<script>
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
        <div class="action_btns"><a href="机构管理 - 权限设置-新建角色.html" class="btn-export btn ">新建角色</a>
            <!--          <a id="blackListManageBTN" href="javascript:;" class="btn">管理黑名单</a>-->
        </div>
        <div style="float: left;font-size: 24px;">权限设置<span style="color:#667e87;font-size: 18px;padding-bottom: 9px; ">(管理机构所有成员，分配不同角色对应的权限功能) </span><a
                style="color:#28c2f5;font-size: 16px;">《权限说明》</a></div>
    </div>
    <div class="user_list">
        <ul>
            <li class="menu"><span class="member_info">角色</span> <span class="month_reply" data-value="3">描述</span><span
                    class="no">成员数</span> <span class="last_post" data-value="7">操作</span></li>
            <li class="" data-userid="72310219" data-username="LOVEWUST"><span class="no"></span> <span
                    class="ellipsis_text role">超级管理员</span> <span class="month_reply">机构创始人，拥有所有权限功能。</span><span
                    class="no">01</span> <span class="last_post"><a href="javascript:"
                                                                    class="super_role">不可操作</a> </span></li>
            <li class="odd" data-userid="75938834" data-username="格桑花的曲调"><span class="no"></span> <span
                    class="ellipsis_text role">教育管理员 </span> <span
                    class="month_reply">机构创始人所关联的成员中选出；拥有大部分权限。</span><span class="no">01</span><span class="last_post"><a
                    href="">管理成员</a> </span></li>
            <li class="" data-userid="72310219" data-username="LOVEWUST"><span class="no"></span> <span
                    class="ellipsis_text role">老师</span> <span class="month_reply">主要负责招生，配合机构教育工作。</span><span
                    class="no">01</span> <span class="last_post"><a href="">管理成员</a> </span></li>
            <li class="odd" data-userid="75938834" data-username="格桑花的曲调"><span class="no"></span> <span
                    class="ellipsis_text role">助教 </span> <span class="month_reply">主要协助老师收集课程教案，包括机构纪律管理。</span><span
                    class="no">01</span><span class="last_post"><a href="">管理成员</a> </span></li>
        </ul>
    </div>
</div>
<div class="wrapper">
    <div class="form-li">
        <div class="action_btns"><a href="javascript:" class="btn-export btn ">添加成员</a>
            <!--          <a id="blackListManageBTN" href="javascript:;" class="btn">管理黑名单</a>-->
        </div>
        <div style="float: left;font-size: 24px;">管理成员<span style="color:#28c2f5;font-size: 18px;padding-bottom: 9px; ">(教育管理员)</span>
        </div>
        <div class="form-c mem-search">
            <input type="text" placeholder="输入用户名，搜索机构成员" maxlength="20" value="" id="txt_key">
            <input id="hid_LeagueID" type="hidden" value="10118">
            <a href="javascript:" class="btn-search"><i></i>搜索</a></div>
        <div class="fr grey"> 已添加成员${membercount}</div>
    </div>
    <div class="del_more_users hide">
        <div class="container"><a href="javascript:" class="fr btn btn-default deleteMoreUser">删除成员</a></div>
    </div>
    <div class="user_list">
        <ul>
            <li class="menu"><span class="member_info">成员名称</span> <span class="month_reply" data-value="3">qq号码</span>
                <span class="last_post" data-value="7">操作</span></li>
            <div id="linkedmembers">
            </div>
            <%--<c:forEach items="${members}" var="member" varStatus="i">
                <c:choose>
                    <c:when test="${i.count % 2 == 0}">
                        <li class="odd">
                    </c:when>
                    <c:otherwise>
                        <li class="">
                    </c:otherwise>
                </c:choose>
                    <span class="no">
                        <c:choose>
                            <c:when test="${i.count < 10}">
                                0${String.valueOf(i.count)}
                            </c:when>
                            <c:otherwise>
                                ${String.valueOf(i.count)}
                            </c:otherwise>
                        </c:choose>
                    </span>
                    <span class="ellipsis_text"><c:out value="${member.cusername}"/></span>
                    <span class="month_reply"><c:if test="${member.cqqid != 0}"><c:out value="${member.cqqid}"/></c:if></span>
                    <span class="last_post"><a href="">编辑</a> <a href="">删除</a></span>
                </li>
            </c:forEach>--%>
        </ul>
    </div>
</div>
</div>
<jsp:include page="institutionFooter.jsp" flush="true"/>
