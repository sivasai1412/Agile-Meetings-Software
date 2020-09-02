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
<link rel="stylesheet" href="static/fonts/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="static/css/bootstrap-social.css">
        <link href="static/css/bootstrap.min.css" rel="stylesheet">
<link href="static/css/styles.css" rel="stylesheet">
</head>
<body>


	<div role="navigation">
		<div class="navbar navbar-inverse">
			<a href="/welcome" class="navbar-brand">Agile Meetings</a>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
				</ul>
				<div class="pull-right">
        			<ul class="nav navbar-nav">
        				<li><a href="/join">Join a Meeting</a></li>
        				<li><a href="/host">Host a Meeting</a></li>
           				 <li><a href="/login"><span class="fa fa-sign-in"></span>Logout</a></li>
      				</ul>     
				</div>
			</div>
		</div>
	</div>
	
  
<c:choose>

<c:when test="${mode=='MODE_HOST'}">
	<div class="container text-center">
	<h3>Host Meeting</h3>
	<hr>
	<form class="form-horizontal" method="POST" action="/savemeetings">
		<div class="form-group">
			<label class="control-label col-md-3">Meeting ID</label>
			<div class="col-md-7">
				<input type="text" class="form-control" name="id" value="${host.meetingid}"/>
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-md-3">Meeting name</label>
			<div class="col-md-7">
				<input type="text" class="form-control" name="meetingname" 
				  value="${host.meetingname}"/>
			</div>	
		</div>
		<div class="form-group">
			<label class="control-label col-md-3">Date</label>
			<div class="col-md-7">
				<input type="date" class="form-control" name="date" value="${host.date}"/>
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-md-3">Time</label>
			<div class="col-md-7">
				<input type="time" class="form-control" name="time" value="${host.time}"/>
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-md-3">Password</label>
			<div class='col-md-7'>
				<input type="password" class="form-control" name="password" value="${host.password}"/>
			</div>
		</div>
		<div class="form-group">
			<input type="submit" class="btn btn-primary" value="Host"/>
		</div>
	</form>		
	</div>
	</c:when>

<c:when test="${mode=='MODE_JOIN' }">
	<div class="container text-center">
	<h3>Join Meeting</h3>
	<hr>
	<form class="form-horizontal" method="POST" action="/join-user">
	<c:if test="${not empty error }">
		<div class="alert alert-danger"></div>
		<c:out value="${error }"></c:out>
	</c:if>
		<div class="form-group">
			<label class="control-label col-md-3">Meeting id</label>
			<div class="col-md-7">
				<input type="text" class="form-control" name="meetingid" 
				  value="${host.meetingid}"/>
			</div>	
		</div>
		<div class="form-group">
			<label class="control-label col-md-3">Password</label>
			<div class='col-md-7'>
				<input type="password" class="form-control" name="password" value="${host.password}"/>
			</div>
		</div>
		<div class="form-group">
			<input type="submit" class="btn btn-primary" value="Join"/>
		</div>
		</form>
		</div>
		</c:when>


	
<c:when test="${mode=='MODE_UPCOMINGEVENTS'}">
  <header class="jumbotron">
        <div class="container">
            <div class="row row-header">
                <div class="col-12 col-sm-6">
                    <h1>Agile Software Meetings</h1>
                    <p></p>
                </div>
            </div>
        </div>
    </header>

<div>
	<div class="row">
		<div class="col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3 col-xs-8 col-xs-offset-2">       
    	    <div class="panel panel-danger">
                <div class="panel-heading">
                    <h3 class="panel-title">
                        <span class="glyphicon glyphicon-calendar"></span> 
                        Upcoming Events
                    </h3>
                </div>
                <div class="panel-body">
                    <ul class="media-list">
                        <li class="media">
                            <div class="media-left">
                                <div class="panel panel-danger text-center date">
                                    <div class="panel-heading month">
                                        <span class="panel-title strong">
                                            Aug
                                        </span>
                                    </div>
                                    <div class="panel-body day text-danger">
                                        21
                                    </div>
                                </div>
                            </div>
                            <div class="media-body">
                                <h4 class="media-heading">
                                    Agile Meetings 
                                </h4>
                                <p>
                                    A small software meetings for the virtusa software company team members. To join <a href="http://localhost:8080/sendemail">click here</a>
                                </p>

                            </div>
                        </li>
                        <li class="media">
                            <div class="media-left">
                                <div class="panel panel-danger text-center date">
                                    <div class="panel-heading month">
                                        <span class="panel-title strong">
                                            Aug
                                        </span>
                                    </div>
                                    <div class="panel-body text-danger day">
                                        22
                                    </div>
                                </div>
                            </div>
                            <div class="media-body">
                                <h4 class="media-heading">
                                    Virtusa Software Meetings
                                </h4>
                                <p>
                                    A small software meetings for the virtusa software company team members. To join <a href="http://localhost:8080/sendemail">click here</a>
                                </p>
                            </div>
                        </li>
                        <li class="media">
                            <div class="media-left">
                                <div class="panel panel-danger text-center date">
                                    <div class="panel-heading month">
                                        <span class="panel-title strong all-caps">
                                            Sept
                                        </span>
                                    </div>
                                    <div class="panel-body text-danger day">
                                        8
                                    </div>
                                </div>
                            </div>
                            <div class="media-body">
                                <h4 class="media-heading">
                                    Virtusa Gitam Campus Drive
                                </h4>
                                <p>
                                    Online Meeting with the gitam students. <a href="/join">click here</a>
                                </p>
                            </div>
                        </li>
                    </ul>
                    <a href="#" class="btn btn-default btn-block">More Events »</a>
                </div>
            </div>
            <!-- End fluid width widget --> 
            
		</div>
	</div>
</div>

<footer class="footer">
        <div class="container">
            <div class="row">             
                <div class="col-4 offset-1 col-sm-2">
                    <h5>Links</h5>
                    <ul class="list-unstyled">
                        <li><a href="/welcome">Home</a></li>
                        <li><a href="/aboutus">About</a></li>
                        <li><a href="/contact">Contact</a></li>
                    </ul>
                </div>
                <div class="col-7 col-sm-5">
                    <h5>Our Address</h5>
                    <address>
		              8-3-404/D/<br>
		              BSNL OFFICE Beside, Ameerpet<br>
		              HYDERABAD<br>
		              <i class="fa-phone fa-lg"></i>: +91- 8464079764<br>
		              <i class="fa fa-fax fa-lg"></i>: +91- 9704823439<br>
		              <i class="fa fa-envelope fa-lg"></i>: <a href="mailto:sivasaianjuri@gmail.com">sivasaianjuri@gmail.com</a>
		           </address>
                </div>
                <div class="col-12 col-sm-4 align-self-center">
                    <div class="text-center">
                        <a class="btn btn-social-icon btn-google" href="http://google.com/+"><i class="fa fa-google-plus"></i></a>
                        <a class="btn btn-social-icon btn-facebook" href="http://www.facebook.com/profile.php?id="><i class="fa fa-facebook fa-lg"></i></a>
                        <a class="btn btn-social-icon btn-linkedin" href="http://www.linkedin.com/in/"><i class="fa fa-linkedin fa-lg"></i></a>
                        <a class="btn btn-social-icon btn-twitter" href="http://twitter.com/"><i class="fa fa-twitter fa-lg"></i></a>
                        <a class="btn btn-social-icon btn-google" href="http://youtube.com/"><i class="fa fa-youtube fa-lg"></i></a>
                        <a class="btn btn-social-icon" href="mailto:"><i class="fa fa-envelope-o fa-lg"></i></a>
                    </div>
                </div>
           </div>
           <div class="row justify-content-center">             
                <div class="col-auto">
                    <p>© Copyright 2020 Agile Software Meetings</p>
                </div>
           </div>
        </div>
    </footer>
    </c:when>
    </c:choose>
		<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="static/js/jquery-1.11.1.min.js"></script>
	<script src="static/js/bootstrap.min.js"></script>
    <script src="js/mobiscroll.javascript.min.js"></script>
</body>
</html>