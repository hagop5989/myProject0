<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<style>
    table, tr, th, td {
        border-collapse: collapse;
        border: 1px solid black;
    }

    .error {
        color: red;
    }

    .formControl {
        width: 200px;
        display: block;
    }

    .submitBtn {
        background-color: lightslategrey;
        color: white;
        border: none;
        padding: 5px 15px;
        text-align: center;
        display: inline-block;
        margin: 4px 2px;
        cursor: pointer;
    }

    .deleteBtn {
        background-color: lightcoral;
        color: white;
        border: none;
        padding: 5px 15px;
        text-align: center;
        display: inline-block;
        margin: 4px 2px;
        cursor: pointer;
    }

</style>
<body>
<h1>아이템</h1>

<c:if test="${not empty message}">
    <div style="background: skyblue">메세지 : ${message}</div>
</c:if>
<hr>

<form:form action="/item/select" method="get">
    <input type="text" name="search" placeholder="아이템명을 입력하세요!">
    <input class="submitBtn" type="submit" value="조회">
</form:form>

<div>
    <h2>아이템 입력 & 조회 & 수정 & 삭제</h2>
    <form:form action="${selected == null ? '/item/insert':'/item/update'}" method="post" modelAttribute="item">
        <div><span>itemId:</span>
            <form:input path="itemId" value="${selected != null ? selected.itemId:1}" readonly="true" cssClass="formControl" />
        </div>
        <div>
            <span>itemName:</span>
            <form:input path="itemName" value="${selected != null ? selected.itemName: '기본값'}" cssClass="formControl"/>
            <form:errors path="itemName" cssClass="error"/>
        </div>
        <div>
            <span>itemPrice:</span>
            <form:input path="itemPrice" cssClass="formControl" value="${selected != null ? selected.itemPrice : '2000'}"/>
        </div>
        <c:if test="${selected == null}">
            <input class="submitBtn" type="submit" value="입력">
        </c:if>

        <c:if test="${selected != null}">
            <input type="hidden" name="prevName" value="${selected.itemId}">
            <input class="submitBtn" type="submit" value="수정">
        </c:if>
    </form:form>

    <form action="/item/delete" method="post" >
        <input type="hidden" name="itemId" value="${selected.itemId}">
        <input type="hidden" name="itemName" value="${selected.itemName}">
        <input class="deleteBtn" type="submit" value="삭제">
    </form>
</div>

<hr>

<h3>Item 목록</h3>

<form:form action="/item/items" method="get">
    <input class="submitBtn" type="submit" value="조회">
</form:form>

<table>
    <thead>
    <tr style="background: lightslategrey; font-weight: bold; text-align: center;">
        <td>itemId</td>
        <td>itemName</td>
        <td>itemPrice</td>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${items}" var="item">
        <tr>
            <td>${item.itemId}</td>
            <td>${item.itemName}</td>
            <td>${item.itemPrice}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>

</body>
</html>
