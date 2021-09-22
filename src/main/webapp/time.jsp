<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="zh-TW">
<head>
  <title>廠商後台</title>
  <meta name="google-signin-client_id"
  content="849367464998-0c4najofsqmh3rteejq2dc3va9iqdps2.apps.googleusercontent.com">
  <style>
    body {
      background-color:#0d1326;
    }
    #timeCenter {
      color: #ffffff;
      position: relative;
      top : 350px;
      margin:  auto;
      width: 40px;
    }
    form{
      position:absolute;
      left: 45%;
      top :700px;
      
    }
  </style>
</head>
<body>

<div id="timeCenter">Error</div>
<script src="${pageContext.request.contextPath}/js/backstage/time.js"></script>

<form action="${pageContext.request.contextPath}/home" method="post">
  <div class="g-recaptcha" data-sitekey="6LdUNRobAAAAAJJakDhDglshLFmwJP1P2c12MBdP"
  data-callback='verifyCallback' data-action='ubmit'>Submit</div>
  <script src="https://www.google.com/recaptcha/enterprise.js" async defer></script><br>
  <input type="text" placeholder="帳號" name="email" value="AAA@AAA.com"><br>
  <input type="password" placeholder="密碼"name="password" value="AAA"><br>
  <input type="submit" value="登入">

</form>

<br/>
</body>
</html>