<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="institutionJHeader.jsp" flush="true"/>
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
    <div class="course_input f-fl">
        <input class="f-fl" type="text" name="course_name" placeholder="搜索资料">
        <input class="f-fl" type="text" name="course_type" placeholder="全部">
        <form action="${pageContext.request.contextPath }/upload" enctype="multipart/form-data" method="post">
            <table>
                <tr>
                    <td>文件描述:</td>
                    <td><input type="text" name="description"></td>
                </tr>
                <tr>
                    <td>请选择文件:</td>
                    <td><input type="file" name="file"></td>
                </tr>
                <tr>
                    <td><input type="submit" value="上传"></td>
                </tr>
            </table>
        </form>
    </div>

</div>

<div class="mainpage">
    <table class="course_table2">
        <thead>
        <th width="50%">文件名</th>
        <th>上传时间</th>
        <th>操作</th>
        </thead>
        <tbody>
        <tr bgcolor="#fff">
            <td>
                <img class="f-fl coursepic"
                     src="${pageContext.request.contextPath }/dist/institutionJManagement/images/file1.png">
                <p class="f-fl coursetitle">我的文件名称</p>
                <br/>
                <br/>
                <br/>
                <br/>
                <br/>
                <p><span class="totalclassnum">共138k</span></p>
                <div class="f-cb"></div>
            </td>
            <td>2017-01-25</td>
            <td class="kcxq"><p class="uploadwz">修改</p></td>
        </tr>
        <tr bgcolor="#EDEFEF">
            <td>
                <img class="f-fl coursepic"
                     src="${pageContext.request.contextPath }/dist/institutionJManagement/images/file2.png">
                <p class="f-fl coursetitle">我的文件名称</p>
                <br/>
                <br/>
                <br/>
                <br/>
                <br/>
                <p><span class="totalclassnum">共138k</span></p>
                <div class="f-cb"></div>
            </td>

            <td>2017-01-25</td>
            <td class="kcxq"><p class="uploadwz">修改</p></td>
        </tr>
        <tr bgcolor="#fff">
            <td>
                <img class="f-fl coursepic"
                     src="${pageContext.request.contextPath }/dist/institutionJManagement/images/file3.png">
                <p class="f-fl coursetitle">我的文件名称</p>
                <br/>
                <br/>
                <br/>
                <br/>
                <br/>
                <p><span class="totalclassnum">共138k</span></p>
                <div class="f-cb"></div>
            </td>
            <td>2017-01-25</td>
            <td class="kcxq"><p class="uploadwz">修改</p></td>
        </tr>
        <tr bgcolor="#EDEFEF">
            <td>
                <img class="f-fl coursepic"
                     src="${pageContext.request.contextPath }/dist/institutionJManagement/images/file4.png">
                <p class="f-fl coursetitle">我的文件名称</p>
                <br/>
                <br/>
                <br/>
                <br/>
                <br/>
                <p><span class="totalclassnum">共138k</span></p>
                <div class="f-cb"></div>
            </td>

            <td>2017-01-25</td>
            <td class="kcxq"><p class="uploadwz">修改</p></td>
        </tr>
        <tr bgcolor="#fff">
            <td>
                <img class="f-fl coursepic"
                     src="${pageContext.request.contextPath }/dist/institutionJManagement/images/file5.png">
                <p class="f-fl coursetitle">我的文件名称</p>
                <br/>
                <br/>
                <br/>
                <br/>
                <br/>
                <p><span class="totalclassnum">共138k</span></p>
                <div class="f-cb"></div>
            </td>

            <td>2017-01-25</td>
            <td class="kcxq"><p class="uploadwz">修改</p></td>
        </tr>
        <tr bgcolor="#EDEFEF">
            <td>
                <img class="f-fl coursepic"
                     src="${pageContext.request.contextPath }/dist/institutionJManagement/images/file2.png">
                <p class="f-fl coursetitle">我的文件名称</p>
                <br/>
                <br/>
                <br/>
                <br/>
                <br/>
                <p><span class="totalclassnum">共138k</span></p>
                <div class="f-cb"></div>
            </td>

            <td>2017-01-25</td>
            <td class="kcxq"><p class="uploadwz">修改</p></td>
        </tr>


        <tr bgcolor="#fff">
            <td>
                <img class="f-fl coursepic"
                     src="${pageContext.request.contextPath }/dist/institutionJManagement/images/file5.png">
                <p class="f-fl coursetitle">我的文件名称</p>
                <br/>
                <br/>
                <br/>
                <br/>
                <br/>
                <p><span class="totalclassnum">共138k</span></p>
                <div class="f-cb"></div>
            </td>

            <td>2017-01-25</td>
            <td class="kcxq"><p class="uploadwz">修改</p></td>
        </tr>
        <tr bgcolor="#EDEFEF">
            <td>
                <img class="f-fl coursepic"
                     src="${pageContext.request.contextPath }/dist/institutionJManagement/images/file2.png">
                <p class="f-fl coursetitle">我的文件名称</p>
                <br/>
                <br/>
                <br/>
                <br/>
                <br/>
                <p><span class="totalclassnum">共138k</span></p>
                <div class="f-cb"></div>
            </td>

            <td>2017-01-25</td>
            <td class="kcxq"><p class="uploadwz">修改</p></td>
        </tr>
        <tr bgcolor="#fff">
            <td>
                <img class="f-fl coursepic"
                     src="${pageContext.request.contextPath }/dist/institutionJManagement/images/file4.png">
                <p class="f-fl coursetitle">我的文件名称</p>
                <br/>
                <br/>
                <br/>
                <br/>
                <br/>
                <p><span class="totalclassnum">共138k</span></p>
                <div class="f-cb"></div>
            </td>

            <td>2017-01-25</td>
            <td class="kcxq"><p class="uploadwz">修改</p></td>
        </tr>
        </tbody>
    </table>
    <div id="page" style="margin-top: 100px;"></div>
    <script src="${pageContext.request.contextPath }/dist/institutionJManagement/js/jquery.min.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath }/dist/institutionJManagement/js/jquery.page.js"></script>
    <script type="text/javascript">
        $(function () {
            $("#page").Page({
                totalPages: 9,//分页总数
                liNums: 7,//分页的数字按钮数(建议取奇数)
                activeClass: 'activP', //active 类样式定义
                callBack: function (page) {
                    //console.log(page)
                }
            });
        })
    </script>
</div>
</div>

<div class="f-cb"></div>
<jsp:include page="institutionFooter.jsp" flush="true"/>