<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User View Books</title>
    <%@include file="/Componets/bootstrapcss.jsp" %>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        h1 {
            text-align: center;
            color: #333;
        }

        table {
            width: 80%;
            border-collapse: collapse;
            margin: 20px auto;
            background-color: white;
            border: 1px solid #ddd;
            border-radius: 15px;
            box-shadow: 8px 4px 19px 2px rgba(0, 0, 0, 1);
        }

        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }

        th {
            background-color: #007bff;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        tr:hover {
            background-color: #ddd;
        }

        button {
            background-color:  #41d3a2;
            color: white;
            border: none;
            border-radius: 4px;
            padding: 12px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #28a745;
        }

        button a {
            text-decoration: none;
            color: white;
        }
        
    </style>
</head>
<body>
<%@include file="/Componets/NavUserViewBook.jsp" %>
<h1>Shop Now  <img alt="Cart" src="/img/shopping-cart_229082.png" width="40px" height="40px"> </h1>
<table>
    <tr>
        <th>ID</th>
        <th>Title</th>
        <th>Author</th>
        <th>Price</th>
        <th>Quantity</th>
        <th>Action</th>
    </tr>
    <c:forEach var="book" items="${userBooks}">
    <tr>
        <td>${book.id}</td>
        <td>${book.title}</td>
        <td>${book.author}</td>
        <td>${book.price}</td>
        <td>${book.quantity}</td>
        <td>
            <form action="addToCart" method="post">
                <input type="hidden" name="id" value="${book.id}">
                <input type="hidden" name="title" value="${book.title}">
                <input type="hidden" name="author" value="${book.author}">
                <input type="hidden" name="price" value="${book.price}">
                <button type="submit">Add To Cart</button>
            </form>
        </td>
    </tr>
</c:forEach>
</table>
<%@include file="/Componets/Footer.jsp" %>
</body>
</html>