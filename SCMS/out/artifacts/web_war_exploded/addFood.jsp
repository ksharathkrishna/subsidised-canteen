
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>user</title>
    <link rel="stylesheet" type="text/css" href="home.css">
    <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">

    <style>
        body {background-image:url("im.jpg");}

    </style>
</head>
<body>

<div class="container" style="width:40%;">
    <br><br>
    <h2 class="heading" >Update Quantity</h2>
    <hr>
    <form align="center" action="/addFood" method="post">
        <div class="form-group">
            <label for="exampleInputEmail1">Food ID</label>
            <input type="text" name="foodid" class="form-control" id="exampleInputEmail1" placeholder="Enter Food ID">

        </div>
        <div class="form-group">
            <label for="exampleInputPassword1">Quantity</label>
            <input type="number" name="quantity" class="form-control" id="exampleInputPassword1" placeholder="0">
        </div>
        <br>
        <button type="submit" value="Login" class="btn btn-warning">Update</button>

        <a href="admin.jsp" class="btn btn-outline-dark" >Back</a>
    </form>
</div>

<p align="center" style="color: red">${errorMessage}</p>
<p align="center" style="color: yellow">${message}</p>

</body>
</html>
