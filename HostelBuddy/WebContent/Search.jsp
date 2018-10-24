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
  
  <script>
function go() {
window.location.replace("logout.jsp",'window','toolbar=1,location=1,directories=1,status=1,menubar=1,scrollbars=1,resizable=1');
self.close()
}
</script><style>
  .container {
   position: relative;
    background: url("Img/hostel.jpg") center;/*slide.jpg =>you image*/    
    width: 100%;
    height: 100%;
    background-size: cover;
    overflow: hidden;
}
  .caret.caret-up {
    border-top-width: 0;
    border-bottom: 4px solid #fff;
  }
* {
    box-sizing: border-box;
}
.main {
    width: 100%;
   
    padding: 35px;
    border: 5px solid black;
background-color: #f1f1f1;

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
      <a class="navbar-brand" href="Home.jsp">Home</a>
    </div>
  
      <ul class="nav navbar-nav navbar-right">
                  <li><a>WELCOME <%=session.getAttribute("userName")%> !! </a></li>
        
          <li><a href="javascript:go()"><span class="glyphicon glyphicon-log-in"></span> Log Out</a></li>
   
      </ul>
    </div>
  </div>
</nav>
 <div class="container">
<div class="container-fluid"> 
  <div class="row content"> 
     <div class="w3-display-middle" style="white-space:nowrap;">  	

<div class="col-lg-12 well">

	<div class="row">
  		<h1><b>Select The Required Categories For Your Room:</b></h1><br>
							<form action="SearchServlet" method="post">
								<div class="col-sm-12">
									<div class="row">

										<div class="col-sm-6 form-group">

											<label>Area</label> <input type="text"
												placeholder="Enter area Here.." class="form-control"
												name="city" required>

										</div>
										<div class="col-sm-6 form-group">

											<label>Rating</label> <input type="text"
												placeholder="rating upon 5" class="form-control"
												name="rating" required>

										</div>

									</div>
									<div class="row">

										<div class="col-sm-6 form-group">

											<label>Gender</label><br> <label class="radio-inline"><input
												type="radio" name="gender" value="male" required>Male</label>
											<label class="radio-inline"><input type="radio"
												name="gender" value="female" required>Female</label>


										</div>
										<div class="col-sm-6 form-group">
											<label>Type</label><br> <select name="type">
												<option name="type" value="standard">Standard</option>
												<option name="type" value="deluxe">Deluxe</option>
											</select>


										</div>
									</div>
									<div class="row">

										<div class="col-sm-6 form-group">

											<label>Price - From</label> <input type="text"
												placeholder="Enter minimum price from" class="form-control"
												name="min" required>

										</div>
										<div class="col-sm-6 form-group">
											<label>Price - To</label> <input type="text"
												placeholder="Enter maximum price" class="form-control"
												name="max" required>
										</div>

									</div>
									<input type="submit" value="Done">
								</div>
							</form>
						</div>
	</div>
	</div>
	</div>
		</div>
		</div>
		
	


<footer class="container-fluid text-center">
  <p>FEEL LIKE HOME!!!!</p>
</footer>
<script>
$(document).ready(function(){
  $('.dropdown a.test').on("click", function(e){
    $(this).next('ul').toggle();
    e.stopPropagation();
    e.preventDefault();
  });
});

</script>

</body>
</html>