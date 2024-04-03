<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin</title>
<%@include file="/Componets/bootstrapcss.jsp" %>
<style>
        .container{
            display: flex;
            justify-content: center; 
            margin: 40px;
        }
        .card{
            background-color: white;
            width:190px;
            height: 292px;
            border-radius: 7px;
            margin: 39px;
            box-shadow: 4px 5px rgb(66, 60, 59);
        }
        .card:hover {
            box-shadow: 0 0 10px rgba(0, 0, 0, 1); 
        }
        .btn button{
            padding: 10px 20px 10px 20px;
            border-radius: 10px;
            background-color: rgb(49, 160, 194);
            border-style: none;
            font-size: 17px;
            margin: 20px;
            color: rgb(231, 229, 230);
            cursor: pointer;
            margin-left: 21px;
        }
        .btn button:hover{
            background-color: rgba(61, 77, 224, 0.699);
            color: rgb(240, 243, 242);
        }
        .image{
            background-color: rgb(154, 196, 209);
            border-radius: 10px;
        }
        a{
        	text-decoration: none;
        	color: white;
        }
    </style>
</head>
<body>
<%@include file="/Componets/NavAdmin.jsp" %>
	 
	<div class="container">
        <div class="card">
            <div class="image">
                <img src="/img/folder_1975643.png" alt="sp" width="180px" height="170px">
            </div>
            <div class="btn">
                <button type="submit"><a href="AddBooks.jsp">Add Books</a></button> 
            </div> 
        </div>
        <div class="card">
            <div class="image">
                <img src="/img/product_11561429.png" alt="sp" width="180px" height="170px">
            </div>
            <div class="btn">
                <button type="submit"><a href="viewBook">Manage Books</a></button> 
            </div> 
        </div>
        <div class="card">
            <div class="image">
                <img src="/img/log-out_10024482.png" alt="sp" width="170px" height="170px">
            </div>
            <div class="btn">
                <button type="submit"><a href="Login.jsp">Logout</a></button> 
            </div> 
        </div>
    </div>
<%@include file="/Componets/Footer.jsp" %>
</body>
</html>
