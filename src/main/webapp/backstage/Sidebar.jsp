<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <style>
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
            .headtop{font-size:  2rem;}
            .headtop a{text-decoration: none;} 
        </style>
        <!-- <%-- 頁首--%> -->
        <header class="container-fluid mainColor headtop">
            <div class="row">
                <a href='${pageContext.request.contextPath}/backstage/shopBack.jsp' class='col-md-2'>商城後台</a>
                <div class='col-md-8'></div>
                <span class='col-md-2' style="">${adminLogin.name} <a href="${pageContext.request.contextPath}/backstage/Signout">登出</a></span>
            </div>

        </header>
        <div class="col-md-2 navfix mainColor">
            <ul class="list-group">
                <button class="list-group-item"
                    onclick="javascript:location.href='${pageContext.request.contextPath}/backstage/selectOrder?pag=1&state=1'">
                    訂單管理
                </button>
                <button class="list-group-item"
                    onclick="javascript:location.href='${pageContext.request.contextPath}/backstage/product?pag=1&state=1'">
                    商品管理
                </button>
                <button class="list-group-item"
                    onclick="javascript:location.href='${pageContext.request.contextPath}/backstage/userList/0'">會員管理
                </button>
                <button class="list-group-item "
                    onclick="javascript:location.href='${pageContext.request.contextPath}/backstage/admin'">員工管理
                </button>
                <button class="list-group-item "
                    onclick="javascript:location.href='${pageContext.request.contextPath}/backstage/messList?state=1'">客服管理
                </button>

            </ul>
        </div>