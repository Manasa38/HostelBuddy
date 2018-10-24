<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="utill.DBconnection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>



<%


String city = request.getParameter("city");
String gender  = request.getParameter("gender");
String rating  = request.getParameter("rating");

String  type  = request.getParameter("type");
String  min  = request.getParameter("min");
String  max  = request.getParameter("max");




Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;

%>
<h2 align="center"><font><strong>Retrieve data from database in jsp</strong></font></h2>
<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>

</tr>
<tr bgcolor="#A52A2A">
<td><b>Hostel name</b></td>
<td><b>owner Name</b></td>
<td><b>gender</b></td>
<td><b>type</b></td>
<td><b>Address</b></td>
<td><b>city</b></td>
<td><b>Price</b></td>
<td><b>Security</b></td>
<td><b>Rating</b></td>

</tr>
<%
try{ 
	connection = DBconnection.createConnection(); 
statement=connection.createStatement();
String sql ="SELECT * FROM hostel_info where city='"+city+"'or rating='"+rating+"'or gender='"+gender+"' or type='"+type+"' or price between '"+min+"'and'"+max+"'order by city";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr bgcolor="#DEB887">
<td><%=resultSet.getString("hostelname") %></td>
<td><%=resultSet.getString("ownername") %></td>
<td><%=resultSet.getString("gender") %></td>
<td><%=resultSet.getString("type") %></td>
<td><%=resultSet.getString("address") %></td>
<td><%=resultSet.getString("city") %></td>
<td><%=resultSet.getString("price") %></td>
<td><%=resultSet.getString("security") %></td>
<td><%=resultSet.getString("rating") %></td>

</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>

</body>
</html>