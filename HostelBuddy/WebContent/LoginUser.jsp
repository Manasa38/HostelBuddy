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
    background: url("Img/hostel.jpg") center;/*slide.jpg =>you image*/    
    width: 100%;
    height: 100%;
    background-size: cover;
    overflow: hidden;
}
#acc{
height :29%;
width :30%;
}

#boxed {
background-color: #f1f1f1;
width: 700px;
padding: 50px;
  border:5px solid black ;
border-radius: 10px ;
-moz-border-radius: 10px ;
-webkit-border-radius: 10px ;
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
       
   
      </ul>
    </div>
  </div>
</nav>
 <div class="container">
<div class="container-fluid text-center">   
  <div class="row content">
    <div class="col text-center">  
   
    
  	<div class="w3-display-middle" style="white-space:nowrap;">
    	<div class="w3-row-padding w3-padding-64 w3-container">
  <div class="w3-content">
   <div id="boxed">

<img id = "acc" src = "Img/si.png" >

<div id = "middle" class="login">
  <div  class="heading">
    	<h2>SIGN IN</h2>

   </div>


<form action="LogInServlet" method="post">
       
	<div>
       	  <label>USER NAME:</label>
        	  <input type="text" name="userName"  placeholder="Enter Email id" required />
       	</div>
	<br>
	<div>
         	<label>PASSWORD:</label>
         	<input type="password" name ="password" placeholder="Enter Password" required />
         	</div>
	<br>
	
</div>
      <div>   
   <button type="submit" >Submit</button>        
      </div>  


<br>
<form action ="ForgotPassword.jsp">
  <p class="forgot"><button >Forgot Password?</button></p> 
</form>
</div>
</div>
</div>
</div>
</div>  </div>
 </div>
    </div>
 
  


<footer class="container-fluid text-center">
  <p>FEEL LIKE HOME!!!!</p>
</footer>

</body>
</html>