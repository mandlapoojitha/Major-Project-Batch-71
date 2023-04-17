<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Attacker</title>
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
.style5 {
	color: #FF0000;
	font-weight: bold;
}
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
          <li><a href="ownerLogin.jsp"><span>Owner</span></a></li>
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
          <h2>Attacker</h2>
          <p>
		  
<%@ include file="connect.jsp" %>
<%@ page import="java.text.SimpleDateFormat,java.util.Date"%>
<%
	
	try {
		    String title = request.getParameter("t1");
  		    String name = request.getParameter("t2");
	        String cont = request.getParameter("t3");;
			String mac = request.getParameter("t4");
			
			String attacker = (String)application.getAttribute("attacker");
			String id = (String)application.getAttribute("imageID");

			String type = "Malicious Data Attack";
						
			String str = "Select * FROM serverimages where id='"+id+"' ";
		    Statement st = connection.createStatement();
		    ResultSet rs = st.executeQuery(str);
			
		   if(rs.next())
		    {
			
			SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
			SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

			Date now = new Date();

			String strDate = sdfDate.format(now);
			String strTime = sdfTime.format(now);
			String dt = strDate + "   " + strTime;
			
			
		String str3 = "select * from attacker where attacker = '"+attacker+"' ";
		Statement st3 = connection.createStatement();
		ResultSet rs3 = st3.executeQuery(str3);
		if(rs3.next())
		{
		%><h1 class="style5">You are attacker...!</h1>
<%
		} 	
		else
		{	
  String str1 = "update serverimages set title='"+title+"',name='"+name+"',description='"+cont+"',digitalsign='"+mac+"' where id='"+id+"' ";
  connection.createStatement().executeUpdate(str1);
			
  String str2 = "insert into attacker(id,attacker,title,name,cont,mac,dt,type) values('"+id+"','"+attacker+"','"+title+"','"+name+"','"+cont+"','"+mac+"','"+dt+"','"+type+"')";
  connection.createStatement().executeUpdate(str2);
  %><h1 class="style5">Attacked Success Fully...!</h1>
<%
		}	
			
			}
%>


<p><br />
  
    <%
	connection.close();


	} catch (Exception e) {
		out.println(e.getMessage());
		e.printStackTrace();
	}
%>
  </p>
</p>
<p align="right"><a href="Attacker1.jsp">Back</a></p>
<div class="clr"></div>
         
        
          
          <div class="clr"></div>
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span></span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><strong><a href="index.html">Home</a></strong></li>
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
