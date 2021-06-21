<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"/>
    <title>Students</title>
</head>
<body>
<form action="/students/add">
    <label>
        <input name="name" type="text"/>
    </label>
    <label>
        <input name="age" type="number"/>
    </label>
    <input type="submit"/>
</form>
<div class="container">
    <div class="col-12">
        <a class="btn btn-success" href="/view/jsp/add-student.jsp"><i class="far fa-trash-alt"></i></a>
        <table class="table table-bordered my-2">
            <thead>
            <tr>
                <th>id</th>
                <th>name</th>
                <th>age</th>
                <th>actions</th>
            </tr>
            </thead>
            <tbody>
                <c:forEach items="${students}" var="student">
                    <tr>
                        <td>${student.id}</td>
                        <td>${student.name}</td>
                        <td>${student.age}</td>
                        <td><a class="btn btn-danger" href="/students/delete/${student.id}"><i class="far fa-trash-alt"></i></a></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</div>
</body>
</html>