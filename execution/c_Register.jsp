<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Registration</title>
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
.style5 {color: #FF0000}
.style7 {color: #FF0000; font-weight: bold; }
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
		  <li><a href="auditorLogin.jsp"></a></li>
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
		s 
		
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
          <h2 class="style5">User Registration!!!</h2>
          <p>&nbsp;</p>
          <div class="clr"></div>
           
        
          
          <p><img src="images/Register.png" width="439" height="181" />
          <form action="c_InsertData.jsp" method="post" id="sendemail" enctype="multipart/form-data">
            <ol>
              <li class="style7">
                <label for="name"><span class="style2">User Name </span>(required)</label>
                <input id="name" name="userid" class="text" />
              </li>
               <li class="style7">
                <label for="password"><span class="style2">Password</span> (required)</label>
                <input type="password" id="password" name="pass" class="text" />
              </li>
              <li class="style7">
                <label for="email"><span class="style2">Email Address </span>(required)</label>
                <input id="email" name="email" class="text" />
              </li>
			  <li class="style7">
                <label for="mobile"><span class="style2">Mobile Number </span>(required)</label>
                <input id="mobile" name="mobile" class="text" />
              </li>
              
              <li class="style7">
                <label for="address"><span class="style2">Your Address</span></label>
                <textarea id="address" name="address" rows="3" cols="50"></textarea>
              </li>
			  <li class="style7">
                <label for="dob"><span class="style2">Date of Birth </span>(required)</label>
                <input id="dob" name="dob" class="text" />
              </li>
			  <li class="style7">
                <label for="gender"><span class="style2">Select Gender</span> (required)</label>
                <select id="s1" name="gender" style="width:480px;" class="text">
                              <option>--Select--</option>
                              <option>MALE</option>
                              <option>FEMALE</option>
                </select>
              </li>
			  <li class="style7">
                <label for="pincode"><span class="style2">Enter Pincode</span> (required)</label>
                <input id="pincode" name="pincode" class="text" />
              </li>
			  
			  
			  <li>                <span class="style7">
                                <label for="pic">Select Profile Picture (required)</label>
                                </span><span class="style5">
                                <label for="pic"></label>
                </span><span class="style7">                </span>
                <label for="pic"></label>
                <input type="file" id="pic" name="pic" class="text" />
                <ol>
                  
                  <ol>
                      
                    <ol>
                      <li></li>
					  
					  <p><span class="style36">
              <label for="label"><span class="style7">Select Finger Print(required)</span></label>
            </span> <span class="style36">
            <input type="file" id="label" name="pic2" class="text" />
            </span></p>
                    </ol>
                  </ol>
                </ol>
			  </li>
              <li>
                <div class="clr"></div>
              </li>
            </ol>
            <p>&nbsp;            </p>
            <p>
              <input type="image" name="imageField" id="imageField" src="images/submit.gif" class="send" />
            </p>
          </form></p>
          <p align="right"><span class="style2"><a href="consumerLogin.jsp">Back</a></span></p>
          <div class="clr"></div>
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span></span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
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
