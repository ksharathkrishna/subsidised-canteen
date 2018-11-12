<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Menu</title>
    <link rel="stylesheet" type="text/css" href="home.css">
    <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">


</head>
<%--<h2 class="heading" style="color: black" style="background: #009900">WELCOME ADMIN</h2>--%>
<header style="background: darkorange">
    <br/>
    <br>
    <br>
    <div class="container" style="width: 40%">
        <%--<h1 class="heading" ><input type="image" style="width: 30%" src="https://image.flaticon.com/sprites/new_packs/133293-restaurant-icons.png" alt=""></h1>--%>
    </div>
    <h2 class="heading"  style="color:white" >MENU</h2>
    <br>
</header>
<br><br>

<body><div class="container">
    <div class="row">
        <div class="card col-sm-3" >
            <a href="south.jsp" class="btn btn-danger" >

                <div class="card-body">
                    <img src="https://image.flaticon.com/icons/svg/782/782824.svg" class="card-img-top">
                    <p class="card-text">South Indian </p>
                </div></a>
        </div>
        <div class="card col-sm-3" >
            <a href="north.jsp" class="btn btn-info" >
                <div class="card-body">

                    <img src="https://image.flaticon.com/icons/svg/94/94334.svg" class="card-img-top">
                    <p class="card-text">North Indian </p>

                </div></a>
        </div><div class="card col-sm-3" ><a href="chinese.jsp" class="btn btn-warning" >
        <div class="card-body">
            <img src="https://image.flaticon.com/icons/svg/135/135427.svg" class="card-img-top">
            <p class="card-text">Chinese </p>

        </div></a>
    </div>
        <div class="card col-sm-3" ><a href="feedBack.jsp" class="btn btn-primary" >
            <div class="card-body">
                <img src="https://image.flaticon.com/icons/svg/1027/1027692.svg" class="card-img-top">
                <p class="card-text">Feedback </p>

            </div></a>
        </div>

        <div class="container" style="width: 40%">
            <br/><br/><br/>
            <p align="center">
                <a href="index.jsp"><input type="submit" class="btn btn-dark btn-lg" value="Back"></a>
            </p>
        </div>
    </div></div>
</body>

</html>
