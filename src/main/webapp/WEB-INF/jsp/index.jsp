<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Todo List</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
</head>
<body>
<style type ="text/css">
body
{
background-image: url("/image/photo-6.png");
background-repeat: no-repeat;
background-size: cover;
text-align: center;
}
.navbar{
background-color:black;
navbar:center;
font-family: Helvetica, Arial, sans-serif;
font-size:100%;
}
.topnav-centered{
float: none;
position: absolute;
top: 50%;
left: 50%;
transform: translate(-50%, -50%);
}
</style>
<jsp:include page="/WEB-INF/jsp/nav-bar.jsp"/>
<div class="container-fluid">
    <div class="row mt-4">
        <div class="col-12">
            <h3 class="bg-dark text-white p-2">Todo Items</h3>
        </div>
    </div>
    <table class="table table-striped">
        <thead>
        <tr>
            <th scope="col"><label>Title</label></th>
            <th scope="col"><label>Completed</label></th>
            <th scope="col"><label>Action</label></th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="todo" items="${todos}">
        <tr>
            <th scope="row">${todo.id}</th>
            <td>
                    ${todo.title}
            </td>
            <td>
                    ${todo.completed}
            </td>
            <td>
                <div class="btn-group" role="group" aria-label="Basic example">
                    <a class="btn btn-secondary" href="${pageContext.request.contextPath}/todo/edit/${todo.id}">Edit</a>
                    <a class="btn btn-primary" href="${pageContext.request.contextPath}/todo/complete/${todo.id}">Complete</a>
                    <a class="btn btn-dark" href="${pageContext.request.contextPath}/todo/delete/${todo.id}">Delete</a>
                </div>
            </td>
        </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
