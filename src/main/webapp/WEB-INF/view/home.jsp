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
<link href="static/css/style.css" rel="stylesheet">
  

  
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
<div class="event text-center">
<h3>Add Events</h3>
<div id="editor"></div>
  <div id="calendar"></div>
  <pre id="debug" style="overflow-x:hidden"></pre>
  <div style="text-align: center">
  </div>
  <link rel="stylesheet" href="static/css/calendar.css">
  <link rel="stylesheet" href="static/css/editor.css">
  <script src="static/js/editor.js"></script>
  <script src="static/js/calendar.js"></script>

</div>
  <script>
    var calendar = new Calendar({
      target: document.querySelector("#calendar"),
      data: {
        showNew: true,
        escape: false,
        year: 2020,
        month: 7,
      }
    })
    calendar.set({ message: 'loading...' })
    fetch("entries.json").then(r => r.json()).then(data => {
      var entries = calendar.get('entries')
      entries = entries.concat(data.entries)
      calendar.set({ entries: entries, message: '' })
    })
    var editor = new Editor({
      target: document.querySelector("#editor"),
      data: {
        calendar: calendar
      }
    })

    function debug() {
      document.querySelector('#debug').textContent = JSON.stringify(calendar.get(), null, 4)
    }
  </script>
  <style>
    img {
      max-width: 100%;
    }

    pre {
      background-color: whitesmoke;
      padding: 1.4rem;
    }

  </style>
		 
		


<footer class="footer">
        <div class="container">
            <div class="row">             
                <div class="col-4 offset-1 col-sm-2">
                    <h5>Links</h5>
                    <ul class="list-unstyled">
                        <li><a href="/welcome">Home</a></li>
                        <li><a href="/about">About</a></li>
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
    </div>
		<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="static/js/jquery-1.11.1.min.js"></script>
	<script src="static/js/bootstrap.min.js"></script>
    <script src="js/mobiscroll.javascript.min.js"></script>
</body>
</html>