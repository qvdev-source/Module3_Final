<%--
  Created by IntelliJ IDEA.
  User: david
  Date: 8/2/2021
  Time: 9:05 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <title>Title</title>
</head>
<body>
<form method="post">
    <h3>Update product</h3>
    <label>Name</label>
    <br>
    <input type="text" name="name" value="${product.name}">
    <br>
    <label>Price</label>
    <br>
    <input type="text" name="price" value="${product.price}">
    <br>
    <label>Quantity</label>
    <br>
    <input type="text" name="quantity" value="${product.quantity}">
    <br>
    <label>Color</label>
    <br>
    <input type="text" name="color" value="${product.color}">
    <br>
    <label>Description</label>
    <br>
    <input type="text" name="description" value="${product.description}">
    <br>
    <label>Category</label>
    <br>
    <select name="category">
        <br>
        <c:forEach items="${categories}" var="category">
            <option value="${category.id}">${category.name}</option>
        </c:forEach>
    </select>
    <br>
    <button class="btn btn-success">Update</button>
    |<a href="/products">Back</a>
</form>
</body>
</html>