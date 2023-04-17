
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Comment scuess</title>
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
	font-size: 25px;
	color: #333333;
}
.style13 {
	font-size: 24px;
	color: #FF0000;
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
          <li class="active"><a href="consumerLogin.jsp"><span>Users</span></a></li>
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
         
          <p class="style5">User Comment</p>
          <div class="clr"></div>
           
        
        
          <p>
		  <%@ include file="connect.jsp" %>
		  <%@ page import ="java.text.SimpleDateFormat,java.util.Date"%>
		  
		  <%
		  
		  int id=0,rank=0,rank1=0;
		  String title,name,comment,consumer;
		  String strDate,strTime,dt;
		  
           id= Integer.parseInt(request.getParameter("t"));
           title=request.getParameter("t1");
           name=request.getParameter("t2");
           comment=request.getParameter("t3");

            consumer =(String)application.getAttribute("consumer"); 
           
       try
		{
	String str = "Select * from serverimages where id="+id+" ";
	Statement st = connection.createStatement();
	ResultSet rs= st.executeQuery(str);
	if(rs.next())
	{
	rank = rs.getInt(9);
	rank1=rank+1;
	
     Statement st1 = connection.createStatement();
     String str1 ="update serverimages set rank="+rank1+" where id="+id+"";
     st1.executeUpdate (str1); 
	 
	 Statement st2 = connection.createStatement();
     String str2 ="update ownerimages set rank="+rank1+" where id="+id+"";
     st2.executeUpdate (str2); 
		}	
              SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
              SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
            
			  Date now = new Date();

         strDate = sdfDate.format(now);
         strTime = sdfTime.format(now);
         dt = strDate + "   " + strTime;   
            
	
    Statement st3=connection.createStatement();
   st3.executeUpdate("insert into  comment (id,consumer,title,name,comment,dt) values ('"+id+"','"+consumer+"','"+title+"','"+name+"','"+comment+"','"+dt+"')" );


%>
<h1 class="style13">Commented Sucessfully</h1>
<%

	
	 
		
		}
	  
	catch(SQLException e)
        {
		out.print(e.getMessage());
	    }  
         %> 
</P>
          <p align="right"><a href="consumerMain.jsp">Back</a></p>
          <div class="clr"></div>
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span></span> User Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
			<li><a href="consumerMain.jsp">User Main</a></li>
            <li><a href="consumerLogin.jsp">Log Out </a></li>
            
		   
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
