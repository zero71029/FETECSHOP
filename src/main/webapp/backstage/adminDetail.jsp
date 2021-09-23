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

            .mainColor {
                background-color: #62A5A1;
            }

            #timeCenter {
                color: #ffffff;
                position: relative;
                top: 350px;
                margin: auto;
                width: 40px;
            }
            ${
				errors==null ? null:".formCSS::placeholder{color: red;}"
			}
            .err{
                color: red;
            }
        </style>

        <body>



            <!-- <%-- 插入側邊欄--%> -->
            <jsp:include page="/backstage/Sidebar.jsp"></jsp:include>
            <!-- <%-- 中間主體///////////////////////////////////////////////////////////////////////////////////////--%> -->

            <div class="container-fluid">
                <div class="row justify-content-end">
                    <div class="col-md-10">
                        <!-- <%-- 中間主體--%> -->
                        <div class="row">
                            <div class="col-lg-1"></div>
                            <div class="col-lg-11">
                                <br>
                                <form action="${pageContext.request.contextPath}/backstage/saveAdmin" method="post" class="upgroup">

                                    <input type="hidden" name="id" value="${admin.id}">
                                    名稱 &nbsp;&nbsp;<input style="width: 80%;" type="text" name="name"  placeholder="${errors.name}"
                                        value="${admin.name}"><br><br>
                                    電話 &nbsp;&nbsp;<input style="width: 80%;" type="text" name="phone"  placeholder="${errors.phone}"
                                        value="${admin.phone}"><br><br>
                                    Email <input style="width: 80%;" type="text" name="email"  placeholder="${errors.email}"
                                        value="${admin.email}"><br><br>
                                    地址 &nbsp;&nbsp;<input style="width: 80%;" type="text" name="address" placeholder="${errors.address}"
                                        value="${admin.address}"><br><br>
                                    密碼 &nbsp;&nbsp;<input style="width: 80%;" type="password" name="password"  placeholder="${errors.password}"
                                        value="${admin.password}"><br><br>
                                    職位 &nbsp;&nbsp;<input style="width: 80%;" type="text" name="position" placeholder="${errors.position}"
                                        value="${admin.position}"><br><br>
                                    狀態 &nbsp;&nbsp;<select name="state" id="">
                                        <option value="1" ${admin.state==1 ? "selected" :""}>1在職</option>
                                        <option value="2" ${admin.state==2 ? "selected" :""}>2離職</option>
                                    </select><br>
                                    <span class="err"> ${errors.result}</span>
                                   <br>
                                    創建日期:${admin.create_data} <br>
                                    <button >修改/儲存</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </body>
        <script>
            //     function saveAdmin() {
            //     var formData = new FormData($(".upgroup")[0]);
            //     $.ajax({
            //         url: '${pageContext.request.contextPath}/backstage/saveAdmin',//接受請求的Servlet地址
            //         type: 'POST',
            //         data: formData,
            //         async: false,//同步請求
            //         cache: false,//不快取頁面
            //         contentType: false,//當form以multipart/form-data方式上傳檔案時，需要設定為false
            //         processData: false,//如果要傳送Dom樹資訊或其他不需要轉換的資訊，請設定為false

            //         success: function (json) {
            //             alert(json);
                      
            //         },
            //         error: function (returndata) {
            //             console.log(returndata);

            //         }
            //     });
             // }
        </script>

        </html>