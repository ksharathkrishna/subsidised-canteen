<%--
  Created by IntelliJ IDEA.
  User: GURUPRASAD C
  Date: 4/11/2018
  Time: 5:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>delete</title>
    <link rel="stylesheet" type="text/css" href="home.css">
    <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">


    <style>
        /*input[type=submit] {*/
            /*width: 30em;  height: 4em;*/
            /*background-color: yellow;*/
            /*border: solid 1px #000;*/
            /*border-radius: 25px*/
        /*}*/
        body {background-image:url("im.jpg");}
        /*h1{ color:yellow;}*/

    </style>
</head>
<body >
<div class="container" style="width: 40%">
    <br/><br/>
<h2 class="heading"> Enter Username of account to be removed</h2> <br><br><br>
<form align ="center" action="/deleteStudent" method="post">
    <%--Username: <input type="text" name="username" width="30"><br><br><br><br>--%>
    <%--<input type="submit" value="delete"><br><br><br><br>--%>
    <label for="username">Email</label>
    <input type="email" class="form-control" name="username" id="username" placeholder="Email">
        <br/><br/>
        <button type="submit" value="Delete" class="btn btn-Danger">Remove</button>
        <a href="admin.jsp" class="btn btn-outline-dark" >Back</a>


</form>

</div>
<%--<p align="center"><a href="admin.jsp"><input  type="submit" value="Back"></a></p>--%>
<br><br><br>
<p align="center" style="color: red">${errorMessage}</p>
</body>
</html>
