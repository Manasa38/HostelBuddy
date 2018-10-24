
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
  <title>HostelBuddy</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
  .container {
   position: relative;
    background:url("Img/hostel.jpg") center;/*slide.jpg =>you image*/    
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
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                       
      </button>
      <a class="navbar-brand" href="ContactUs.jsp">Contact Us</a>
    </div>
  
      <ul class="nav navbar-nav navbar-right">
        <li><a href="login.html"><span class="glyphicon glyphicon-log-in"></span> Sign In</a></li>
            <li><a href="RegisterUser.jsp"><span class="glyphicon glyphicon-log-in"></span> Sign Up</a></li>
   
      </ul>
    </div>
  </div>
</nav>
 <div class="container">
<div class="container-fluid text-center">   
  <div class="row content">
    <div class="col text-center">  
        
  	<div class="w3-display-middle" style="white-space:nowrap;">
    	<span class="w3-center w3-padding-large w3-black w3-xlarge w3-wide w3-animate-opacity">HOSTEL<span class="w3-hide-small"></span> BUDDY</span>
   </div>
<%session.invalidate();%>
<b>You have logged out. Please
<a href="login.html"><b>Login</b></a>

 

    </div>
    
  </div>
</div>
</div>
<footer class="container-fluid text-center">
  <p>FEEL LIKE HOME!!!!</p>
</footer>

</body>
</html>