<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>${modeTitle} To-do</title>
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
background-image: url("/image/photo-7.jpg");
background-repeat: no-repeat;
background-size: cover;
text-color: white;
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
<div class="container col-9">
    <form:form action="${pageContext.request.contextPath}/todo/${mode}" method="post" modelAttribute="todo">
        <form:hidden path="id"/>
        <div class="row bg-dark text-white mt-4">
            <div class="col-12 p-2">
                <h4>${modeTitle} To-do </h4>
            </div>
        </div>
        <div class="form-group offset-1 col-10 text-white">
            <form:label path="title">Title</form:label>
            <div class="row justify-content-start">
                <form:input class="form-control" path="title"></form:input>
            </div>
            <div class="row justify-content-end">
                <form:errors class="alert alert-danger " role="alert" path="title"></form:errors>
            </div>
        </div>
        <div class="form-group offset-1 col-10 text-white">
            <form:label path="description">Description</form:label>
            <div class="row justify-content-start">
                <form:textarea class="form-control" path="description" cols="60" rows="10"></form:textarea>
            </div>
            <div class="row justify-content-end">
                <form:errors class="alert alert-danger" role="alert" path="description"></form:errors>
            </div>
        </div>
        <div class="row offset-1 col-10">
            <input class="btn btn-primary" type="submit" name="submit" value="Submit">
            <form:button class="btn btn-secondary" name="cancel">Cancel</form:button>
        </div>
    </form:form>
</div>
</body>
</html>
