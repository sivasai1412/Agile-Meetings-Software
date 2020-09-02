<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Expires" content="sat, 01 Dec 2001 00:00:00 GMT">
<title>Contact</title>

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
        				<li><a href="/show-meetings">All Meetings</a></li>
        				<li><a href="/show-users">All Users</a></li>
        				<li><a href="/login">Join a Meeting</a></li>
           				 <li><a href="/login"><span class="fa fa-sign-in"></span> Login</a></li>
      				</ul>     
				</div>
			</div>
	</div>
	</div>
    <header class="jumbotron">
        <div class="container">
            <div class="row row-header">
                <div class="col-12 col-sm-6">
                    <h1>Agile Software Meetings</h1>
                    <p></p>
                </div>
                <div class="col-12 col-sm align-self-center">
                </div>
            </div>
        </div>
    </header>

    <div class="container">
        <div class="row">
            <ol class="col-12 breadcrumb">
                <li class="breadcrumb-item"><a href="/welcome">Home</a></li>
                <li class="breadcrumb-item active">Contact Us</li>
            </ol>
            <div class="col-12">
               <h3>Contact Us</h3>
               <hr>
            </div>
        </div>

       

        <div class="row row-content">
           <div class="col-12">
              <h3>Send us your Feedback</h3>
           </div>
            <div class="col-12 col-md-9">
                <form>
                    <div class="form-group row">
                        <label for="firstname" class="col-md-2 col-form-label">First Name</label>
                        <div class="col-md-10">
                            <input type="text" class="form-control" id="firstname" name="firstname" placeholder="First Name">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="lastname" class="col-md-2 col-form-label">Last Name</label>
                        <div class="col-md-10">
                            <input type="text" class="form-control" id="lastname" name="lastname" placeholder="Last Name">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="telnum" class="col-12 col-md-2 col-form-label">Contact Tel.</label>
                        <div class="col-5 col-md-3">
                            <input type="tel" class="form-control" id="areacode" name="areacode" placeholder="Area code">
                        </div>
                        <div class="col-7 col-md-7">
                            <input type="tel" class="form-control" id="telnum" name="telnum" placeholder="Tel. number">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="emailid" class="col-md-2 col-form-label">Email</label>
                        <div class="col-md-10">
                            <input type="email" class="form-control" id="emailid" name="emailid" placeholder="Email">
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-md-6 offset-md-2">
                            <div class="form-check">
                                <input type="checkbox" class="form-check-input" name="approve" id="approve" value="">
                                <label class="form-check-label" for="approve">
                                    <strong>May we contact you?</strong>
                                </label>
                            </div>
                        </div>
                        <div class="col-md-3 offset-md-1">
                            <select class="form-control">
                                <option>Tel.</option>
                                <option>Email</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="feedback" class="col-md-2 col-form-label">Your Feedback</label>
                        <div class="col-md-10">
                            <textarea class="form-control" id="feedback" name="feedback" rows="12"></textarea>
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="offset-md-2 col-md-10">
                            <button type="submit" class="btn btn-primary">
                                Send Feedback
                            </button>
                        </div>
                    </div>
                </form>
            </div>
             <div class="col-12 col-md">
            </div>
       </div>
       
        <div class="row row-content">
           <div class="col-12">
              <h3>Location Information</h3>
           </div>
            <div class="col-12 col-sm-4 offset-sm-1">
                   <h5>Our Address</h5>
                    <address style="font-size: 100%">
		              8-3-404/3, Yellareddyguda, Near BSNL Office<br>
		              Yousufguda, Ameerpet<br>
		              HYDERABAD<br>
		              <i class="fa fa-phone"></i>: +91- 8464079764<br>
		              <i class="fa fa-fax"></i>: +91- 9704823439<br>
		              <i class="fa fa-envelope"></i>:
                        <a href="mailto:sivasaianjuri@gmail.com">sivasaianjuri@gmail.com</a>
		           </address>
            </div>
            <div class="col-12 col-sm-11 offset-sm-1">
                <div class="btn-group" role="group">
                    <a role="button" class="btn btn-primary" href="tel:+91-8464079764"><i class="fa fa-phone"></i> Call</a>
                    <a role="button" class="btn btn-info"><i class="fa fa-skype"></i> Skype</a>
                    <a role="button" class="btn btn-success" href="mailto:sivasaianjuri@gmail.com"><i class="fa fa-envelope-o"></i> Email</a>
                </div>
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
                        <li><a href="/contactus">Contact</a></li>
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
		<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="static/js/jquery-1.11.1.min.js"></script>
	<script src="static/js/bootstrap.min.js"></script>
    <script src="js/mobiscroll.javascript.min.js"></script>
</body>
</html>