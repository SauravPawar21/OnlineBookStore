<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Home</title>
<%@include file="/Componets/bootstrapcss.jsp" %>
<style>
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box; /* Include padding and border in element's total width and height */
    }
    body {
        font-family: Arial, sans-serif;
        padding: 0;
        margin: 0;
    }
    
    
    .content {
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        text-align: center;
        color: white;
    }
    h1 {
        font-size: 2.5em;
        margin-bottom: 1px;
        color:#282726;
    }
    p {
        font-size: 1.2em;
        color:#282726;
    }
</style>
</head>
<body>
<%@include file="/Componets/NavBar.jsp" %>

    <img class="books-img" src="img/olia-gozha-jmm8F_V9tiA-unsplash.jpg" alt="Books Image" width="1366px" height="492px">
    <div class="content">
        <h1>Welcome to Our Bookstore</h1>
        <p>Discover a world of knowledge with our vast collection of books!</p>
    </div>

<%@include file="/Componets/Footer.jsp" %>
</body>
</html>