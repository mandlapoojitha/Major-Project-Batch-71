<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Login Page</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-marketingscript.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style1 {font-size: 40px}
.style2 {font-size: 14px}
.style3 {color: #FF0000}
.style4 {
	font-size: 14px;
	color: #FF0000;
	font-weight: bold;
}
.style7 {color: #FF0000; font-weight: bold; }
.style8 {font-weight: bold}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
     
      <div class="menu_nav">
        <ul>
          <li><a href="index.html"><span>Home Page</span></a></li>
          <li class="active"><a href="ownerLogin.jsp"><span>Owner</span></a></li>
          <li><a href="consumerLogin.jsp"><span>Users</span></a></li>
          <li><a href="webServerLogin.jsp"><span>Cloud Server</span></a></li>
		  <li></li>
          <li></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="logo">
        <h1><a href="index.html" class="style1">Design of secure authenticated key management protocol for cloud computing environment</a></h1>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider">
		
		<img src="images/slide1.jpg" width="960" height="360" alt="" />
		<img src="images/slide2.jpg" width="960" height="360" alt="" />
		<img src="images/slide3.jpg" width="960" height="360" alt="" /> 
		
		</div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        
        <div class="article">
          <h2 class="style3">Owner Login Page..! </h2>
          <p>&nbsp;</p>
          <div class="clr"></div>
           
        
          
          <p><img src="images/Login.png" width="179" height="179" />
          <form action="authentication.jsp?type=<%="owner"%>" method="post" id="leavereply">
            <ol>
              <li>
                <label for="name"><span class="style4">User Name (required)</span></label>
                <span class="style7"><input id="name" name="userid" class="text" />
              </span></li>
              <li>
                <span class="style7"><label for="email"><span class="style2">Password (required)</span></label>
                </span><span class="style3"><label for="email"></label>
                </span><label for="email"></label>
                <input type="password" id="pass" name="pass" class="text" />
              </li>
              
              <li>
                <input type="image" name="imageField" id="imageField" src="images/submit.gif" class="send" />
                <div class="clr"></div>
              </li>
            </ol>
          </form></p>
          <p align="right" class="style2"><span class="style7">New Users?</span> <strong><a href="o_Register.jsp">Register</a></strong> </p>
          <div class="clr"></div>
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span></span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu style8">
            <li><a href="index.html">Home</a></li>
            <li><a href="ownerLogin.jsp">Owner</a></li>
            <li><a href="consumerLogin.jsp">Users</a></li>
            <li><a href="webServerLogin.jsp">Cloud  Server</a></li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg"></div>
  <div class="footer">
    <div class="footer_resize">
     
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
</body>
</html>
