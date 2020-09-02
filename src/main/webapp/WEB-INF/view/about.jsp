<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Expires" content="sat, 01 Dec 2001 00:00:00 GMT">
<title>About</title>

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
                <li class="breadcrumb-item "> <a href="/welcome">Home</a></li>
                <li class="breadcrumb-item "> AboutUs</li>

            </ol>
            <div class="col-12">
                <h3>About Us</h3>
                <hr>
            </div>
        </div>

        <div class="row row-content">
            <div class="col-sm-6">
                <h2>Our History</h2>
                <p>On 29 March 2018, Agile Meetings had around 20,000 employees.
Agile Meetings will have a global presence with offices throughout US, Europe and Asia, and advanced development centers in the United States, Europe and Asia.
          		</p>
                <p>Agile Corporation (NASDAQ: AGTU) is a global information technology (IT) services company providing IT consulting, technology and  services.Using our enhanced global delivery model, innovative software approach and industry expertise, we provide high-value IT services that enable our clients to enhance business performance, accelerate time-to-market, increase productivity and improve customer service.We serve Global 2000 companies and the leading software vendors in Communications & Technology, Banking & Financial Services, Insurance, Telecommunications, and Media, Information & Entertainment industries. We build and sustain application platforms for our clients that create competitive advantage
                </p>
            </div>
        </div>


        <div class="row row-content">
            <div class="col-12">
                <h2>Corporate Leadership</h2>


                <div id="accordion">
                    <div class="card">
                        <div class="card-header" role="tab" id="peterhead">
                            <h3 class="mb-0">
                                <a data-toggle="collapse" data-target="#peter">Kris Canekeratne <small>Chief Executive Officer</small>
                                </a>
                                </h3>
                        </div>
                        <div role="tabpanel" class="collapse show" id="peter" data-parent="#accordion">
                            <div class="card-body">
                                <p class="d-none d-sm-block">
									Kris A. Canekeratne , One of the Co-founders, has served as chairman of our board of directors from our inception and chief executive officer from 1996 to 1997 and from 2000 to the present. As Chief executive Officer, he plays a key role in defining the company strategy. 
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-header" role="tab" id="dannyheader">
                            <h3 class="mb-0">
                                <a data-toggle="collapse" data-target="#danny">Joseph Doody <small>Director</small>
                                </a>
                                </h3>
                        </div>
                        <div role="tabpanel" class="collapse" id="danny" data-parent="#accordion">
                            <div class="card-body">
                                <p class="d-none d-sm-block">Our Director, Joseph Doody since Febraury 2017. Mr Doody has over 40 years of professional experience most recently serving as Vice chairman of Staples, Inc</p>
                            </div>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-header" role="tab" id="agumbeheader">
                            <h3 class="mb-0">
                                <a data-toggle="collapse" data-target="#agumbe">Samir Dhir<small>President and Head of Americas</small>
                                </a>
                                </h3>
                        </div>
                        <div role="tabpanel" class="collapse" id="agumbe" data-parent="#accordion">
                            <div class="card-body">
                                <p class="d-none d-sm-block">Samir Dhir is the president of Agile Corporation, and is responsible for developing and executing Agile’s growth strategy and overall P&L management for all industry groups including sales, delivery, and operations in the Americas. The industry group comprises of Banking & Financial Services, Healthcare, Insurance and Life Sciences, Telecom, Media and High-Tech. In addition, Samir oversees Virtusa’s global alliances, sales enablement, and xLabs.</p>
                            </div>
                        </div>    
                    </div>
                    <div class="card">
                        <div class="card-header" role="tab" id="albertoheader">
                            <h3 class="mb-0">
                                <a data-toggle="collapse" data-target="#alberto">Ranjan Kalia <small>Executive Vice President</small>
                                </a>
                                </h3>
                        </div>
                        <div role="tabpanel" class="collapse" id="alberto" data-parent="#accordion">
                            <div class="card-body">
                                <p class="d-none d-sm-block">Ranjan Kalia has served as our executive vice president, chief financial officer, treasurer and secretary since October 2008, and also oversees our global facilities. Prior to his promotion, he served as senior vice president, finance when he joined us in April 2008</p>
                            </div>
                        </div>    
                    </div>
                </div>
            </div>
        </div>
        <div class="row row-content">
            <div class="col-12 col-sm-9">
                <h2>Facts &amp; Figures</h2>
                <div class="table-responsive">
                    <table class="table table-striped">
                        <thead class="thead-dark">
                            <tr>
                                <th>&nbsp;</th>
                                <th>2013</th>
                                <th>2014</th>
                                <th>2015</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th>Employees</th>
                                <td>15</td>
                                <td>30</td>
                                <td>40</td>
                            </tr>
                            <tr>
                                <th>Customers</th>
                                <td>15000</td>
                                <td>45000</td>
                                <td>100,000</td>
                            </tr>
                            <tr>
                                <th>Special Events</th>
                                <td>3</td>
                                <td>20</td>
                                <td>45</td>
                            </tr>
                            <tr>
                                <th>Annual Turnover</th>
                                <td>$251,325</td>
                                <td>$1,250,375</td>
                                <td>~$3,000,000</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
             <div class="col-12 col-sm-3">
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
                        <li><a href="#">About</a></li>
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
    <script src="static/js/jquery-1.11.1.min.js"></script>
	<script src="static/js/bootstrap.min.js"></script>
    <script src="js/mobiscroll.javascript.min.js"></script>
    
</body>
</html>