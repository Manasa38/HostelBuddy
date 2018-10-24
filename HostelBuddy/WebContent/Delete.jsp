<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@page import="utill.DBconnection"%>
<html lang="en">
<head>
  <title>HostelBuddy</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://font-awesome.min.css">
<link rel="stylesheet" href="https://font-awesome-ie7.min.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script type="text/javascript">
  function validate()
  {
	 
	  alert("You Have Succesfully updated!!!");
	  
  }
  function go() {
	  window.location.replace("logout.jsp",'window','toolbar=1,location=1,directories=1,status=1,menubar=1,scrollbars=1,resizable=1');
	  self.close()
	  }
</script>
  <style>
  
 /* Remove the navbar's default margin-bottom and rounded borders */
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
    }
   
    /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
    .row.content {height: 550px}
   
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
      padding: 30px;
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
body {
  
padding-top: 0px;
  padding-bottom: 0px;

}


/* Everything but the jumbotron gets side spacing for mobile first views */

.header,
.marketing,
.footer {
 
 padding-right: 5px;
  padding-left: 5px;

}


/* Custom page header */
.header {
  border-bottom: 1px solid #e5e5e5;
}
/* Make the masthead heading the same height as the navigation */

.header h3 {
 
 padding-bottom: 10px;
  margin-top: 0;
  margin-bottom: 0;
  line-height: 40px;
}


/* Custom page footer */

.footer {
  
padding-top: 10px;
  color: #777;
  border-top: 1px solid #e5e5e5;

}


/* Customize container */

@media (min-width: 768px) {
  
.container {
    max-width: 730px;
  }

}

.container-narrow > hr {
  margin: 30px 0;
}


/* Main marketing message and sign up button */

.jumbotron {
  
text-align: center;
  border-bottom: 1px solid #e5e5e5;

}

.jumbotron .btn {
 
 padding: 14px 24px;
  font-size: 21px;

}


/* Supporting marketing content */

.marketing {
  margin: 40px 0;
}

.marketing p + h4 {
  margin-top: 20px;
}


/* Responsive: Portrait tablets and up */

@media screen and (min-width: 768px) {
 
 /* Remove the padding we set earlier */
 
 .header,
  .marketing,
  .footer {
    padding-right: 0;
    padding-left: 0;
  }
  
/* Space out the masthead */
  
.header {
    margin-bottom: 30px;
  }

  /* Remove the bottom border on the jumbotron for visual effect */
 
 .jumbotron {
    border-bottom: 0;
  }

}   
  </style>
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                       
      </button>
      <a class="navbar-brand" href="Home.jsp">Home</a>
    </div>
  
      <ul class="nav navbar-nav navbar-right">
      
          <li><a href="javascript:go()"><span class="glyphicon glyphicon-log-in"></span> Log Out</a></li>
   
      </ul>
    </div>
  </div>
</nav>
 <div class="container">
<div class="container-fluid ">   
 <div class="row content"> 
  <div class="w3-display-middle" style="white-space:nowrap;">  	
<form action="Delete.jsp">
<table>
<tr>
<td>Enter Hostel Name To Delete</td>
<td><input type="text" name="hostelname"/></td>
</tr>
<tr>
<td></td>
<td><input type="submit" value="Delete"/></td>
</tr>
</table>
</form>

<%
String hostelname = request.getParameter("hostelname");
if(hostelname != null)
{
Connection con = null;
PreparedStatement ps = null;

try
{

con = DBconnection.createConnection();
String sql = "DELETE FROM hostel_info WHERE hostelname = '"+hostelname+"'";
ps = con.prepareStatement(sql);
int i = ps.executeUpdate();
if(i > 0)
{%>
<%
out.print("Record Deleted Successfully");
%>
<% 
}
else
{%>
<%
out.println("There is a problem in Deleting Record."); 
out.print("Check Manually in your Database");
} %>
<%
}
catch(SQLException sqe)
{
request.setAttribute("error", sqe);
out.println(sqe);
}
}
%>
</form>
			
		</div>

		</div>
			</div>
    </div></div>
   
    </div>
   </div>
<footer class="container-fluid text-center">
  <p>FEEL LIKE HOME!!!!</p>
</footer>

</body>
</html>