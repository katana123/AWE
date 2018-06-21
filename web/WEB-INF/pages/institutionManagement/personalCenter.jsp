<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<jsp:include page="institutionJHeader.jsp" flush="true"/>
<div class="mainpage2">
    <table class="course_table" style="padding-left: 5px;text-indent: 20px;">
        <thead>
        <th>QQ号码</th>
        <th>绑定的机构</th>
        <th>操作</th>
        </thead>
        <tbody>
        <tr style="box-shadow: 4px 4px 2px #888888;">
            <td height="60px;">${cCusers.cqqid}</td>
            <td height="60px;">${community.ccname}</td>
            <td height="60px;" style="color: #4862e3;"><a href="#modify">资料修改</a></td>
        </tr>
        </tbody>
    </table>


    <div class="grxx">
        <img src="${pageContext.request.contextPath }/dist/institutionJManagement/images/jstx_03.jpg"/>
        <p class="phone_num">${cCusers.cupn}</p>
        <div class="t_name">
            <p class="f-fl"><c:out value="${cCusers.cuname}"/></p>
            <p class="f-fl" style="margin-left: 50px;">高级教师</p>
            <button class="f-fl yrz" style="margin-left: 50px;">已认证</button>
            <div class="f-cb"></div>
        </div>
        <div class="t_name">
            <p class="f-fl">擅长：</p>
            <p class="f-fl" style="margin-left: 50px;">雅思&nbsp;&nbsp;英语</p>
            <div class="f-cb"></div>
        </div>
        <div class="t_name">
            <p class="f-fl">地区：</p>
            <p class="f-fl" style="margin-left: 50px;">${cCusers.district}</p>
            <div class="f-cb"></div>
        </div>
        <div class="t_name">
            <p class="f-fl">教龄：</p>
            <p class="f-fl" style="margin-left: 50px;">7</p>
            <div class="f-cb"></div>
        </div>
        <div class="t_name">
            <p class="f-fl">简介：</p>
            <p class="f-fl"
               style="margin-left: 70px;font-size: 20px;margin-top: -25px;text-align: left;">${cCusers.breifIntro}</p>
            <div class="f-cb"></div>
        </div>
        <button class="savebtn f-fl" style="margin-top: 40px;margin-left: 20px;">角色预览</button>
        <p class="f-fr" style="margin-top: 40px;margin-right: 20px;font-size: 16px;font-family: '微软雅黑';color: #e8e8e9;">
            个人资料页面</p>
    </div>

    <div class="jtzx" style="margin-top: 30px;">
        <img class="f-fl" src="${pageContext.request.contextPath }/dist/institutionJManagement/images/jstx_03.jpg"
             style="margin-left: 100px;margin-top: 20px;"/>
        <div class="f-fl" style="margin-top: 30px;height: 30px;line-height: 25px;width: 430px;">
            <p style="font-size: 16px;font-family: '微软雅黑';color: #5fbfd0;">${cCusers.cuname}</p>
            <p style="font-size: 14px;font-family: '微软雅黑';color: #000;">${cCusers.district}/雅思 英语</p>
            <p style="font-size: 14px;font-family: '微软雅黑';color: #9e9e9e;">${cCusers.breifIntro}</p>
            <p style="font-size: 14px;font-family: '微软雅黑';color: #9e9e9e;">教龄：7&nbsp;&nbsp;&nbsp;&nbsp;课件：102 &nbsp;&nbsp;&nbsp;&nbsp;关注：1888</p>
            <p class="f-fr" style="margin-top: 40px;font-size: 16px;font-family: '微软雅黑';color: #e8e8e9;">教坛之星角色预览页面</p>
        </div>
        <div class="f-cb"></div>
    </div>

    <a name="modify"></a>
    <form:form action="${pageContext.request.contextPath }/personalCenterModify/${ccid}/${cookie.userid.value}"
               method="post" modelAttribute="cCusers">
        <form:hidden path="cpwd"/>
        <form:hidden path="cusername"/>
        <%--<form:hidden path="cidc"/>
        <form:hidden path="cright"/>--%>
        <div class="grzl" style="margin-top: 30px;">
            <div>
                <p class="f-fl"
                   style="text-align: right;width: 190px;margin-top: 90px;font-size: 14px;font-family: '微软雅黑';color: #5fbfd0;">
                    <span style="color: #ec0e2d;">*</span>个人头像：</p>
                <img class="f-fl"
                     src="${pageContext.request.contextPath }/dist/institutionJManagement/images/jstx_03.jpg"
                     style="margin-top: 20px;"/>
                <div class="f-fl" style="width: 160px;margin-top: 40px;line-height: 20px;">
                    <p>图片的长和宽都在120-500像素之间，图片大小不可超过2M。</p>
                    <p>支持PNG,JPG,GIF,BMP</p>
                    <p>老师务必使用真实头像</p>
                </div>
                <div class="f-cb"></div>
            </div>
            <div class="personform">
                <p class="f-fl"><span>*</span>姓名：</p>
                <form:input path="cuname" class="f-fl" style="width: 133px;" placeholder="用户真实姓名"/>
                <p class="f-fl" style="width: 80px;"><span>*</span>QQ：</p>
                <form:input path="cqqid" class="f-fl" style="width: 133px;" placeholder="输入您的QQ号码"/>
                <div class="f-cb"></div>
            </div>
            <div class="personform">
                <p class="f-fl"><span>*</span>手机号码：</p>
                <form:input path="cupn" class="f-fl" placeholder="请填写您的手机号码"/>
                <div class="f-cb"></div>
            </div>
            <div class="personform">
                <p class="f-fl"><span>*</span>邮箱地址：</p>
                <form:input path="cemail" class="f-fl" placeholder="请输入您的邮箱地址"/>
                <div class="f-cb"></div>
            </div>
            <div class="personform">
                <p class="f-fl"><span>*</span>所属地区：</p>
                <form:input path="district" class="f-fl" placeholder="填写您所在的地区名称"/>
                <div class="f-cb"></div>
            </div>
            <div class="personform">
                <p class="f-fl"><span>*</span>简介：</p>
                <form:textarea path="breifIntro" rows="5" class="f-fl"/>
                <div class="f-cb"></div>
            </div>
            <button type="submit" class="tj">提交</button>
            <button type="reset" class="qx">取消</button>
            <p class="f-fr"
               style="margin-top: 70px;font-size: 16px;font-family: '微软雅黑';color: #e8e8e9;margin-right: 20px;">
                个人资料填写页面</p>
            <div class="f-cb"></div>
        </div>
    </form:form>

</div>
</div>

<div class="f-cb"></div>
<jsp:include page="institutionFooter.jsp" flush="true"/>
