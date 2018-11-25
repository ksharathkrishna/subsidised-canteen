
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
    <h2 class="heading" >Customer Login</h2>
    <hr>
    <br>
    <br>
    <br>
    <form align="center" action="/userLogin" method="post">
        <div class="form-group">
            <label for="exampleInputEmail1">Username</label>
            <input type="email" name="username" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter username">
            <large id="emailHelp" class="form-text text-muted">Username Should be of the form @scms</large>
        </div>
        <div class="form-group">
            <label for="exampleInputPassword1">Password</label>
            <input type="password" name="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
        </div>
            <br>
        <button type="submit" value="Login" class="btn btn-warning btn-lg">Submit</button>

        <a href="index.jsp" class="btn btn-outline-dark btn-lg" >Back</a>
    </form>
</div>

<p align="center" class="" style="font-size: xx-large">${errorMessage}</p>
<p align="center" class="heading" style="font-size: xx-large">${message}</p>

</body>
</html>
