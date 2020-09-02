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
<link href="static/css/main.css" rel="stylesheet">
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
				<ul class="nav navbar-nav">

				</ul>
				<div class="pull-left">
        			<ul class="nav navbar-nav">
        				<li><a href="/welcome">Home</a></li>
        				<li><a href="/host">Host a Meeting</a></li>
           				 <li><a href="/login"><span class="fa fa-sign-in"></span>Logout</a></li>
      				</ul>     
				</div>
			</div>
		</div>
	</div>
	
	<body background="static/18.jpg"
	style="background-position: center; background-repeat: no-repeat; background-size: cover;">
	<noscript>
		<h2>Sorry! Your browser doesn't support Javascript</h2>
	</noscript>
<div class="container">
   <video id="video" autoplay></video>
   <script>

      navigator.mediaDevices.getUserMedia({
         video: {
            width: {
               min: 640,
               max: 1000
            },
            height: {
               min: 480,
               max: 720
            }
         }
      })
      .then(stream => {
         document.getElementById("video").srcObject = stream;
      })
   </script>
</div>
<div class="split right">
	<div id="username-page">
		<div class="username-page-container">
			<h1 class="title">Type your username</h1>
			<form id="usernameForm" name="usernameForm">
				<div class="form-group">
					<input type="text" id="name" placeholder="Username"
						autocomplete="off" class="form-control" />
				</div>
				<div class="form-group">
					<button type="submit" class="accent username-submit">Start
						Chatting</button>
				</div>
			</form>
		</div>
	</div>

	<div id="chat-page" class="hidden">
		<div class="chat-container">
			<div class="chat-header">
				<h2>Team chat</h2>
			</div>
			<div class="connecting">Connecting...</div>
			<ul id="messageArea">

			</ul>
			<form id="messageForm" name="messageForm" nameForm="messageForm">
				<div class="form-group">
					<div class="input-group clearfix">
						<input type="text" id="message" placeholder="Type a message..."
							autocomplete="off" class="form-control" />
						<button type="submit" class="primary">Send</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.1.4/sockjs.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/stomp.js/2.3.3/stomp.min.js"></script>
	<script src="static/js/main.js"></script>
		<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="static/js/jquery-1.11.1.min.js"></script>
	<script src="static/js/bootstrap.min.js"></script>
</body>
</html>