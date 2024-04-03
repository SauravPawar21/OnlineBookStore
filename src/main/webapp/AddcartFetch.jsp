<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View Cart</title>
    <%@include file="/Componets/bootstrapcss.jsp" %>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    
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
            margin-top: 20px;
        }

        table {
            width: 70%;
            border-collapse: collapse;
            margin: 20px auto;
            border-radius: 8px;
            box-shadow: 6px 5px 20px 4px rgba(0, 0, 0, 7);
        }

        th, td {
            border: 1px solid #ddd;
            text-align: left;
        }
        
        td {
            font-size: 18px;
            padding: 5px; 
        }

        th {
            background-color: #55b1a3;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        tr:hover {
            background-color: #ddd;
        }

        button {
            background-color: #4199ab;
            color: white;
            border: none;
            border-radius: 4px;
            padding: 8px 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            text-decoration: none;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.7);
            display: block;
            margin: 20px auto;
        }

        button:hover {
            background-color: #0056b3;
        }

        a {
            text-decoration: none;
            color: white;
        }

        
        button:last-child {
            margin-top: 40px;
        }
    </style>
</head>
<body>
<script>
    function displayModalAndRedirect() {
        $('#orderConfirmationModal').modal('show');
        setTimeout(function() {
            window.location.href = "Home.jsp"; 
        }, 3000); 
    }
</script>

<%@include file="/Componets/NavAddToFetch.jsp" %>
    <h1>View Cart</h1>
    <table border="2">
        <tr>
            <th>Sr. No</th>
            <th>Title</th>
            <th>Author</th>
            <th>Price</th>
            <th>Action</th>
        </tr>
        <c:forEach var="cartItem" items="${cart}">
            <tr>
                <td>${cartItem.id}</td>
                <td>${cartItem.title}</td>
                <td>${cartItem.author}</td>
                <td>${cartItem.price}</td>
                <td><button><a href="<c:url value='/del/${cartItem.id}'/>">Remove</a></button></td>
            </tr>
        </c:forEach>
    </table>
    
    <div id="orderConfirmationModal" class="modal fade" role="dialog">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-body">
                    <p>Your order has been placed successfully!</p>
                </div>
            </div>
        </div>
    </div>
    <button onclick="displayModalAndRedirect()">Place Your Order</button>
    <!-- jQuery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- Bootstrap JavaScript -->
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    
    <%@include file="/Componets/Footer.jsp" %>
</body>
</html>