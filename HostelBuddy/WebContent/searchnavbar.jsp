<%@ page import="java.util.*" %> 

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
  <title>HostelBuddy</title>
  <meta charset="utf-8">
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  
  <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
  <style>
  .container {
   position: relative;
    background: #fff url("http://ucd.hwstatic.com/propertyimages/8/86595/2.jpg") center center;/*slide.jpg =>you image*/    
    width: 100%;
    height: 100%;
    background-size: cover;
    overflow: hidden;
}
    /* Remove the navbar's default margin-bottom and rounded borders */
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
    }
   
    /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
    .row.content {height: 540px}
   
    /* Set gray background color and 100% height */
    .sidenav {
      padding-top: 20px;
      background-color: #f1f1f1;
      height: 100%;
    }
   
    /* Set black background color, white text and some padding */
    footer {
      background-color: #000000;
      color: white;
      padding: 20px;
    }
   
    /* On small screens, set height to 'auto' for sidenav and grid */
    @media screen and (max-width: 767px) {
      .sidenav {
        height: auto;
        padding: 25px;
      }
      .row.content {height:auto;}
    }
    input[type=text] {
    width: 130px;
    -webkit-transition: width 0.4s ease-in-out;
    transition: width 0.4s ease-in-out;
}

/* When the input field gets focus, change its width to 100% */
input[type=text]:focus {
    width: 100%;
}
  </style>
  </head>
<body  onload="noBack()" >

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                       
      </button>
      <a class="navbar-brand" href="Home.jsp">Home.jsp</a>
    </div>
  
      <ul class="nav navbar-nav navbar-right">
    
         
             <li><a href="LogOutServlet"><span class="glyphicon glyphicon-log-in"></span> LogOut</a></li>
   
      </ul>
      
    </div>
</nav>
 <div class="container"> 
<div class="container-fluid text-center" >
 
  <div class="row content">
    <div class="col text-center">  
    
<table width="700px" align="center" 
style="border:1px solid #000000;">
<tr>
<td colspan=8 align="center" 
style="background-color:ffeeff">
<b>Hostel Record</b></td>
</tr>
<tr style="background-color:efefef;">
<td><b>Userid</b></td>
<td><b>UserName</b></td>
<td><b>password</b></td>
<td><b>city</b></td>
<td><b>State</b></td>
<td><b>Contact No</b></td>
<td><b>Email</b></td>




</tr>
<%
int count=0;
String color = "#F9EBB3";


if(request.getAttribute("list")!=null)
{
ArrayList al = (ArrayList)request.getAttribute("list");
Iterator itr = al.iterator();


while(itr.hasNext()){

if((count%2)==0){ 
color = "#eeffee"; 
}
else{
color = "#F9EBB3";
}
count++;
ArrayList empList = (ArrayList)itr.next();
%>
<tr style="background-color:<%=color%>;">
<td><%=empList.get(0)%></td>
<td><%=empList.get(1)%></td>
<td><%=empList.get(2)%></td>
<td><%=empList.get(3)%></td>
<td><%=empList.get(4)%></td>
<td><%=empList.get(5)%></td>
<td><%=empList.get(6)%></td>

</tr>
<%
}
}
%> 
<%
if(count==0){
%>
<tr>
<td colspan=8 align="center" 
style="background-color:eeffee"><b>No Record</b></td>
</tr>
<%
}
%>
</table>

    </div>
    
  </div>
</div>
</div>

<footer class="container-fluid text-center">
  <p>FEEL LIKE HOME!!!!</p>
</footer>

</body>
</html>