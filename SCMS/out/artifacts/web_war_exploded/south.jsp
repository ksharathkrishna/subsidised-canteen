<%@ page import="java.sql.*" %>
<%@ page import="java.io.InputStream" %>

<%
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

    body {background-image:url("im.jpg");}

</style>
<br>
<br>
<%--<%--%>
    <%--try{--%>
        <%--connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);--%>
        <%--statement=connection.createStatement();--%>
        <%--String sql ="SELECT * FROM food  ";--%>
        <%--System.out.println("sql"+sql);--%>

        <%--resultSet = statement.executeQuery(sql);--%>

<%--%>--%>
<style>html, body, #container {
    width: 100%;
    height: 100%;
    margin: 0;
    padding: 0;
}</style>

<script src="https://cdn.anychart.com/releases/v8/js/anychart-base.min.js"></script>

<%--<script type="text/javascript">anychart.onDocumentReady(function () {--%>
    <%--// create bar chart--%>
    <%--var a;--%>
    <%--var ff;--%>
    <%--var chart = anychart.bar();--%>

    <%--chart.animation(true);--%>

    <%--chart.padding([10, 40, 5, 20]);--%>

    <%--chart.title('Top 10 Cosmetic Products by Revenue');--%>

    <%--// create bar series with passed data--%>
    <%--var series = chart.bar([--%>
        <%--<%--%>
         <%--while(resultSet.next()){--%>
          <%--String a=  resultSet.getString("sold");--%>
          <%--String ff=resultSet.getString("foodname");--%>
        <%--%>--%>
        <%--a=Number("<%=a%>"),--%>
        <%--ff=("<%=ff%>"),--%>
        <%--[ff , a],--%>
        <%--<%--%>
           <%--}--%>

       <%--} catch (Exception e) {--%>
           <%--e.printStackTrace();--%>
       <%--}--%>
   <%--%>--%>


    <%--]).mapAs({'x': 0, 'value': 1});--%>

    <%--// set tooltip settings--%>
    <%--series.tooltip()--%>
        <%--.position('right')--%>
        <%--.anchor('left-center')--%>
        <%--.offsetX(5)--%>
        <%--.offsetY(0)--%>
        <%--.titleFormat('{%X}')--%>
        <%--.format('${Value}');--%>

    <%--// set yAxis labels formatter--%>
    <%--chart.yAxis().labels().format('{%Value}{groupsSeparator: }');--%>

    <%--// set titles for axises--%>
    <%--chart.xAxis().title('Products by Revenue');--%>
    <%--chart.yAxis().title('Revenue in Dollars');--%>
    <%--chart.interactivity().hoverMode('by-x');--%>
    <%--chart.tooltip().positionMode('point');--%>
    <%--// set scale minimum--%>
    <%--chart.yScale().minimum(0);--%>

    <%--// set container id for the chart--%>
    <%--chart.container('container');--%>
    <%--// initiate chart drawing--%>
    <%--chart.draw();--%>
<%--});</script>--%>
<%--<script type="text/javascript">--%>
    <%--anychart.onDocumentLoad(function () {--%>
        <%--// create an instance of a pie chart--%>
        <%--var chart = anychart.pie();--%>
        <%--chart.animation(true);--%>


        <%--// set the data--%>
        <%--chart.data([--%>
            <%--<%--%>
       <%--while(resultSet.next()){--%>
        <%--String a=  resultSet.getString("sold");--%>
        <%--String ff=resultSet.getString("foodname");--%>

      <%--%>--%>
            <%--a=Number("<%=a%>"),--%>
            <%--ff=("<%=ff%>"),--%>
            <%--if (isNaN(ff))--%>
            <%--[ff , a],--%>

            <%--<%               }%>--%>
            <%--['0',0]--%>
    <%--]);--%>
        <%--<%--%>
    <%--} catch (Exception e) {--%>
        <%--e.printStackTrace();--%>
    <%--}--%>
    <%--%>--%>
        <%--// set chart title--%>
        <%--chart.title("RATINGS");--%>
        <%--//     .radius('43%')--%>
        <%--//--%>
        <%--//         .innerRadius('70%');--%>
        <%--// // set the container element--%>
        <%--//     var labels = chart.labels();--%>
        <%--//     labels.position("outside");--%>
        <%--//     labels.fontColor("#000000");--%>
        <%--//     chart.overlapMode(true);--%>
        <%--//     chart.insideLabelsOffset("-75%");--%>

        <%--chart.container("container");--%>
        <%--// initiate chart display--%>
        <%--chart.draw();--%>
    <%--});</script>--%>
<%--<div class="container" style="width: 30%">--%>
    <%--<div class="container" style="height: 50%">--%>
        <%--<div id="container"></div>--%>
    <%--</div>--%>
<%--</div>--%>
<div class="container" align="centre" style="width: 20%">
    <br/>
    <h2 align="center"><font><strong>Menu</strong></font></h2>
<br>
    <a href="orderFood.jsp"  align="centre" class="btn btn-success btn-lg" >Return to Food Menu</a>
    <a href="buy.jsp"  align="centre" class="btn btn-warning btn-lg" >Order</a>
    <br/>
    <br/>
    <hr>
</div>

<table align="center" cellpadding="20" cellspacing="10" border="1" width="50%">
    <tr>

    </tr>
    <tr bgcolor="yellow">
        <td width="30%"><b>Dish Name</b></td>
        <td width="30%"><b>Cuisine       </b></td>
        <td width="20%"><b>Cost Per Unit</b></td>
        <td width="20%"><b>Quantity</b></td>
    </tr>
    <br>
    <%
        try{
            connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
            statement=connection.createStatement();
            String sql ="SELECT * FROM food ORDER BY type desc ";
            System.out.println("sql"+sql);

            resultSet = statement.executeQuery(sql);
            while(resultSet.next()){

    %>
    <tr bgcolor="white">

        <td><%=resultSet.getString("FoodName") %></td>
        <td><%=resultSet.getString("type") %></td>
        <td><%=resultSet.getString("Cost") %></td>
        <td><%=resultSet.getString("quantity") %> </td>

    </tr>


    <%
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    %>
</table>

<br>


<br>
<br>
<div class="footer text-center">
    <p>&copy; 2018 Canteen. All Rights Reserved.  </p>
</div><!-- End Footer -->
<%--<div class="container" style="width: 40%">--%>
<%--<br/><br/>--%>
<%--<a href="index.jsp" class="btn btn-outline-dark" >Back</a>--%>
<%--</div>--%>