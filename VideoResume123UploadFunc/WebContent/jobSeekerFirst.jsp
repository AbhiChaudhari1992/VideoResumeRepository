<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html" charset="ISO-8859-1"
	"
    name="viewport" content="width=device-width">
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="css/style.css">
<title>Home Page</title>
</head>
<body>
	<div class="container-fluid">
		<div class="col-sm-3">
			<ul class="nav nav-pills nav-stacked" role="tablist">
				<li class="nav-item active"><a class="nav-link"
					data-toggle="pill" href="#dashboard" role="tab">Dashboard</a></li>
				<li class="nav-item"><a class="nav-link" data-toggle="pill"
					href="#profile" role="tab">Profile</a></li>
				<li class="nav-item"><a class="nav-link" data-toggle="pill"
					href="#resumes" role="tab">Resumes</a></li>
				<li class="nav-item"><a class="nav-link" data-toggle="pill"
					href="#savedJobs" role="tab">Saved Jobs <span class="badge">5</span></a></li>
				<li class="nav-item"><a class="nav-link" data-toggle="pill"
					href="#appliedJobs" role="tab">Applied Jobs <span class="badge">2</span></a></li>
				<li class="nav-item"><a class="nav-link" data-toggle="pill"
					href="#settings" role="tab">Settings</a></li>
				<li class="nav-item"><a class="nav-link" data-toggle="pill"
					href="#logout" role="tab">Logout</a></li>
			</ul>
		</div>
		<div class="col-sm-9">
			<!-- Tab panes -->
			<div class="tab-content">
				<div class="tab-pane active" id="dashboard" role="tabpanel">
					<h2>Search For your Favorite Job</h2>
					<form action="">
						<div class="row">
							<div class="form-group search">
								<i class="fa fa-search" aria-hidden="true"></i> <input
									type="text" id="keywords" name="keywords"
									placeholder="Search for Jobs" class="form-control word">
							</div>
							<div class="form-group location">
								<i class="fa fa-map-marker" aria-hidden="true"></i> <input
									type="text" id="keywords" name="keywords"
									placeholder="Search for Jobs" class="form-control word">
							</div>
							<button id='search' type="submit"
								class="btn btn-primary search-button">Search</button>
						</div>
					</form>
					<br>
					<div class="row">
						<div class="card" style="width: 20rem;">
							<div class="card-block">
								<h3 class="card-title">Special title treatment</h3>
								<p class="card-text">With supporting text below as a natural
									lead-in to additional content.</p>
								<a href="#" class="btn btn-primary">Go somewhere</a>
							</div>
						</div>
					</div>
				</div>
				<div class="tab-pane" id="profile" role="tabpanel">
					<h2>Edit Profile</h2>
					<form>
					<div class="form-group">
							<label for="exampleInputEmail1">Username</label> <input
								type="text" class="form-control" name="username" id="username"
								placeholder="Enter Username" required="required">
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1">First Name</label> <input
								type="text" class="form-control" name="firstName" id="firstName"
								placeholder="Enter First Name" required="required">
						</div>

						<div class="form-group">
							<label for="exampleInputEmail1">Last Name</label> <input
								type="text" class="form-control" name="lastName" id="lastName"
								placeholder="Enter Last Name" required="required">
						</div>
                        <div class="form-group">
							<label for="exampleInputEmail1">Job Seeker Id</label> <input
								type="text" class="form-control" name="jid" id="jid"
								placeholder="Enter Job seeker id" required="required">
						</div>
						<div class="form-group">
							<label for="exampleInputEmail1">Address</label> <input
								type="text" class="form-control" name="address" id="address"
								placeholder="Enter Address" required="required">
						</div>

						<div class="form-group">
							<label for="exampleInputEmail1">Phone Number</label> <input
								type="number" class="form-control" name="phoneNumber"
								id="phoneNumber" placeholder="Enter Phone Number"
								required="required">
						</div>

						<div class="form-group">
							<label for="exampleInputEmail1">Personal Email</label> <input
								type="text" class="form-control" name="personalEmail"
								id="personalEmail" placeholder="Personal Email Address"
								required="required">
						</div>
						
						<div class="form-group">
							<label for="exampleInputEmail1">Alternate Email</label> <input
								type="text" class="form-control" name="alternateEmail"
								id="alternateEmail" placeholder="Alternate Email Address"
								required="required">
						</div>
						
						<div class="form-group">
							<label for="exampleInputEmail1">Skype ID</label> <input
								type="text" class="form-control" name="skypeID"
								id="skypeID" placeholder="Skype ID"
								required="required">
						</div>

						<div class="form-group">
							<label for="exampleInputEmail1">Username</label> <input
								type="text" class="form-control" name="Username" id="Username"
								placeholder="Enter Username" required="required">
						</div>

						<div class="form-group">
							<label for="exampleInputPassword1">Password</label> <input
								type="password" class="form-control" name="Password"
								id="Password" placeholder="Enter Password" required="required">
						</div>
						
						<div class="panel panel-default">
							<div class="panel-heading">Education Details</div>
						<div class="panel-body">Panel Body</div><br>
						
						<div class="panel panel-default">
						<div class="panel-heading">Skills</div>
						<div class="panel-body">Panel Body</div><br>
						
						<div class="panel panel-default">
						<div class="panel-heading">Work Experience</div>
						<div class="panel-body">Panel Body</div><br>
					</div><br><br>
					</div><br><br>
					</div><br><br>
					</form>
				</div>
				<div class="tab-pane" id="resumes" role="tabpanel">
					<div class="panel panel-default">
						<div class="panel-heading">Upload Video Resume</div>
						<div class="panel-body">Panel Body</div>
					</div><br><br>
					<div class="panel panel-default">
						<div class="panel-heading">Upload Resume</div>
						<div class="panel-body">Panel Body</div>
					</div>
				</div>
				<div class="tab-pane" id="savedJobs" role="tabpanel">Saved
					Jobs</div>
				<div class="tab-pane" id="appliedJobs" role="tabpanel">Applied
					Jobs</div>
				<div class="tab-pane" id="settings" role="tabpanel">Settings</div>
				<div class="tab-pane" id="logout" role="tabpanel">Logout</div>
			</div>

		</div>
	</div>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"
		type="text/javascript"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
		type="text/javascript"></script>
</body>
</html>