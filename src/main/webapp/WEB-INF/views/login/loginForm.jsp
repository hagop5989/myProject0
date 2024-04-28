<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>로그인</h1>
가입
<form action="/login/signIn" method="post">
    <input type="text" name="userId" value="">
    <input type="text" name="password" value="">
    <input type="submit" value="회원가입">
</form>

조회
<form action="/login/login" method="post">
<input type="text" name="userId" value="">
<input type="text" name="password" value="">
<input type="submit" value="로그인">
</form>




</body>
</html>
