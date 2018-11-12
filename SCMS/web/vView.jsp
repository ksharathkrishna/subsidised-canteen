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
<br>
<br>
<h2 align="center"><font><strong>Vendor Details</strong></font></h2>
<div class="container" align="centre" style="width: 20%">
    <br/>
    <a href="invSection.jsp"  align="centre" class="btn btn-success btn-lg" >Admin Page</a>
    <a href="index.jsp"  align="centre" class="btn btn-warning btn-lg" >Return Home</a>
    <br/>
    <br/>
    <hr>
</div>
<table align="center" cellpadding="20" cellspacing="10" border="1" width="40%">
    <tr>

    </tr>
    <tr bgcolor="yellow">
        <td width="20%"><b>Age     </b></td>
        <td width="30%"><b> Name  </b></td>
        <td width="30%" ><b>Username</b></td>
        <td width="30%"><b> Phone     </b></td>
        <%--<td width="10%"><b> Age</b></td>--%>
    </tr>
    <%
        try{
            connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
            statement=connection.createStatement();
            String sql ="SELECT * FROM vendor WHERE username!='abc@xyz' ";
            System.out.println("sql"+sql);

            resultSet = statement.executeQuery(sql);
            while(resultSet.next()){
    %>
    <tr bgcolor="white">

        <td><%=resultSet.getString("Age") %></td>
        <td><%=resultSet.getString("name") %></td>
        <td><%=resultSet.getString("username") %></td>
        <td><%=resultSet.getString("phoneno") %></td>
        <%--<td><%=resultSet.getString("age") %></td>--%>

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