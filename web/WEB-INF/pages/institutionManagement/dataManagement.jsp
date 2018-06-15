<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="institutionJHeader.jsp" flush="true"/>
<script>
    $(".file").on("change", "input[type='file']", function () {
        alert(222);
        var filePath = $(this).val();
        if (filePath.indexOf("jpg") != -1 || filePath.indexOf("png") != -1) {
            $(".fileerrorTip").html("").hide();
            var arr = filePath.split('\\');
            var fileName = arr[arr.length - 1];
            $(".showFileName").html(fileName);
            alert(222);
        } else {
            $(".showFileName").html("");
            $(".fileerrorTip").html("您未上传文件，或者您上传文件类型有误！").show();
            return false
        }
    })
</script>
<div class="width:100%;">
    <div>
        <ul class="func_list2">
            <li><a href="课教管理_课程管理.html">课程管理</a></li>
            <li class="active"><a href="课教管理_资料管理.html">资料管理</a></li>
            <li><a href="课教管理_视频管理.html">视频管理</a></li>
        </ul>
    </div>
    <br/>
    <br/>
    <br/>
    <div class="course_input f-fl" style="width: 100%;margin-bottom: 10px;">
        <input class="f-fl form-control" style="height: 32px;margin-top: 1px;" type="text" name="course_name"
               placeholder="搜索资料">
        <a class="f-fl btn btn-default" style="margin-left: 10px;" href="javascript:;">搜索资料</a>
        <form action="${pageContext.request.contextPath }/upload/${ccid}" enctype="multipart/form-data" method="post">
            <input class="f-fl btn" type="file" name="file" style="border: none;">
            <button class="f-fl btn btn-default" type="submit">上传</button>
        </form>
        <div style="clear: both;"></div>
    </div>

</div>

<div class="mainpage" style="padding: 0 12px;">
    <table class="course_table2">
        <thead>
        <th width="50%">文件名</th>
        <th>上传时间</th>
        <th>操作</th>
        </thead>
        <tbody>
        <c:forEach items="${iResources.content}" var="res">
            <tr bgcolor="#fff">
                <td>
                    <img class="f-fl coursepic"
                         src="${pageContext.request.contextPath }/dist/institutionJManagement/images/file1.png">
                    <p class="f-fl coursetitle">${res.title}</p>
                    <br/>
                    <br/>
                    <br/>
                    <br/>
                    <br/>
                    <p><span class="totalclassnum">共${res.size}k</span></p>
                    <div class="f-cb"></div>
                </td>
                <td>${res.uploadtime}</td>
                <td class="kcxq"><p class="uploadwz">修改</p></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>


    <nav aria-label="Page navigation">
        <ul class="pagination">
            <c:choose>
                <c:when test="${iResources.isFirstPage() == true}">
                    <li class="disabled">
                        <a href="javascript:void(0);" aria-label="Previous">
                            <span aria-hidden="true">&laquo;</span>
                        </a>
                    </li>
                </c:when>
                <c:otherwise>
                    <li>
                        <a href="?pageNo=${iResources.number- 1}" aria-label="Previous">
                            <span aria-hidden="true">&laquo;</span>
                        </a>
                    </li>
                </c:otherwise>
            </c:choose>
            <c:forEach var="li" begin="1" end="${iResources.totalPages }">
                <c:choose>
                    <c:when test="${iResources.number+1 == li}">
                        <li class="active"><a href="?pageNo=${li}">${li}</a></li>
                    </c:when>
                    <c:otherwise>
                        <li><a href="?pageNo=${li}">${li}</a></li>
                    </c:otherwise>
                </c:choose>
            </c:forEach>

            <c:choose>
                <c:when test="${iResources.isLastPage() == true}">
                    <li class="disabled">
                        <a href="javascript:void(0);" aria-label="Previous">
                            <span aria-hidden="true">&raquo;</span>
                        </a>
                    </li>
                </c:when>
                <c:otherwise>
                    <li>
                        <a href="?pageNo=${iResources.number + 1 + 1}" aria-label="Next">
                            <span aria-hidden="true">&raquo;</span>
                        </a>
                    </li>
                </c:otherwise>
            </c:choose>
        </ul>
    </nav>


</div>
</div>

<div class="f-cb"></div>
<jsp:include page="institutionFooter.jsp" flush="true"/>