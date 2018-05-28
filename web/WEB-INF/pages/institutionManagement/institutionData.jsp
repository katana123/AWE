<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="institutionHeader.jsp" flush="true"/>
<div class="wrapper" style="height: 899px;
        width: 735px;
        margin: 0px auto; margin-top: 40px; background-image:url(${pageContext.request.contextPath }/dist/institutionManagement/images/letter_bg.png)">
    <h2 class="title_r">
        <a href="" style="color: #28c2f5;">机构资料</a>
    </h2>
    <h2 class="title">机构资料</h2>
    <div style="" class="div_center">
        <!--
               <h3>
               姓名
                   </h3>
        -->
        <div class="form-item"><span class="form-label">手机号:</span>
            <input autocomplete="off" class="form-text" id="tel" name="tel" type="text" value="18907253432"
                   placeholder="手机号">
        </div>
        <div class="form-item"><span class="form-label">QQ号:</span>
            <input autocomplete="off" class="form-text" id="qq" name="qq" type="text" value="6578643210"
                   placeholder="QQ号">
        </div>
        <div class="form-item"><span class="form-label">邮箱地址:</span>
            <input autocomplete="off" class="form-text" id="mail" name="mail" type="text" value="78882zhan@qq.com"
                   placeholder="mail">
        </div>
        <div class="form-item"><span class="form-label">描述:</span>
            <input autocomplete="off" class="form-text" id="des" name="des" type="text" value="一句话描述您想表达的意思"
                   placeholder="描述">
        </div>

        <div style="    margin-top: 300px;
    text-align: right;">
            <span>课程类别：语言学习</span>
            <br>
            <span style="color: #b1b1b1;padding-right: 4px;height: 30px;
    line-height: 30px;">课程类别，不可更改</span>
        </div>

    </div>
</div>
</div>
<jsp:include page="institutionFooter.jsp" flush="true"/>