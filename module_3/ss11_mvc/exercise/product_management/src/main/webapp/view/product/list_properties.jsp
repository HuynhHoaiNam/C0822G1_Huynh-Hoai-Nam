<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 12/1/2022
  Time: 10:55 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Trang Danh Chi tiết</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
            crossorigin="anonymous"></script>
</head>
<body>
<h1>Trang Thông Tin Chi Tiết</h1>
<button class="btn btn-warning"><a href="/product">Quay Về Trang Danh Sách</a></button>
<table class="table table-dark table-striped">
    <tr>
        <th>STT</th>
        <th>Tên Sản Phẩm</th>
        <th>Giá</th>
        <th>Mô Tả</th>
        <th>Nhà Sản Xuất</th>
    </tr>
    <c:forEach var="productList" items="${productList}" varStatus="status">
        <tr>
            <td>${status.count}</td>
            <td>${productList.name}</td>
            <td>${productList.price}</td>
            <td>${productList.describe}</td>
            <td>${productList.producer}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
