<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 11/9/2022
  Time: 2:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Trang Danh Sách Customer</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

    <link href=“https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css” rel=“stylesheet”
          integrity=“sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC” crossorigin=“anonymous”>
    <link rel=“stylesheet” href=“/datatables/css/dataTables.bootstrap5.min.css”>
</head>
<body>
<div>
    <!--    Header-->
    <div class="row container-fluid" style="background: #41464b; padding: 0">
        <div class="col-lg-3">
            <img src="https://furamavietnam.com/wp-content/uploads/2018/08/logo@2x.png" alt="Lỗi"
                 style="width: 60px; margin-left: 60px">
        </div>
        <div class="col-lg-2" style="margin-top: 25px">
            <img src="https://smartdata.tonytemplates.com/bestel/wp-content/uploads/2018/05/widget-tripadvisor-logo.png"
                 style="height: 30%"><br>
            <img src="https://furamavietnam.com/wp-content/uploads/2018/08/widget-tripadvisor-rating.png" alt="Lỗi"
                 style="height: 30%">
        </div>
        <div class="col-lg-7 bg-light">
            <div class="row">
                <div class="info col-lg-6">
                    <p style="text-align: center">
                        103 – 105 Đường Võ Nguyên Giáp, Phường Khuê Mỹ, Quận Ngũ hành Sơn, Tp. Đà Nẵng, Việt Nam
                        7.0 km từ Sân bay Quốc tế Đà Nẵng
                    </p>
                </div>
                <div class="info col-lg-4">
                    <p style="text-align: center; margin: 0">84-236-3847 333/888 <br>reservation@furamavietnam.com</p>
                </div>
                <div class="info col-lg-2">
                    <p style="margin: 0">Nguyễn Văn A</p>
                </div>
            </div>
        </div>
    </div>

    <!--    Navbar-->
    <div class="row sticky-top" style="background: #046056; height: 60px; text-align: center">
        <nav class="navbar navbar-expand-lg" style="background: #046056">
            <div class="collapse navbar-collapse container-fluid" id="navbarNavAltMarkup">
                <div class="col-lg-1">

                </div>
                <div class="navbar-nav col-lg-8">
                    <!--DropDowns-->
                    <div class="btn-group">
                        <a class="nav-link active a" aria-current="page" href="/furama?action=showFurama">Trang
                            Chủ</a>
                    </div>
                    <!--DropDowns2-->
                    <div class="btn-group" style="margin-left: 30px">
                        <a class="nav-link active a" aria-current="page" href="/furama?action=showCustomer"
                        >Khách Hàng</a>
                    </div>
                    <div class="btn-group" style="margin-left: 30px">
                        <p>Nhân Viên</p>
                    </div>

                    <div class="btn-group" style="margin-left: 30px">
                        <p>Dịch Vụ</p>
                    </div>
                    <div class="btn-group" style="margin-left: 30px">
                        <p>Hợp Đồng</p>
                    </div>
                </div>
<%--                <div class="col-lg-3">--%>
<%--                    <form class="d-flex">--%>
<%--                        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">--%>
<%--                        <button class="btn btn-outline-success text-white" type="submit">Search</button>--%>
<%--                    </form>--%>
                <div class="col-lg-3">
                    <form  action="/furama?action=search" method="post" class="d-flex">
                        <input type="hidden" name="action" value="search">
                        <input class="form-control me-2"  type="text" placeholder="Tên" aria-label="Search"
                               name="nameInput">
                        <input class="form-control me-2"  type="text" placeholder="Email" aria-label="Search"
                               name="emailInput">
                        <input class="form-control me-2"  type="text" placeholder="Địa Chỉ" aria-label="Search"
                               name="addressInput">
                        <button class="btn btn-outline-success text-white" type="submit">Search</button>
                    </form>
                </div>
            </div>
        </nav>
    </div>

    <!--    Main Content List-->
    <!--Danh Sách Khách Hàng-->
    <div class="col-lg-12" style="text-align: center;background-color: lightyellow"><h1 style="margin: 0">Danh Sách
        Khách Hàng</h1></div>
    <div>
        <td>
            <button class="btn btn-primary"><a href="/furama?action=create" style="color: white; text-decoration: none">Thêm Mới</a></button>
        </td>
        <table id="tableStudent" class="table table-dark table-striped" style="width:100%">
            <thead>
            <tr>
                <th scope="col">STT</th>
                <th scope="col">Mã Khách Hàng</th>
                <th scope="col">Tên Khách Hàng</th>
                <th scope="col">Ngày Sinh</th>
                <th scope="col">Giới Tính</th>
                <th scope="col">Số cmnd</th>
                <th scope="col">Số đt</th>
                <th scope="col">Email</th>
                <th scope="col">Địa Chỉ</th>
                <th colspan="3" style="text-align: center">Chức Năng</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <c:forEach var="customer" items="${customerList}" varStatus="status">
            <tr>
                <td scope="row">${status.count}</td>
<%--                hiển thị mã khách hàng khi search--%>
<%--                <c:forEach var="cusType" items="${customerTypeList}">--%>
<%--                    <c:if test="${cusType.getIdType() == customer.getCustomerTypeId()}">--%>
<%--                        <td>${cusType.getNameType()}</td>--%>
<%--                    </c:if>--%>
<%--                </c:forEach>--%>
                <td>${customer.getCustomerType().getNameType()}</td>
                <td>${customer.getName()}</td>
                <td>${customer.getDateOfBirth()}</td>
                <td>
                    <label> <c:if test="${customer.isGender()}">
                        Nam</label>
                    <label></c:if>
                        <c:if test="${!customer.isGender()}">
                            Nữ
                        </c:if></label>
                </td>
                <td>${customer.getIdCard()}</td>
                <td>${customer.getPhoneNumber()}</td>
                <td>${customer.getEmail()}</td>
                <td>${customer.getAddress()}</td>
                <td><button class="btn btn-primary" ><a href="/furama?action=update&id=${customer.getId()}" style="color: white; text-decoration: none" >Sửa</a></button></td>
                <td><button  type="button"  onclick="idRemove('${customer.getId()}','${customer.getName()}') "
                            class="btn btn-danger" data-bs-toggle="modal"
                            data-bs-target="#exampleRemove">
                    Xoá
                </button></td>
            </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
<%--    Modal Xoá--%>
    <div class="modal fade" id="exampleRemove" tabindex="-1" aria-labelledby="exampleModalLabel"
         aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Yêu Cầu Xoá Khách Hàng</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal"
                            aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    Bạn chắc chắn muốn xoá?
<%--                    nameInput của funtion bên dươi--%>
                    <span id="nameInput"></span>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Huỷ
                    </button>
                    <form action="/furama?action=delete" method="post">
<%--                        name="id" của getParameter("id")--%>
                        <input type="hidden" name="id" id="idInput">
                        <button class="btn btn-primary">Xoá</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!--    Footer-->
    <div class="row" style="background: #046056">
        <div class="col-lg-2">
        </div>
        <div class="col-lg-3" style="background: #343a40; color: white"><h1 style="color: #cbbe73">Hướng Dẫn Di
            Chuyển</h1>
            <p>Khu nghỉ dưỡng Furama là cơ sở hàng đầu để khám phá một trong những điểm đến hấp dẫn nhất Châu Á. Chỉ
                cách Đà Nẵng một quãng lái xe ngắn là bốn Di sản Văn hóa Thế giới được UNESCO công nhận:</p>
            <h4 style="color: #cbbe73">Địa Điểm</h4>
            <ol style="color: white">
                <li>Cố Đô Huế</li>
                <li style="text-decoration-line: overline">Phố Cổ Hội An</li>
                <li style="text-decoration-line: overline">Thánh Địa Mỹ Sơn</li>
                <li style="text-decoration-line: overline">Động Phong Nha</li>
            </ol>
        </div>
        <div class="col-lg-3" style="margin-top: 30px">
            <ul style="color: darkgray">
                <li>Giá Công Bố</li>
                <li style="margin-top: 10px">Lifestyle Blog</li>
                <li style="margin-top: 10px">Tuyển Dụng</li>
                <li style="margin-top: 10px">Liên Hệ</li>
            </ul>
            <img style="margin-top: 200px"
                 src="https://furamavietnam.com/wp-content/uploads/2019/02/Ariyana-Tourism-Complex-02-2.png"
                 alt="Ariyana Tourism Complex" width="500px;"></div>
        <div class="col-lg-4">
            <h5 style="color: #cbbe73">Liên Hệ</h5>
            <p style="color: darkgray; margin: 40px">103 - 105 Vo Nguyen Giap Street, Khue My Ward, Ngu Hanh Son
                District, Danang City, Vietnam
                Tel.: 84-236-3847 333/888 * Fax: 84-236-3847 666
                Email: reservation@furamavietnam.com * www.furamavietnam.com GDS Codes: Amadeus-GD DADFUR,
                Galileo/Apollo-GD 16236, Sabre-GD 032771, Worldspan- GD DADFU</p>
        </div>
    </div>
</div>

<script>
    function idRemove(id, name) {
        document.getElementById("idInput").value = id;
        document.getElementById("nameInput").innerText=name;
    }
</script>
<script src="jquery/jquery-3.5.1.min.js"></script>
<script src="datatables/js/jquery.dataTables.min.js"></script>
<script src="datatables/js/dataTables.bootstrap5.min.js"></script>
<script>
    $(document).ready(function() {
        $('#tableStudent').dataTable( {
            "dom": 'lrtip',
            "lengthChange": false,
            "pageLength": 5
        } );
    } );
</script>
</body>
</html>
