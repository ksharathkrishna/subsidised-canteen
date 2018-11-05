<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

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
<h2 align="center"><font><strong>Chinese</strong></font></h2>
<div class="container" align="centre" style="width: 20%">
    <br/>
    <a href="orderFood.jsp"  align="centre" class="btn btn-success btn-lg" >Return to Food Menu</a>
    <a href="buy.jsp"  align="centre" class="btn btn-warning btn-lg" >Order Food</a>
    <br/>
    <br/>
    <hr>
</div>
<table align="center" cellpadding="20" cellspacing="10" border="1" width="50%">
    <tr>

    </tr>
    <tr bgcolor="yellow">
        <td width="30%"><b>Food Name</b></td>
        <td width="30%"><b>Food ID        </b></td>
        <td width="20%"><b>Cost</b></td>
        <td width="20%"><b>Quantity</b></td>
    </tr>
    <%
        try{
            connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
            statement=connection.createStatement();
            String sql ="SELECT FoodName,Cost,FoodID,quantity FROM food WHERE type='chinese'";
            System.out.println("sql"+sql);

            resultSet = statement.executeQuery(sql);
            while(resultSet.next()){
    %>
    <tr bgcolor="white">

        <td><%=resultSet.getString("FoodName") %></td>
        <td><%=resultSet.getString("FoodID") %></td>
        <td><%=resultSet.getString("Cost") %></td>
        <td><%=resultSet.getString("quantity") %> </td>
        <%--
                <td><%=resultSet.getString("age") %></td>
        --%>

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