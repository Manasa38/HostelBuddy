<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
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
  .container1{
   position: relative;
   background: url("Img/hostel.jpg") center;/*slide.jpg =>you image*/    
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
      padding: 15px;
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
 <div class="container1">
<div class="container-fluid ">   
 <div class="row content"> 
        <div class="w3-display-middle" style="white-space:nowrap;">  	
<div class="col-lg-12 well">
 <div class="container">
	<div class="row">
				<form method="post" action="UpdateServlet" onsubmit = "return validate()">
		
			<div class="col-sm-12">
						<div class="row">
						
			<div class="col-sm-6 form-group">
					
				<label>Hostel Name</label>
							<input type="text" placeholder="Enter Hostel Name Here.." name="hostelname"class="form-control" reqiured>
				</div>
									<div class="col-sm-6 form-group">
											<label>Owner Name</label>
							
			<input type="text" placeholder="Enter Owner Name Here.." name="ownername" class="form-control" reqiured>
					</div>
					</div>		<div class="row">
									
			<div class="col-sm-6 form-group">
					
				<label>Gender Criteria</label>
							<input type="text" placeholder="Enter male or female" name="gender" class="form-control" reqiured>
				</div>
									<div class="col-sm-6 form-group">
											<label>TYPE</label>
							
			<input type="text" placeholder="Enter standard or deluxe"  name="type" class="form-control" reqiured>
					</div>
			
						</div>				
							<div class="form-group">
									<label>Address</label>
			<textarea placeholder="Enter Address Here.." rows="2" name="address" class="form-control" reqiured></textarea>
				</div>	
						<div class="row">
							
	<div class="col-sm-6 form-group">
			<label>City</label>
							<input type="text" placeholder="Enter City Name Here.." name="city" class="form-control" reqiured>
				</div>
	
							
	<div class="col-sm-6 form-group">
	
										<label>Price</label>
				<input type="text" placeholder="Enter Number of rooms Here.." name="price" class="form-control" reqiured>
					</div>	
					</div>
								<div class="row">				
						<div class="col-sm-6 form-group">
						
			<label>Phone Number</label>
					<input type="text" placeholder="Enter Phone Number Here.." name="phoneno" class="form-control" reqiured>
				</div>		
					
		<div class="col-sm-6 form-group">
				<label>Email Address</label>
									<input type="text" placeholder="Enter Email Address Here.." name="email" class="form-control" reqiured>
					</div>	</div>
					<div class="row">				
						<div class="col-sm-6 form-group">
						
			<label>Security</label>
					<input type="text" placeholder="Yes or No" name="security" class="form-control" reqiured>
				</div>		
					
		<div class="col-sm-6 form-group">
				<label>Rating</label>
									<input type="text" placeholder="Rate upon 5" name="rating" class="form-control" reqiured>
					</div>	</div>
					
							<input type="submit" value="Done">
										
		</div>
				
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