
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>admin</title>
    <link rel="stylesheet" type="text/css" href="home.css">
    <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">

    <style>
        /*input[type=submit] {*/
        /*width: 30em;  height: 4em;*/
        /*background-color: yellow;*/
        /*border: solid 1px #000;*/
        /*border-radius: 25px*/
        /*}*/
        /*body {background-image:url("im.jpg");}*/
        /*h1{ color:yellow; }*/

    </style>
</head>

<%		HttpSession s= request.getSession();

    if(session.getAttribute("password")==null){
        System.out.println("in if"+session.getAttribute("password"));
        session.invalidate();
        response.sendRedirect("index.jsp");
    }
//    System.out.println("outside"+session.getAttribute("password"));

    // response.sendRedirect("adminSection.jsp");

%>

<header style="background:darkorange">
    <br/>
    <div class="container" style="width: 40%">
        <h1 class="heading" ><input type="image" style="width: 30%" src="https://image.flaticon.com/sprites/new_packs/133293-restaurant-icons.png" alt=""></h1>
    </div>
    <h2 class="heading"  style="color: white" >INVENTORY ADMIN SECTION</h2>
    <br>
</header>
<br><br>

<body><div class="container" style="width: 55%">
    <div class="row">
        <div class="card col-sm-4" >
            <a href="worker.jsp" class="btn btn-success" >

                <div class="card-body">
                    <img src="https://image.flaticon.com/icons/svg/10/10627.svg" class="card-img-top">
                    <p class="card-text">Worker </p>
                    <!--     <button class="btn btn-sm btn-primary">know more!</button>
                     -->  </div></a>
        </div>
        <div class="card col-sm-4" >
            <a href="vendor.jsp" class="btn btn-danger" >
                <div class="card-body">

                    <img src="https://image.flaticon.com/icons/svg/65/65865.svg" class="card-img-top">
                    <p class="card-text">Vendor </p>
                    <!--         <button class="btn btn-sm btn-primary">know more!</button>

                     -->
                </div></a>
        </div><div class="card col-sm-4" ><a href="viewInventory.jsp" class="btn btn-warning" >
        <div class="card-body">
            <img src="https://image.flaticon.com/icons/svg/831/831556.svg" class="card-img-top">
            <p class="card-text">Inventory </p>
            <!--         <button class="btn btn-sm btn-primary">know more!</button>
             -->
        </div></a>
    </div>
        <%--<div class="card col-sm-3" ><a href="userLogin.jsp" class="btn btn-outline-danger" >--%>
        <%--<div class="card-body">--%>
        <%--<img src="https://image.flaticon.com/icons/svg/15/15659.svg" class="card-img-top">--%>
        <%--<p class="card-text">Token </p>--%>
        <%--<!--         <button class="btn btn-sm btn-primary">know more!</button>--%>
        <%---->--%>
        <%--<!--   </div></a>--%>
        <%--</div><div class="card col-sm-3" ><a href="https://www.sublimetext.com/3" class="btn btn-success" >--%>
        <%--<div class="card-body">--%>
        <%--<img src="https://food.fnr.sndimg.com/content/dam/images/food/fullset/2011/3/1/0/FNM_040111-WN-Dinners-030_s4x3.jpg.rend.hgtvcom.616.462.suffix/1371595164628.jpeg" class="card-img-top">--%>
        <%--<p class="card-text">Some quick </p>--%>
        <%--</div></a> -->--%>
        <%--<!--         <button class="btn btn-sm btn-primary">know more!</button>--%>
        <%----%>
        <%--</div></a>--%>
        <%--</div>--%>
        <%--</div>--%>
        <%--</div>--%>
        <%----%>
        <%--</body>--%>
        <%--</html>--%>
        <%----%>
        <%----%>
        <%--<!-- <p align="center"><a href="index.jsp"><input  type="button" value="BACK"></a></p>--%>
        <%--<br><br><br> -->--%>
        <%--<!-- <p align="center" style="color: red">${errorMessage}</p>--%>
        <%--<p align="center" style="color: blue">${message}</p> -->--%>

        <!--</div></a></div>-->
        <div class="container" style="width: 40%">
            <br/><br/><br/>
            <p align="center">
                <a href="adminLogout.jsp"><input type="submit" class="btn btn-primary btn-lg" value="Logout"></a>
            </p>
        </div>
    </div></div>
</body>

<br>
<br>
<div class="footer text-center">
    <p>&copy; 2018 Canteen. All Rights Reserved.  </p>
</div><!-- End Footer -->
<!--<body>-->
<!--<h1 align="center">WELCOME</h1><br/><br/><br/>-->
<!--<p align="center">-->
<!--<a  href="addCustomer.jsp"><input type="submit" class= "btn btn-warning" value="Add Customer"> <br/><br/><br/></a>-->

<!--<a href="deleteCustomer.jsp"><input type="submit" value="Delete Customer"></a>-->
<!--<br/><br/><br/>-->

<!--</p>-->
<!--</body>-->
</html>
