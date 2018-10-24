<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<title>HostelBuddy</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript">
	function validate() {
		alert("You Have booked a room plz check your mail for details");
	}
	function go() {
		window.location
				.replace(
						"logout.jsp",
						'window',
						'toolbar=1,location=1,directories=1,status=1,menubar=1,scrollbars=1,resizable=1');
		self.close()
	}
</script>
<style>
address {
	display: block;
	font-style: italic;
}

* {
	box-sizing: border-box;
}

.container1 {
	position: relative;
	/*    background: url("Img/hostel.jpg") center;/*slide.jpg =>you image*/
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
.row.content {
	height: 540px
}

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
	.row.content {
		height: auto;
	}
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
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#myNavbar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="Home.jsp">Home</a>
		</div>

		<ul class="nav navbar-nav navbar-right">


			<li><a href="javascript:go()"><span
					class="glyphicon glyphicon-log-in"></span> Log Out</a></li>
		</ul>
	</div>
	</div>
	</nav>
	<div class="container1">
		<div class="container-fluid">
			<div class="row content">
				<div class="col text-center">

					<form method="post" action="SendMail" onsubmit="return validate()">


						<div class="w3-display-middle" style="white-space: nowrap;">

							<div class="bg-1">
								<div class="container">
									<%
										int count = 0;
										String color = "#F9EBB3";
										if (request.getAttribute("list") != null) {
											ArrayList al = (ArrayList) request.getAttribute("list");
											Iterator itr = al.iterator();

											while (itr.hasNext()) {

												if ((count % 2) == 0) {
													color = "#eeffee";
												} else {
													color = "#F9EBB3";
												}
												count++;
												ArrayList empList = (ArrayList) itr.next();
									%>


									<div class="row text-center">
										<div class="col-sm-4" style="background-color:<%=color%>;">

											<div class="thumbnail">

												<img src="Img/hostel.jpg" width="400" height="300">
												<address>
													<form action="Booking" method="post">
														<strong>HostleName:<%
															empList.get(0);
														%></strong><BR> <strong>Price:<%=empList.get(1)%></strong><BR>
														<strong> Rating:<%=empList.get(2)%></strong><BR> <Strong>Address:<BR>
															<%=empList.get(3)%></strong><BR>
												</address>


												<td><button type="submit" onclick="" name="id" value="">
														Book</a>
													</button></td>


												</tr>
					</form>


					
				</div>
			</div>

			<%
				}
				}
			%>
			<%
				if (count == 0) {
			%>
			<h1>
				<b>No Record</b>
			</h1>
			<%
				}
			%>
		</div>
	</div>
	</div>
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

</body>
</html>