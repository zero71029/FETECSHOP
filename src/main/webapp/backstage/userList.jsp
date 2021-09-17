<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <html lang="zh-TW">

        <head>
            <meta charset="UTF-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">

            <link rel="preconnect" href="https://fonts.gstatic.com">
            <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+TC&display=swap" rel="stylesheet">


            <!-- bootstrap的CSS、JS樣式放這裡  -->
            <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
            <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.rtl.min.css">
            <!-- <%-- jQuery放這裡 --%> -->
            <script src="${pageContext.request.contextPath}/js/jquery-3.4.1.js"></script>
            <!-- <%-- Header的CSS、JS樣式放這裡    --%> -->
            <!-- <%-- footer的CSS、JS樣式放這裡    --%> -->
            <!-- <%-- 主要的CSS、JS放在這裡--%> -->

            <title>商城後台</title>
        </head>
        </head>
        <style>
            div {
                /* border: 2px solid black; */
            }

            .headtop {
                height: 80px;
                position: sticky;
                top: 0px;
                z-index: 5;
            }

            .navfix {
                position: fixed;
                top: 80px;
                height: 100vh;
            }

            .navfix li {
                border: none;
                cursor: pointer;
            }

            .navfix li:hover {
                background-color: #afe3d5;
                color: #0c4128;
            }

            .list-group-item {
                background-color: transparent;
                color: white;
            }


            .accordion-item {
                text-align: center;
                background-color: #62A5A1;
                color: #0c4128;
            }


            .accordion-button {
                text-align: center;
            }

            .accordion-button:focus {
                text-align: center;
                background-color: #62A5A1;
                color: white;
            }

            .accordion-button:not(.collapsed) {
                text-align: center;
                background-color: #62A5A1;
                color: white;
            }

            .list-group-item {
                background-color: transparent;
                color: white;
            }

            .mainColor {
                background-color: #62A5A1;
            }

            .TTT:hover {
                background-color: #afe3d5;
            }

            /* 彈窗 */
            .hazy {

                position: fixed;
                width: 100%;
                height: 100%;
                background-color: rgba(0, 0, 0, 0.5);
                z-index: 40;

            }

            .cat {
                border: blue 1px solid;
                background-color: white;
                width: 830px;
                height: 450px;
                z-index: 50;
                position: absolute;
                left: 0%;
                right: 0%;
                margin: auto;
                top: 150px;
                border-radius: 15px;


            }

            .cat p {
                position: relative;
                text-align: right;
                right: 100px;
            }

            .cat form {
                top: 10px;
                position: relative;
                left: 20px;
            }

            .cat input {
                width: 95%;
            }

            .cat select {
                width: 95%;
            }

            /* 購物車返回 */
            .catReturn {
                top: -10px;
                right: -10px;
                position: absolute;
                background-color: red;
                width: 40px;
                height: 40px;
                border-radius: 50%;
                z-index: 20;
            }
        </style>

        <body>
            <!-- <%-- // 訂單細節 彈窗///////////////////////////////////////////////////////////////////////////////////////////////--%> -->
            <div class="hazy"></div>
            <div class="cat container" >
                <button class="catReturn">X</button>
                <div class="row detailTable">
                    
                    <div class="col-lg-3">xxx:</div><div class="col-lg-9">xxxxxxxxx</div>
                </div>
            </div>
            <!-- <%-- // 訂單細節結束///////////////////////////////////////////////////////////////////////////////////////////////--%> -->
            <!-- <%-- 頁首--%> -->
            <header class="container-fluid mainColor headtop">
                <a href='${pageContext.request.contextPath}/backstage/shopBack.jsp' class='title'>商城後台</a>
                <%-- <button class="userIcon"></button>--%>
            </header>
            <!-- <%-- 插入側邊欄--%> -->
            <jsp:include page="/backstage/Sidebar.jsp"></jsp:include>
            <!-- <%-- 中間主體///////////////////////////////////////////////////////////////////////////////////////--%> -->
            <!-- <%-- 中間主體--%> -->
            <div class="container-fluid">
                <div class="row justify-content-end">
                    <div class="col-md-10">
                        <!-- <%-- 抬頭--%> -->
                        <div class="row">
                            <div class="col-lg-3">
                                <div class="input-group mb-3">
                                    <input type="text" class="form-control" placeholder="會員ID"
                                        aria-label="Recipient's username" aria-describedby="button-addon2"
                                        id="selectUser">
                                    <button class="btn btn-outline-secondary search" type="button"
                                        id="buttonaddon2">搜索</button>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <table class="Table table-striped orderTable">
                                <tr>
                                    <td>ID</td>
                                    <td>姓名</td>
                                    <td>電話</td>
                                    <td>Email</td>
                                    <td>狀態</td>
                                    <td>訂單</td>
                                </tr>
                                <c:if test="${not empty userList}">
                                    <c:forEach varStatus="loop" begin="0" end="${userList.size()-1}" items="${userList}"
                                        var="s">
                                        <tr class="TTT" onclick="user(${s.userid})">
                                            <td>${s.userid}</td>
                                            <td>${s.firstname}&nbsp;&nbsp;${s.lastname}</td>
                                            <td>${s.phone}</td>
                                            <td>${s.email}</td>
                                            <td>${s.state == 1?"正常":"未驗證"}</td>
                                            <td class="col-lg-1 "><button type="button" class="btn btn-primary"
                                                    onclick="order('${s.userid}')">訂單 </button> </td>
                                        </tr>
                                    </c:forEach>
                                </c:if>
                            </table>

                        </div>
                    </div>
                </div>
            </div>
            </div>

        </body>
        <script>
            //彈窗
            $(".hazy").hide();
            $(".cat").hide();
            // 關閉按紐
            $('.catReturn').click(function () {
                $(".hazy").hide();
                $(".cat").hide();
            });
            //取得選取會員資料
            function user(userId) {
                $(".detailTable").empty();
                $(".hazy").show();
                $(".cat").show();
                $.ajax({
                    url: "${pageContext.request.contextPath}/backstage/userDetail/" + userId,
                    type: "get",
                    success: function (J) {
                        console.log(J);
                        var sell = 0;
                        $(".detailTable").append('<div class="col-lg-3">&nbsp;</div><div class="col-lg-9"></div>'+
                                '<div class="col-lg-3">編號:</div><div class="col-lg-9">'+J.userid +'</div>'+
                                '<div class="col-lg-3">firstname:</div><div class="col-lg-9">'+J.firstname+'</div>'+
                                '<div class="col-lg-3">lastname:</div><div class="col-lg-9">'+J.lastname+'</div>'+
                                '<div class="col-lg-3">電話:</div><div class="col-lg-9">'+J.phone+'</div>'+
                                '<div class="col-lg-3">email:</div><div class="col-lg-9">'+J.email+'</div>'+                                
                                '<div class="col-lg-3">公司:</div><div class="col-lg-9">'+J.company+'</div>'+
                                '<div class="col-lg-3">order_name:</div><div class="col-lg-9">'+J.order_name+'</div>'+
                                '<div class="col-lg-3">order_address:</div><div class="col-lg-9">'+J.order_address+'</div>'+
                                '<div class="col-lg-3">order_postalcode:</div><div class="col-lg-9">'+J.order_postalcode+'</div>'+
                                '<div class="col-lg-3">order_email:</div><div class="col-lg-9">'+J.order_email+'</div>'+
                                '<div class="col-lg-3">order_phone:</div><div class="col-lg-9">'+J.order_phone+'</div>'+
                                '<div class="col-lg-3">message:</div><div class="col-lg-9">'+J.message+'</div>');
                    },
                    error: doError
                });
            };
            function doError(json) {
                console.log("error ajax");
            }
            //彈窗結束
            $("#buttonaddon2").on("click", function () {
                if ($("#selectUser").val() != "")
                    window.location.href = "${pageContext.request.contextPath}/backstage/selectUser/" + $("#selectUser").val();
            })
            function order(userId) {
                window.location.href = "${pageContext.request.contextPath}/backstage/selectOrder/" + userId;
            }
            //按回車
            $("#selectUser").keydown(function (e) {
                if ($("#selectUser").val() != "")
                    if (e.keyCode == 13) window.location.href = "${pageContext.request.contextPath}/backstage/selectUser/" + $("#selectUser").val();
            })

        </script>

        </html>