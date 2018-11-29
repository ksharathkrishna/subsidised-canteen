<%@ page import="java.sql.Timestamp" %>
<html>
<link rel="stylesheet" type="text/css" href="home.css">
<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">

<%    Timestamp timestamp = new Timestamp(System.currentTimeMillis());
%>
    <header style="background: deepskyblue">
    <br/>
    <div class="container" style="width: 40%">
        <h1 class="heading" ><input type="image" style="width: 30%" src="https://image.flaticon.com/sprites/new_packs/133293-restaurant-icons.png" alt=""></h1>
    </div>
    <h2 class="heading"  style="color: black" >CANTEEN</h2>
    <br>
</header>
<br>
<br>
<h2 align="center"><font><strong>Token</strong></font></h2>
<div class="heading">
    <a title="Print Screen" alt="Print Screen" class ="btn btn-warning btn-lg " onclick="window.print();" target="_blank" style="cursor:pointer;" >PRINT</a>
</div>
<br>
<br>

<body>

<div class="container" align="centre" style="width: 40%">
    <br/>
    <p align="center" class="heading" style="font-size: xx-large" >${message}</p>
    <br><br>
    <p align="center" class="heading" style="font-size: xx-large"><%=timestamp  %></p>


    <hr>
    <div class="heading" style="width: content-box">
        <a href="writeFeedBack.jsp" align="centre" class="btn btn-link" > <h2 class="heading" style="color: deepskyblue" >I would really appreciate any feedback you can give  :-) </h2></a>
        <hr>

        <br>
    <a href="index.jsp"  align="centre" class="btn btn-info btn-lg" >Home</a>
    </div>
</div>
</body>

<br>
<div class="footer text-center">
    <p>&copy; 2018 Canteen. All Rights Reserved.  </p>
</div><!-- End Footer -->
</html>
