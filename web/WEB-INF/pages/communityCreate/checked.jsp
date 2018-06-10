<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<jsp:include page="header.jsp" flush="true"/>

<div class="wrapper" style="overflow: hidden;">
    <div class="container">
        <div class="container-title">
            <div class="section-title">学社审核</div>

            <p style="border-bottom: 2px solid #28c2f5;">STUDY CENTER AUDITING</p>
        </div>
        <ol class="ui-step ui-step-3" style="overflow: visible">
            <li class="ui-step-start ui-step-active" id="stepstart">
                <div class="ui-step-line">-</div>
                <div class="ui-step-icon">
                    <!--
                    <i class="iconfont">y</i>
                    <i class="ui-step-number">1</i>
        -->
                    <img src="${pageContext.request.contextPath }/dist/communityCreate/images/1.png" width="50px"> <span
                        class="ui-step-text">创建学社</span></div>
            </li>
            <li class="ui-step-active">
                <div class="ui-step-line">-</div>
                <div class="ui-step-icon">
                    <img src="${pageContext.request.contextPath }/dist/communityCreate/images/2.png" width="50px"> <span
                        class="ui-step-text" style="left: -70px;">学社审核</span>
                </div>
            </li>
            <li class="ui-step-end">
                <div class="ui-step-line">-</div>
                <div class="ui-step-icon">
                    <img src="${pageContext.request.contextPath }/dist/communityCreate/images/3.png" width="50px"> <span
                        class="ui-step-text">创建完成</span></div>
            </li>
        </ol>
        <div class="cont-l" style="margin-top:50px;">
            <div class=" create_league">
                <!-- <div class="panel st-info"> -->
                <div class="create-form">
                    <div class="create-form-item clearfix">
                        <div class="name fl">
                            <!--                                   <input type="checkbox">-->
                            <img id="person"
                                 src="${pageContext.request.contextPath }/dist/communityCreate/images/checked.jpg"
                                 style="margin-top: -8px;"/>
                        </div>
                        <div class="create-form-con fl"> &nbsp;普通学社</div>
                    </div>
                    <div class="create-form-item clearfix">
                        <div class="name fl"></div>
                        <div class="create-form-con fl">
                            <div style="width: 100%;height:150px;background: #fff;color: #000;padding: 40px">
                                <p style="font-size: 20px;">恭喜您已创建普通用户学社，AWE欢迎您！</p>
                                <p style="line-height: 20px;;padding-top: 30px;">
                                    为了营造绿色的网络环境，让我们一起携手合作，打造出一个优秀的学习平台，相互学习；共同进步！所谓梦想，是永不停息的疯狂，可怕的是，比你优秀的人比你还要努力。</p>
                                <div style="float: left;padding-top: 30px;">
                                    <form action="personcomplete" method="post" modelAttribute="ccinfo">
                                        <span style="float: left">&gt;&gt;仅差一步之遥</span>

                                        <input type="hidden" name="ccname" value="${ccname}"/>
                                        <button type="submit" id="fSubmit" class="btn btn-m btn-blue"
                                                style="float: left;   margin:10px; margin-top: -10px;border:none;width:120px;">
                                            进入下一步
                                        </button>


                                        <span style="color: green" style="float: left">绿色网络，从我做起，亲们加油！！！</span>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="create-form-item clearfix por10">
                        <div class="name fl">
                            <!--                                    <input type="checkbox">-->
                            <img id="inst"
                                 src="${pageContext.request.contextPath }/dist/communityCreate/images/checked_grey.jpg"
                                 style="margin-top: -8px;"/>
                        </div>
                        <div class="create-form-con fl form-li">
                            <div class="form-c"> &nbsp;机构/老师学社</div>
                        </div>
                    </div>
                    <form id="instcommit" action="instcomplete" method="post" enctype="multipart/form-data"
                          class="next-form next-form-left ver next-form-large">
                        <div class="create-form-item clearfix">
                            <div class="name fl">
                                *公司/教师名称：
                            </div>
                            <div class="create-form-con fl">
                                <input placeholder="请填写公司或者教师名称，最多15个汉字，创建后名称不可修改" type="text" id="instName"
                                       class="width3" name="instName" value=""/>
                                <span id="checkname" style="color:red;"></span>
                                <input id="ccname" name="ccname" type="hidden" value="${ccname}">

                            </div>
                        </div>

                        <div class="create-form-item clearfix" style="margin-top:0px">
                            <div class="name fl">

                            </div>
                            <div class="create-form-con fl">

                                <div style="width: 200px;float:left">
                                    <input type="radio" name="dtype" checked value="yyzz" style="margin-bottom: 10px"/>我的营业执照<br>
                                    <img id="tranpic"
                                         src="${pageContext.request.contextPath }/dist/communityCreate/images/add.jpg"
                                         style="height: 117px; width: 177px;"/>
                                    <input type="file" onchange="preImg(this.id,'tranpic');" name="filepic"
                                           id="checkpic"
                                           style="display:none;">
                                    <span id="checktranpic" style="color:red;"></span>
                                </div>
                                <div><input type="radio" name="dtype" value="zgzs"
                                            style="margin-bottom: 10px"/>教师资格证书<br>
                                    <p>公司请上传有年检的营业执照副本扫描件</p>
                                    <p>教师请上传教师资格证书</p>
                                    <p style="padding-top: 20px;">文件小于2M</p>
                                    <p>支持JPG/PNG/BMP等格式图片</p>
                                </div>
                            </div>
                        </div>
                        <div class="create-form-item clearfix">
                            <div class="name fl">
                                *身份证号：
                            </div>
                            <div class="create-form-con fl">
                                <input placeholder="请输入身份证号码" type="text" id="idnumber" class="width3" name="idnumber"
                                       value=""/>
                                <span id="checkidnumber" style="color:red;"></span>
                            </div>
                        </div>
                        <div class="create-form-item clearfix">
                            <div class="name fl">

                            </div>
                            <div class="create-form-con fl">
                                <div style="width: 200px;margin-right:10px;float:left">*身份证正面扫描件<br>
                                    <img id="idzm"
                                         src="${pageContext.request.contextPath }/dist/communityCreate/images/add.jpg"/>
                                    <input type="file" onchange="preImg(this.id,'idzm');" name="filepic" id="idzmpic"
                                           style="display:none;">
                                    <span id="checkidzm" style="color:red;"></span>
                                </div>
                                <div style="width: 200px;margin-right:10px;float:left">*身份证反面扫描件<br>
                                    <img id="idfm"
                                         src="${pageContext.request.contextPath }/dist/communityCreate/images/add.jpg"/>
                                    <input type="file" onchange="preImg(this.id,'idfm');" name="filepic" id="idfmpic"
                                           style="display:none;">
                                    <span id="checkidfm" style="color:red;"></span>
                                </div>
                                <div><br>

                                    <p style="padding-top: 20px;">文件小于2M</p>
                                    <p>支持JPG/PNG/BMP等格式图片</p>
                                </div>
                            </div>
                        </div>

                        <div class="create-form-item clearfix">
                            <div class="create-form-con fl">
                                <div class="check">
                                    <input type="checkbox" id="cbAgree" checked="checked"/>已阅读并同意
                                    <a href="" target="_blank" style="color: #47c8fb">AWE社团规范</a>
                                    <span id="checkagree" style="color:red;"></span>
                                </div>
                            </div>
                        </div>

                        <div class="create-form-item clearfix">
                            <div class="create-form-con fl">
                                <button id="formSubmit" type="submit" class="btn btn-m btn-blue"
                                        style="border:none;width:120px;">下一步
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<jsp:include page="footer.jsp" flush="true"/>
<script type="text/javascript">
    /**
     * 从 file 域获取 本地图片 url
     */
    function getFileUrl(sourceId) {
        var url;
        if (navigator.userAgent.indexOf("MSIE") >= 1) { // IE
            url = document.getElementById(sourceId).value;
        } else if (navigator.userAgent.indexOf("Firefox") > 0) { // Firefox
            url = window.URL.createObjectURL(document.getElementById(sourceId).files.item(0));
        } else if (navigator.userAgent.indexOf("Chrome") > 0) { // Chrome
            url = window.URL.createObjectURL(document.getElementById(sourceId).files.item(0));
        }
        return url;
    }

    /**
     * 将本地图片 显示到浏览器上
     */
    function preImg(sourceId, targetId) {
        var url = getFileUrl(sourceId);
        var imgPre = document.getElementById(targetId);
        imgPre.style.display = "block";
        imgPre.src = url;
    }
</script>
<script>
    $(document).ready(function () {
        $("#person").click(function () {
            document.getElementById('person').src = '${pageContext.request.contextPath }/dist/communityCreate/images/checked.jpg';
            //or $('#id').attr('src','a.png');
            document.getElementById('inst').src = '${pageContext.request.contextPath }/dist/communityCreate/images/checked_grey.jpg';
            //or $('#id').attr('src','b.png');

        });

        $("#inst").click(function () {
            document.getElementById('person').src = '${pageContext.request.contextPath }/dist/communityCreate/images/checked_grey.jpg';
            //or $('#id').attr('src','a.png');
            document.getElementById('inst').src = '${pageContext.request.contextPath }/dist/communityCreate/images/checked.jpg';
            //or $('#id').attr('src','b.png');

        })
    })
</script>
<script type="text/javascript">

    $(document).ready(function () {

        $("#instName").blur(function () {
            //$("#checkname").text("");
            var val = $("#instName").val();
            var len = 0;
            for (var i = 0; i < val.length; i++) {
                var a = val.charAt(i);
                if (a.match(/[^\x00-\xff]/ig) != null) {
                    len += 2;
                }
                else {
                    len += 1;
                }
            }
            if (len == 0) {
                $("#checkname").text("名称不能为空");
            }
            else if (len > 30) {
                $("#checkname").text("名称最多15个汉字,请修改");
            } else {
                $("#checkname").text("");
                /*$.post("ajaxInstCccname",
                    {nick: $("#instName").val()},
                    function (data) {
                        if (data) {
                            $("#checkname").text("");
                        } else {
                            $("#checkname").text("有相同名称,请修改");
                        }
                    });*/
            }

        });
        $("#tranpic").click(function () {
            $("#checkpic").click();
        });
        $("#idzm").click(function () {
            $("#idzmpic").click();
        });
        $("#idfm").click(function () {
            $("#idfmpic").click();
        })
        $("#formSubmit").click(function () {
            if ($("#checkname").text() != '') {
                return false
            } else if ($("#instName").val() == '') {
                $("#checkname").text("请填写名称");
                return false
            } else if ($("#idnumber").val() == '') {
                $("#checkidnumber").text("请填写身份证号码");
                return false
            } else if (!checkCard()) {
                $("#checkidnumber").text("请填写正确身份证号码");
                return false
            } else if ($("#checkpic").val() == '') {
                $("#checktranpic").text("请上传营业执照或教师资格证书");
                return false
            } else if ($("#idzmpic").val() == '') {
                $("#checkidzm").text("请上传身份证正面图片");
                return false
            } else if ($("#idfmpic").val() == '') {
                $("#checkidfm").text("请上传身份证反面图片");
                return false
            } else if ($("#cbAgree").is(':checked') == false) {
                $("#checkagree").text("请阅读并同意社团规范");
                return false
            } else if ($("#ccuid").val() == 0) {
                alert("请登录！")
                return false
            }
            return true;
        });
    })
</script>
<script>
    function sexstr(a) {
        var c = -1;
        var b = a % 2;
        if (b == 0) {
            c = 2;
        }
        else if (b == 1) {
            c = 1;
        }
        return c;
    }


    var vcity = {
        11: "北京", 12: "天津", 13: "河北", 14: "山西", 15: "内蒙古",
        21: "辽宁", 22: "吉林", 23: "黑龙江", 31: "上海", 32: "江苏",
        33: "浙江", 34: "安徽", 35: "福建", 36: "江西", 37: "山东", 41: "河南",
        42: "湖北", 43: "湖南", 44: "广东", 45: "广西", 46: "海南", 50: "重庆",
        51: "四川", 52: "贵州", 53: "云南", 54: "西藏", 61: "陕西", 62: "甘肃",
        63: "青海", 64: "宁夏", 65: "新疆", 71: "台湾", 81: "香港", 82: "澳门", 91: "国外"
    };

    $(document).ready(function () {
        $("#idnumber").blur(function () {
            $("#checkidnumber").text('');
            checkCard();
        })
    })
    checkCard = function () {

        var card = document.getElementById('idnumber').value;
        //是否为空
        if (card === '') {
            $("#checkidnumber").text('请输入身份证号码');
            document.getElementById('idnumber').focus;
            return false;
        }
        //校验长度，类型
        if (isCardNo(card) === false) {
            $("#checkidnumber").text('您输入的身份证号码长度不正确');
            document.getElementById('idnumber').focus;
            return false;
        }
        //检查省份
        if (checkProvince(card) === false) {
            $("#checkidnumber").text('您输入的身份证号码省份不正确');
            document.getElementById('idnumber').focus;
            return false;
        }
        //校验生日
        if (checkBirthday(card) === false) {
            $("#checkidnumber").text('您输入的身份证号码生日不正确');
            document.getElementById('idnumber').focus();
            return false;
        }
        //检验位的检测
        if (checkParity(card) === false) {
            $("#checkidnumber").text('您的身份证校验位不正确');
            document.getElementById('nl1').focus();
            return false;
        }
        return true;
    }


    //检查号码是否符合规范，包括长度，类型
    isCardNo = function (card) {
        //身份证号码为15位或者18位，15位时全为数字，18位前17位为数字，最后一位是校验位，可能为数字或字符X
        var reg = /(^\d{15}$)|(^\d{17}(\d|X)$)/;
        if (reg.test(card) === false) {
            return false;
        }

        return true;
    };

    //取身份证前两位,校验省份
    checkProvince = function (card) {
        var province = card.substr(0, 2);
        if (vcity[province] == undefined) {
            return false;
        }
        return true;
    };

    //检查生日是否正确
    checkBirthday = function (card) {
        var len = card.length;
        //身份证15位时，次序为省（3位）市（3位）年（2位）月（2位）日（2位）校验位（3位），皆为数字
        if (len == 15) {
            var re_fifteen = /^(\d{6})(\d{2})(\d{2})(\d{2})(\d{3})$/;
            var arr_data = card.match(re_fifteen);
            var year = arr_data[2];
            var month = arr_data[3];
            var day = arr_data[4];
            var birthday = new Date('19' + year + '/' + month + '/' + day);
            return verifyBirthday('19' + year, month, day, birthday);
        }
        //身份证18位时，次序为省（3位）市（3位）年（4位）月（2位）日（2位）校验位（4位），校验位末尾可能为X
        if (len == '18') {
            var re_eighteen = /^(\d{6})(\d{4})(\d{2})(\d{2})(\d{3})([0-9]|X)$/;
            var arr_data = card.match(re_eighteen);
            var year = arr_data[2];
            var month = arr_data[3];
            var day = arr_data[4];
            var birthday = new Date(year + '/' + month + '/' + day);
            return verifyBirthday(year, month, day, birthday);
        }
        return false;
    };

    //校验日期
    verifyBirthday = function (year, month, day, birthday) {
        var now = new Date();
        var now_year = now.getFullYear();
        //年月日是否合理
        if (birthday.getFullYear() == year && (birthday.getMonth() + 1) == month && birthday.getDate() == day) {
            //判断年份的范围（3岁到100岁之间)
            var time = now_year - year;
            if (time >= 3 && time <= 100) {
                return true;
            }
            return false;
        }
        return false;
    };

    //校验位的检测
    checkParity = function (card) {
        //15位转18位
        card = changeFivteenToEighteen(card);
        var len = card.length;
        if (len == '18') {
            var arrInt = new Array(7, 9, 10, 5, 8, 4, 2, 1, 6, 3, 7, 9, 10, 5, 8, 4, 2);
            var arrCh = new Array('1', '0', 'X', '9', '8', '7', '6', '5', '4', '3', '2');
            var cardTemp = 0, i, valnum;
            for (i = 0; i < 17; i++) {
                cardTemp += card.substr(i, 1) * arrInt[i];
            }
            valnum = arrCh[cardTemp % 11];
            if (valnum == card.substr(17, 1)) {
                return true;
            }
            return false;
        }
        return false;
    };
    //15位转18位身份证号
    changeFivteenToEighteen = function (card) {
        if (card.length == 15) {
            var arrInt = new Array(7, 9, 10, 5, 8, 4, 2, 1, 6, 3, 7, 9, 10, 5, 8, 4, 2);
            var arrCh = new Array('1', '0', 'X', '9', '8', '7', '6', '5', '4', '3', '2');
            var cardTemp = 0, i;
            card = card.substr(0, 6) + '19' + card.substr(6, card.length - 6);
            for (i = 0; i < 17; i++) {
                cardTemp += card.substr(i, 1) * arrInt[i];
            }
            card += arrCh[cardTemp % 11];
            return card;
        }
        return card;
    };


</script>