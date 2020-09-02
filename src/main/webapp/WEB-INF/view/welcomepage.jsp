<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Expires" content="sat, 01 Dec 2001 00:00:00 GMT">
<title>Agile Meetings</title>
<link href="static/css/bootstrap.min.css" rel="stylesheet">
<link href="static/css/style.css" rel="stylesheet">
<link rel="stylesheet" href="node_modules/font-awesome/css/font-awesome.min.css">
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
	<div role="navigation">
		<div class="navbar navbar-inverse">
			<a href="/welcome" class="navbar-brand">Agile Meetings</a>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav mr-auto">
					
				</ul>
			<div class="pull-right">
        		<ul class="nav navbar-nav">
        			<li><a href="/show-meetings">All Meetings</a></li>
        			<li><a href="/show-users">All Users</a></li>
        			<li><a href="/login">Join a Meeting</a></li>
           			 <li><a href="/login"><span class="fa fa-sign-in"></span> Login</a></li>
      			</ul>     
			</div>
			</div>
		</div>
	</div>
<div>

	<c:choose>
	<c:when test="${mode=='MODE_HOME'}">
	<div class="container" id="homediv">
	<div class="jumbotron text-center">
	<h1>Agile Meetings</h1>
	<h3></h3>
	</div>
	</div>
	
	</c:when>
	
	
	
	
	<c:when test="${mode=='MODE_REGISTER' }">
	<div class="container text-center">
	<h3>New Registration</h3>
	<hr>
	<form class="form-horizontal" method="POST" action="save-user">
		<div class="form-group">
			<label class="control-label col-md-3">User ID</label>
			<div class="col-md-7">
				<input type="text" class="form-control" name="id" value="${user.id}"/>
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-md-3">Username</label>
			<div class="col-md-7">
				<input type="text" class="form-control" name="username" 
				  value="${user.username}"/>
			</div>	
		</div>
		<div class="form-group">
			<label class="control-label col-md-3">First Name</label>
			<div class="col-md-7">
				<input type="text" class="form-control" name="firstname" value="${user.firstname}"/>
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-md-3">Last Name</label>
			<div class="col-md-7">
				<input type="text" class="form-control" name="lastname" value="${user.lastname}"/>
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-md-3">Age</label>
			<div class="col-md-3">
				<input type="text" class="form-control" name="age" value="${user.age}"/>
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-md-3">Password</label>
			<div class='col-md-7'>
				<input type="password" class="form-control" name="password" value="${user.password}"/>
			</div>
		</div>
		<div class="form-group">
			<input type="submit" class="btn btn-primary" value="Register"/>
		</div>
		<div>
			Already a User?<a href="/login">Login here</a>
		</div>
	</form>
	</div>

</c:when>
<c:when test="${mode=='ALL_MEETINGS'}">
	<div class="container text-center" id="tasksDiv">
				<h3>Meetings</h3>
				<hr>
				<div class="table-responsive">
					<table class="table table-striped table-bordered">
						<thead>
							<tr>
								<th>MeetingId</th>
								<th>MeetingName</th>
								<th>Date</th>
								<th>Time</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="host" items="${hosts}">
								<tr>
									<td>${host.meetingid}</td>
									<td>${host.meetingname}</td>
									<td>${host.date}</td>
									<td>${host.time}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
</c:when>


<c:when test="${mode=='ALL_USERS'}">
	<div class="container text-center" id="tasksDiv">
				<h3>All Users</h3>
				<hr>
				<div class="table-responsive">
					<table class="table table-striped table-bordered">
						<thead>
							<tr>
								<th>Id</th>
								<th>UserName</th>
								<th>First Name</th>
								<th>LastName</th>
								<th>Age</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="user" items="${users }">
								<tr>
									<td>${user.id}</td>
									<td>${user.username}</td>
									<td>${user.firstname}</td>
									<td>${user.lastname}</td>
									<td>${user.age}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
</c:when>





<c:when test="${mode=='MODE_LOGIN' }">
	<script src="static/js/login.js"></script>
	<div class="container text-center">
	<h2>User Login</h2>
	<hr>
	<form class="form-horizontal" method="POST" action="/login-user">
	<c:if test="${not empty error }">
		<div class="alert alert-danger"></div>
		<c:out value="${error }"></c:out>
	</c:if>
		<div class="form-group">
			<label class="control-label col-md-3">Username</label>
			<div class="col-md-7">
				<input type="text" class="form-control" name="username" 
				  id="username" value="${user.username}"/>
			</div>	
		</div>
		<div class="form-group">
			<label class="control-label col-md-3">Password</label>
			<div class='col-md-7'>
				<input type="password" class="form-control" id="pass" name="password" value="${user.password}"/>
			</div>
		</div>
		<div class="form-group">
			<input type="submit" id="submit" class="btn btn-primary" onclick="validate()" value="Login"/>
		</div>
		<div>
			New to Agile Meetings?<a href="/register">SignUp here</a>
		</div>
		</form>
		</div>

		</c:when>


</c:choose>
</div>
	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="static/js/jquery-1.11.1.min.js"></script>
	<script src="static/js/bootstrap.min.js"></script>
</body>
</html>