<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>View All Attackers</title>
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
.style5 {font-size: 16px}
.style10 {font-size: 14px}
.style11 {color: #000000}
.style12 {color: #FFFF00}
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
          <li><a href="webServerLogin.jsp"><span>Cloud  Server</span></a></li>
		  <li class="active"></li>
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
          <h2> All Consumers Search History</h2>
          <p>&nbsp;</p>
          <div class="clr"></div>
           
        
          
        
          <p> 
		  
		  <table width="577" border="1" align="center"  cellpadding="0" cellspacing="0"  ">
            <tr>
			  <td  width="45" height="34" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style5 style15 style12"><strong>SI NO</strong></div></td>
              <td  width="173" height="34" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style5 style15 style12"><strong>User Image </strong></div></td>
			  <td  width="181" height="34" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style5 style15 style12"><strong>Keyword Searched</strong></div></td>
              <td  width="168" height="34" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style5 style12 style15"><strong>Attacked Date</strong></div></td>
            </tr>
			
            <%@ include file="connect.jsp" %>
            <%
					  
						String s1,s2,s3;
						
						int id=0;
					
						try 
						{
								
								String str1 = "select * from search ";
								Statement st1 = connection.createStatement();
								ResultSet rs1 = st1.executeQuery(str1);
									
								
								while(rs1.next())
								{
							 
		
					      
								id = rs1.getInt(1);
								s1 = rs1.getString(2);
								s2 = rs1.getString(3);
								s3 = rs1.getString(4);
								
								
		
				             %>
          <tr>
	      <td  valign="baseline" height="25"><div align="center" class="style3 style10 style11"><%out.println(id);%></div></td>
          <td  valign="baseline" height="25"><div align="center" class="style3 style10 style11"><%out.println(s1);%></div></td>
          <td  valign="baseline" height="25"><div align="center" class="style3 style10 style11"><%out.println(s2);%></div></td>
          <td  valign="baseline" height="25"><div align="center" class="style3 style10 style11"><%out.println(s3);%></div></td>
          </tr>
			
                           <%
						}
						
						
						
						%>
			<tr>
			
              <td  valign="baseline" height="20">&nbsp;</td>
              <td  valign="baseline" height="20">&nbsp;</td>
              <td  valign="baseline" height="20">&nbsp;</td>
              <td  valign="baseline" height="20">&nbsp;</td>
            </tr>
			<p></p>
           <%
				
				connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
		   %>
		  </table>	
           </p>
		   
		   
						
          <p align="right"><a href="webServerMain.jsp">Back</a></p>
          <div class="clr"></div>
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span></span> Cloud Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><strong><a href="webServerMain.jsp">Cloud Main</a></strong></li>
		    <li><strong><a href="webServerLogin.jsp">Log Out</a></strong></li>
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
