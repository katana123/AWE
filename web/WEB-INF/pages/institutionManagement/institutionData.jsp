<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<jsp:include page="institutionHeader.jsp" flush="true"/>
<div class="wrapper" style="height: 899px;
        width: 735px;
        margin: 0px auto; margin-top: 40px; background-image:url(${pageContext.request.contextPath }/dist/institutionManagement/images/letter_bg.png)">
    <h2 class="title_r">
        <a href="" style="color: #28c2f5;">机构资料</a>
    </h2>
    <h2 class="title">机构资料</h2>
    <form:form class="div_center" id="uname_pwd_login"
               action="${pageContext.request.contextPath }/institutionDataModify/${ccid}" method="POST"
               modelAttribute="community">
        <form:hidden path="ccid"/>
        <form:hidden path="ccl"/>
        <form:hidden path="cclpa"/>
        <form:hidden path="ccname"/>
        <form:hidden path="ccp"/>
        <div class="form-item"><span class="form-label">手机号:</span>
            <form:input path="cphone" autocomplete="off" class="form-text" placeholder="手机号"/>
        </div>
        <div class="form-item"><span class="form-label">QQ号:</span>
            <form:input path="cqq" autocomplete="off" class="form-text" placeholder="QQ号"/>
        </div>
        <div class="form-item"><span class="form-label">邮箱地址:</span>
            <form:input path="cemail" autocomplete="off" class="form-text" placeholder="Email"/>
        </div>
        <div class="form-item"><span class="form-label">描述:</span>
            <form:input path="ccinfo" autocomplete="off" class="form-text" placeholder="描述"/>
        </div>

        <div style="    margin-top: 300px;
    text-align: right;">
            <span>课程类别：${community.ccl}</span>
            <br>
            <span style="color: #b1b1b1;padding-right: 4px;height: 30px;
    line-height: 30px;">课程类别，不可更改</span>
        </div>

        <button type="submit" class="savebtn">保存</button>
    </form:form>
</div>
</div>
<jsp:include page="institutionFooter.jsp" flush="true"/>