<%@ page import="javax.naming.ldap.Control" %><%-- Created by IntelliJ IDEA. --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
  <title>user</title>
  <link rel="stylesheet" type="text/css" href="home.css">
  <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">

</head>

<style>
  /*body {background: #999999}*/
  /*body {background-image:url("https://pixabay.com/get/ea33b7072ff11c22d2524518a33219c8b66ae3d01ab8144297f1c87b/cook-366875_1280.jpg");}*/
</style>
<script>
    (function (global) {

        if(typeof (global) === "undefined") {
            throw new Error("window is undefined");
        }

        var _hash = "!";
        var noBackPlease = function () {
            global.location.href += "#";

            // making sure we have the fruit available for juice (^__^)
            global.setTimeout(function () {
                global.location.href += "!";
            }, 50);
        };

        global.onhashchange = function () {
            if (global.location.hash !== _hash) {
                global.location.hash = _hash;
            }
        };

        global.onload = function () {
            noBackPlease();

            // disables backspace on page except on input fields and textarea..
            document.body.onkeydown = function (e) {
                var elm = e.target.nodeName.toLowerCase();
                if (e.which === 8 && (elm !== 'input' && elm  !== 'textarea')) {
                    e.preventDefault();
                }
                // stopping event bubbling up the DOM tree..
                e.stopPropagation();
            };
        }

    })(window);
</script>


<header style="background: darkorange">
  <br/>
  <div class="container" style="width: 40%">
  <h1 class="heading" ><input type="image" style="width: 30%" src="https://image.flaticon.com/sprites/new_packs/133293-restaurant-icons.png" alt=""></h1>
  </div>
<h2 class="heading"  style="color: white" >CANTEEN</h2>
  <br>
</header>
<body><div  class="container" align="centre"  >
  <br/><br/><br/>
  <div class="row">
    <div class="card col-sm-3" >
      <a href="adminLogin.jsp" class="btn btn-info" >

        <div class="card-body">
          <img src="https://image.flaticon.com/icons/svg/3/3729.svg" class="card-img-top">
          <p class="card-text">Customer Admin </p>
            </div></a>
    </div>
    <p               >

    <div class="card col-sm-3" >
      <a href="inventoryLogin.jsp" class="btn btn-success" >
        <div class="card-body">

          <img src="https://image.flaticon.com/icons/svg/75/75721.svg" class="card-img-top">
          <p class="card-text">Inventory Admin </p>

        </div></a>


  </div>
</p>
<div class="card col-sm-3" ><a href="orderFood.jsp" class="btn btn-warning" >
    <div class="card-body">
      <img src="https://image.flaticon.com/icons/svg/161/161413.svg" class="card-img-top">
      <p class="card-text">Order </p>
      <!--         <button class="btn btn-sm btn-primary">know more!</button>
       -->
    </div></a>
  </div><div class="card col-sm-3" ><a href="userLogin.jsp" class="btn btn-danger" >
    <div class="card-body">
      <img src="https://image.flaticon.com/icons/svg/1203/1203524.svg" class="card-img-top">
      <p class="card-text">Token </p>



    </div></a></div>
</div>
<!-- Footer -->
<br>
<br>
<div class="footer text-center">
  <p>&copy; 2018 Canteen. All Rights Reserved.  </p>
</div><!-- End Footer -->


</div>
</body></html>