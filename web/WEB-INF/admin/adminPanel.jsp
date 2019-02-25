<%--
  Created by IntelliJ IDEA.
  User: edona
  Date: 25.02.2019
  Time: 19:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Admin Panel</title>
</head>
<body>
<h4>Welcome Admin jan</h4><br><br>
<h3><a href="/home">Home Page</a> </h3>
<c:if test="${message != null}">
    ${message}
</c:if>
Add Movie : <br><br>

<form action="/addMovie" method="post" enctype="multipart/form-data">

    Title : <input type="text" name="title"><br>
    Description : <input type="text" name="descr"><br>
    Year : <input type="text" name="year"><br>
    Genres : <br>
    <c:forEach items="${allGenres}" var="genres">
     ${genres.name} : <input type="checkbox" name="cats" value="${genres.name}"><br>
    </c:forEach>
    <br>
    Photo : <input type="file" name="photo"><br><br>
    Director : <input type="text" name="director"><br>
    <input type="submit" name="ok">

</form><br><br>

Add Genre: <br><br>

<form action="/addGenre" method="post">

    Name : <input type="text" name="name">
    <input type="submit" name="ok">

</form>


</body>
</html>
