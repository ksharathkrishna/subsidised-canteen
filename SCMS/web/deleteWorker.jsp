
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
<%
    String p=session.getAttribute("password").toString();
    if(p==null||p.length()!=8){

        response.sendRedirect("adminLogout.jsp");
    }
%>
<body >
<div class="container" style="width: 40%">
    <br/><br/>
    <h2 class="heading"> Enter worker ID of worker to be removed</h2> <br><br><br>
    <hr>
    <form align ="center" action="/deleteWorker" method="post">
        <%--Username: <input type="text" name="username" width="30"><br><br><br><br>--%>
        <%--<input type="submit" value="delete"><br><br><br><br>--%>
        <label for="username">Worker ID</label>
        <input type="text" class="form-control" name="username" id="username" placeholder="WID">
        <br/><br/>
        <button type="submit" value="Delete" class="btn btn-Danger btn-lg">Remove</button>
        <a href="worker.jsp" class="btn btn-outline-dark btn-lg" >Back</a>


    </form>

</div>
<%--<p align="center"><a href="adminSection.jsp"><input  type="submit" value="Back"></a></p>--%>
<br><br><br>
<p align="center" style="font-size: xx-large">${errorMessage}</p>
</body>

<br>
<br>
<div class="footer text-center">
    <p>&copy; 2018 Canteen. All Rights Reserved.  </p>
</div><!-- End Footer -->
</html>
