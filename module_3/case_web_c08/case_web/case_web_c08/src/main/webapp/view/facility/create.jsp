<%--
  Created by IntelliJ IDEA.
  User: buida
  Date: 07/12/2022
  Time: 9:53 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

</head>
<body>
<h1 style="text-align: center">Trang Thêm Mới Dịch Vụ</h1>
<h3><button class="btn btn-warning"><a href="/facility" style="text-decoration: none;color: white"><= Back</a></button></h3>
<form action="/facility?action=create" method="post">
    <select class="form-control text-center" style="width: 100px ;margin-left: 45%" id="elements" onchange="showValue()">
        <option value="1" selected>Villa</option>
        <option value="2">House</option>
        <option value="3">Room</option>
    </select>
    <div id="results"></div>
</form>
<script>
    //villa
    let fom1= "<div class=\"row col-12\">\n" +
        "    <div class=\"row col-4\">\n" +
        "    </div>\n" +
        "    <div class=\"row col-4\" >\n" +
        "        <div class=\"form-group distance\">\n" +
        "            <label for=\"name\">Tên dịch vụ</label>\n" +
        "            <input type=\"text\" class=\"form-control inputSize\" id=\"name\" name=\"name\" placeholder=\"Tên dịch vụ\">\n" +
        "        </div>\n" +
        "        <div class=\"form-group distance\">\n" +
        "            <label for=\"area\">Diện tích</label>\n" +
        "            <input type=\"text\" class=\"form-control inputSize\" id=\"area\" name=\"area\" placeholder=\"Diện tích\">\n" +
        "        </div>\n" +
        "        <div class=\"form-group distance\">\n" +
        "            <label for=\"cost\">Chi phí thuê</label>\n" +
        "            <input type=\"text\" class=\"form-control inputSize\" id=\"cost\" name=\"cost\" placeholder=\"Chi phí thuê\">\n" +
        "        </div>\n" +
        "        <div class=\"form-group distance\">\n" +
        "            <label for=\"max-people\">Số người tối đa</label>\n" +
        "            <input type=\"text\" class=\"form-control inputSize\" id=\"maxPeople\" name=\"maxPeople\" placeholder=\"Số người tối đa\">\n" +
        "        </div>\n" +
        "        <div class=\"form-group distance\">\n" +
        "            <label for=\"standard-room\">Tiêu chuẩn phòng</label>\n" +
        "            <input type=\"text\" class=\"form-control inputSize\" id=\"standardRoom\" name=\"standardRoom\" placeholder=\"Tiêu chuẩn phòng\">\n" +
        "        </div>\n" +
        "        <div class=\"form-group distance\">\n" +
        "            <label for=\"description-other-convenience\">Mô tả tiện nghi</label>\n" +
        "            <input type=\"text\" class=\"form-control inputSize\" id=\"descriptionOtherConvenience\" name=\"descriptionOtherConvenience\" placeholder=\"Mô tả tiện nghi\">\n" +
        "        </div>\n" +
        "        <div class=\"form-group distance\">\n" +
        "            <label for=\"pool-area\">Diện tích hồ bơi</label>\n" +
        "            <input type=\"text\" class=\"form-control inputSize\" id=\"poolArea\" name=\"poolArea\" placeholder=\"Diện tích hồ bơi\">\n" +
        "        </div>\n" +
        "        <div class=\"form-group distance\">\n" +
        "            <label for=\"number-of-floor\">Số tầng</label>\n" +
        "            <input type=\"text\" class=\"form-control inputSize\" id=\"numberOfFloor\" name=\"numberOfFloors\" placeholder=\"Số tầng\">\n" +
        "        </div>\n" +
        "\n" +
        "<br>" +
        "<br>" +
        "        <div class=\"distance\">\n" +
        "            <select name=\"rentTypeId\" class=\"custom-select form-control\">\n" +
        "                <option selected>Kiểu thuê</option>\n" +
        "                <option value=\"1\">year</option>\n" +
        "                <option value=\"2\">month</option>\n" +
        "                <option value=\"3\">day</option>\n" +
        "                <option value=\"4\">hour</option>\n" +
        "            </select>\n" +
        "        </div>\n" +
        "\n" +
        "<br>" +
        "<br>" +
        "        <div class=\"distance\">\n" +
        "            <select name=\"facilityTypeId\" class=\"custom-select form-control\">\n" +
        "                <option  selected>Loại dịch vụ</option>\n" +
        "                <option value=\"1\">villa</option>\n" +
        "                <option value=\"2\">house</option>\n" +
        "                <option value=\"3\">room</option>\n" +
        "            </select>\n" +
        "        </div>\n" +
        "        <button type=\"submit\" class=\"btn btn-primary\">Thêm mới </button>\n" +
        "    </div>\n" +
        "    <div class=\"row col-4\">\n" +
        "    </div>\n" +
        "</div>";
    //house
    let fom2= "<div class=\"row col-12\">\n" +
        "    <div class=\"row col-4\">\n" +
        "    </div>\n" +
        "    <div class=\"row col-4\">\n" +

        "        <div class=\"form-group distance\">\n" +
        "            <label for=\"name\">Tên dịch vụ</label>\n" +
        "            <input type=\"text\" class=\"form-control inputSize\" id=\"name\" name=\"name\" placeholder=\"Tên dịch vụ\">\n" +
        "        </div>\n" +
        "        <div class=\"form-group distance\">\n" +
        "            <label for=\"area\">Diện tích</label>\n" +
        "            <input type=\"text\" class=\"form-control inputSize\" id=\"area\" name=\"area\" placeholder=\"Diện tích\">\n" +
        "        </div>\n" +
        "        <div class=\"form-group distance\">\n" +
        "            <label for=\"cost\">Chi phí thuê</label>\n" +
        "            <input type=\"text\" class=\"form-control inputSize\" id=\"cost\" name=\"cost\" placeholder=\"Chi phí thuê\">\n" +
        "        </div>\n" +
        "        <div class=\"form-group distance\">\n" +
        "            <label for=\"max-people\">Số người tối đa</label>\n" +
        "            <input type=\"text\" class=\"form-control inputSize\" id=\"maxPeople\" name=\"maxPeople\" placeholder=\"Số người tối đa\">\n" +
        "        </div>\n" +
        "        <div class=\"form-group distance\">\n" +
        "            <label for=\"standard-room\">Tiêu chuẩn phòng</label>\n" +
        "            <input type=\"text\" class=\"form-control inputSize\" id=\"standardRoom\" name=\"standardRoom\" placeholder=\"Tiêu chuẩn phòng\">\n" +
        "        </div>\n" +
        "        <div class=\"form-group distance\">\n" +
        "            <label for=\"description-other-convenience\">Mô tả tiện nghi</label>\n" +
        "            <input type=\"text\" class=\"form-control inputSize\" id=\"descriptionOtherConvenience\" name=\"descriptionOtherConvenience\" placeholder=\"Mô tả tiện nghi\">\n" +
        "        </div>\n" +
        "        <div class=\"form-group distance\">\n" +
        "            <label for=\"number-of-floor\">Số tầng</label>\n" +
        "            <input type=\"text\" class=\"form-control inputSize\" id=\"numberOfFloor\" name=\"numberOfFloors\" placeholder=\"Số tầng\">\n" +
        "        </div>\n" +
        "\n" +
        "<br>" +
        "<br>" +
        "        <div class=\"distance\">\n" +
        "            <select name=\"rentTypeId\" class=\"custom-select form-control\">\n" +
        "                <option selected>Kiểu thuê</option>\n" +
        "                <option value=\"1\">year</option>\n" +
        "                <option value=\"2\">month</option>\n" +
        "                <option value=\"3\">day</option>\n" +
        "                <option value=\"4\">hour</option>\n" +
        "            </select>\n" +
        "        </div>\n" +
        "\n" +
        "<br>" +
        "<br>" +
        "        <div class=\"distance\">\n" +
        "            <select name=\"facilityTypeId\" class=\"custom-select form-control\">\n" +
        "                <option  selected>Loại dịch vụ</option>\n" +
        "                <option value=\"1\">villa</option>\n" +
        "                <option value=\"2\">house</option>\n" +
        "                <option value=\"3\">room</option>\n" +
        "            </select>\n" +
        "        </div>\n" +
        "        <button type=\"submit\" class=\"btn btn-primary\">Thêm mới </button>\n" +
        "    </div>\n" +
        "    <div class=\"row col-4\">\n" +
        "    </div>\n" +
        "</div>";
    //room
    let fom3= "<div class=\"row col-12\">\n" +
        "    <div class=\"row col-4\">\n" +
        "    </div>\n" +
        "    <div class=\"row col-4\" >\n" +
        "        <div class=\"form-group distance\">\n" +
        "            <label for=\"name\">Tên dịch vụ</label>\n" +
        "            <input type=\"text\" class=\"form-control inputSize\" id=\"name\" name=\"name\" placeholder=\"Tên dịch vụ\">\n" +
        "        </div>\n" +
        "        <div class=\"form-group distance\">\n" +
        "            <label for=\"area\">Diện tích</label>\n" +
        "            <input type=\"text\" class=\"form-control inputSize\" id=\"area\" name=\"area\" placeholder=\"Diện tích\">\n" +
        "        </div>\n" +
        "        <div class=\"form-group distance\">\n" +
        "            <label for=\"cost\">Chi phí thuê</label>\n" +
        "            <input type=\"text\" class=\"form-control inputSize\" id=\"cost\" name=\"cost\" placeholder=\"Chi phí thuê\">\n" +
        "        </div>\n" +
        "        <div class=\"form-group distance\">\n" +
        "            <label for=\"max-people\">Số người tối đa</label>\n" +
        "            <input type=\"text\" class=\"form-control inputSize\" id=\"maxPeople\" name=\"maxPeople\" placeholder=\"Số người tối đa\">\n" +
        "        </div>\n" +
        "        <div class=\"form-group distance\">\n" +
        "            <label for=\"standard-room\">Tiêu chuẩn phòng</label>\n" +
        "            <input type=\"text\" class=\"form-control inputSize\" id=\"standardRoom\" name=\"standardRoom\" placeholder=\"Tiêu chuẩn phòng\">\n" +
        "        </div>\n" +
        "        <div class=\"form-group distance\">\n" +
        "            <label for=\"description-other-convenience\">Mô tả tiện nghi</label>\n" +
        "            <input type=\"text\" class=\"form-control inputSize\" id=\"descriptionOtherConvenience\" name=\"descriptionOtherConvenience\" placeholder=\"Mô tả tiện nghi\">\n" +
        "        </div>\n" +
        "        <div class=\"form-group distance\">\n" +
        "            <label for=\"facility-free\">Dịch vụ miễn phí đi kèm</label>\n" +
        "            <input type=\"text\" class=\"form-control inputSize\" id=\"facilityFree\"  name=\"facilityFree\" placeholder=\"Dịch vụ miễn phí đi kèm\">\n" +
        "        </div>\n" +
        "\n" +
        "<br>" +
        "<br>" +
        "        <div class=\"distance\">\n" +
        "            <select name=\"rentTypeId\" class=\"custom-select form-control\">\n" +
        "                <option selected>Kiểu thuê</option>\n" +
        "                <option value=\"1\">year</option>\n" +
        "                <option value=\"2\">month</option>\n" +
        "                <option value=\"3\">day</option>\n" +
        "                <option value=\"4\">hour</option>\n" +
        "            </select>\n" +
        "        </div>\n" +
        "\n" +
        "<br>" +
        "<br>" +
        "        <div class=\"distance\">\n" +
        "            <select name=\"facilityTypeId\" class=\"custom-select form-control\">\n" +
        "                <option  selected>Loại dịch vụ</option>\n" +
        "                <option value=\"1\">villa</option>\n" +
        "                <option value=\"2\">house</option>\n" +
        "                <option value=\"3\">room</option>\n" +
        "            </select>\n" +
        "        </div>\n" +
        "        <button type=\"submit\" class=\"btn btn-primary\">Thêm mới </button>\n" +
        "    </div>\n" +
        "    <div class=\"row col-4\">\n" +
        "    </div>\n" +
        "</div>";

    document.getElementById("results").innerHTML =  fom1;

    function showValue(){
        var ele = elements.value;
        if (ele == 1) {
            document.getElementById("results").innerHTML =  fom1;
        }else if (ele ==2) {
            document.getElementById("results").innerHTML =  fom2;
        }else {
            document.getElementById("results").innerHTML =  fom3;
        }
    }
</script>

</body>
</html>
