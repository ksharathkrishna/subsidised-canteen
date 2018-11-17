<%@ page import="webLayer.order" %>
<%@ page import="static java.lang.System.*" %>
<%@ page import="java.util.Calendar" %>
<%@ page import="java.util.GregorianCalendar" %>
<%@ page import="java.sql.*" %>

<%  //Calendar cal= Calendar.getInstance();
    Timestamp timestamp = new Timestamp(System.currentTimeMillis());

    Calendar cal = GregorianCalendar.getInstance();
    int hr = cal.get(Calendar.HOUR);
    int mi = cal.get(Calendar.MINUTE);
    int ap=cal.get(Calendar.AM_PM);

    java.sql.Date currentTimestamp = new java.sql.Date(Calendar.getInstance().getTime().getTime());

    String id = request.getParameter("userId");
    String driverName = "com.mysql.jdbc.Driver";
    String connectionUrl = "jdbc:mysql://localhost:3306/";
    String dbName = "canteen";
    String userId = "root";
    String password = "";

    try {
        Class.forName(driverName);
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    }

    Connection connection = null;
    Statement statement = null;
    ResultSet resultSet = null;
%>
<link rel="stylesheet" type="text/css" href="home.css">
<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<style>

    /*body {background-image:url("im.jpg");}*/

</style>
<header style="background: deepskyblue">
    <br/>
    <div class="container" style="width: 40%">
        <h1 class="heading" ><input type="image" style="width: 30%" src="https://image.flaticon.com/sprites/new_packs/133293-restaurant-icons.png" alt=""></h1>
    </div>
    <h2 class="heading"  style="color: black" >CANTEEN</h2>
    <br>
</header>
<hr>
<h2 align="center"><font><strong>YOUR BILL</strong></font></h2>
<div class="heading">
<a title="Print Screen" alt="Print Screen" class ="btn btn-warning btn-lg " onclick="window.print();" target="_blank" style="cursor:pointer;" >PRINT</a>
</div>
<br>


<%--<div class="container" align="centre" style="width: 20%">--%>
    <%--<br/>--%>
    <%--<a href="orderFood.jsp"  align="centre" class="btn btn-success btn-lg" >Return to Food Menu</a>--%>
    <%--<a href="buy.jsp"  align="centre" class="btn btn-warning btn-lg" >Order Food</a>--%>
    <%--<br/>--%>
    <%--<br/>--%>
    <%--<hr>--%>
<%--</div>--%>
<table align="center" cellpadding="20" cellspacing="10" border="1" width="50%">
    <tr>

    </tr>
    <tr bgcolor="#d3d3d3">
        <td width="15%"><b>Food </b></td>
        <td width="5%"><b>CostPerUnit</b></td>
        <td width="5%"><b>Quantity</b></td>
        <td width="10%"><b>Total Amount </b></td>
        <td width="15%"><b>Timestamp </b></td>
        <%--<td width="10%"><b>H </b></td>--%>
        <%--<td width="10%"><b>M </b></td>--%>
        <%--<td width="10%"><b> </b></td>--%>





    </tr>
    <%
        try{
            connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
            statement=connection.createStatement();

          //  System.out.println("bgjbfdjbgjdfbgkfdgdfbgjkfd"+u);

           // connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
         //  System.out.println("bgjbfdjbgjdfbgkfdgdfbgjkfd"+u);

           // statement=connection.createStatement();
//            void getd(String x, int r){
//                u=x;
//                q=r;
//
//            }
            order o=new order();
            String u=o.FI;
            int q=o.Q;
            String sql ="SELECT FoodName,Cost,FoodID FROM food WHERE foodid =\""+u+"\"";
            System.out.println("sql"+sql+"dsfdsf"+u);
//            int c= Integer.parseInt(resultSet.getString("Cost"));
//            int t=q*c;

            resultSet = statement.executeQuery(sql);
            while(resultSet.next()){
                int c= Integer.parseInt(resultSet.getString("Cost"));
                int t=q*c;
    %>
    <tr bgcolor="white">

        <td><%=resultSet.getString("FoodName") %></td>
        <%--<td><%=resultSet.getString("FoodID") %></td>--%>
        <td><%=resultSet.getString("Cost") %></td>
        <td><%=q %> </td>
        <td ><%="Rs. "+t %> </td>
        <td><%=timestamp  %></td>
        <%--<td><%=hr  %></td>--%>
        <%--<td><%=mi  %></td>--%>

        <%--<td><%=ap  %></td>--%>




    </tr>






    <%
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    %>
</table>
<%--<div class="container" style="width: 40%">--%>
<%--<br/><br/>--%>
<%--<a href="index.jsp" class="btn btn-outline-dark" >Back</a>--%>
<%--</div>--%>
<%--<div class="container">--%>
    <%--<p align="center" class="heading" style="font-size: xx-large">TOTAL BILL =<%=t %></p>--%>
<%--</div>--%>
<hr>
<div class="heading" style="width: content-box">
    <h2 class="heading" style="color: black">Enjoy Your Food</h2>
    <a href="Mongo.jsp"  align="centre" class="btn btn-link" > <h2 class="heading"  style="color: deepskyblue" >Thank You!!! I would really appreciate any feedback you can give  :-) </h2></a>
    <br>
    <br>
    <br>
    <br>

    <a href="index.jsp"  align="centre" class="btn btn-info btn-lg" >Home</a>
</div>