<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<style>
    .div_flex { display: flex;}
    div {margin: 5px; border: 1px solid black;}
</style>
<body>
<c:if test=""></c:if>
<h1>로그인</h1>
로그인 완료되었습니다
반갑습니다 ${loginMember.userId} 님
<hr>
<a href="/item/items">Product</a>
<div class="div_flex">
    <div>Create</div>
    <div>Read</div>
    <div>Update</div>
    <div>Delete</div>
</div>
<a href="/member/members">Member</a>
<div class="div_flex">
    <div>Create</div>
    <div>Read</div>
    <div>Update</div>
    <div>Delete</div>
</div>
Order
<div class="div_flex">
    <div>Create</div>
    <div>Read</div>
    <div>Update</div>
    <div>Delete</div>
</div>

</body>
</html>
