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
          <li><a href="webServerLogin.jsp"><span>Cloud Server</span></a></li>
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
          <h2> All Attackers</h2>
          <p>&nbsp;</p>
          <div class="clr"></div>
           
        
          
        
          <p> 
		  
		  <table width="657" border="1"  cellpadding="0" cellspacing="0"  ">
            <tr>
			  <td  width="29" height="34" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style5 style15 style12"><strong>Id</strong></div></td>
              <td  width="99" height="34" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style5 style15 style12"><strong>Title</strong></div></td>
              <td  width="88" height="34" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style5 style15 style12"><strong>Name</strong></div></td>
			  <td  width="146" height="34" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style5 style15 style12"><strong>Attacker</strong></div></td>
              <td  width="95" height="34" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style5 style15 style12"><strong>Attacked Date</strong></div></td>
			  <td  width="123" height="34" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style5 style12 style15"><strong>Digital Sign</strong></div></td>
            </tr>
			
            <%@ include file="connect.jsp" %>
			<%@ page import ="org.bouncycastle.util.encoders.Base64" %>
            <%
					  
						String title,name,mac,date,attacker;
						
						int id=0,i=1;
					
						try 
						{
								
								String str1 = "select * from attacker ";
								Statement st1 = connection.createStatement();
								ResultSet rs1 = st1.executeQuery(str1);
									
								
								while(rs1.next())
								{
							 
		
					      
								id = rs1.getInt(1);
								attacker = rs1.getString(2);
								title = rs1.getString(3);
								name = rs1.getString(4);
								mac = rs1.getString(6);
								date = rs1.getString(7);
								
								String decryptedTitle = new String(Base64.decode(title.getBytes()));
                                String decryptedName = new String(Base64.decode(name.getBytes()));
								
		
				             %>
          <tr>
	      <td  valign="baseline" height="30"><p class="style3 style10 style11">&nbsp;</p><div align="center" class="style3 style10 style11"><%out.println(id);%></div></td>
          <td  valign="baseline" height="30"><p class="style3 style10 style11">&nbsp;</p><div align="center" class="style3 style10 style11"><%out.println(decryptedTitle);%></div></td>
          <td  valign="baseline" height="30"><p class="style3 style10 style11">&nbsp;</p><div align="center" class="style3 style10 style11"><%out.println(decryptedName);%></div></td>
          <td  valign="baseline" height="30"><p class="style3 style10 style11">&nbsp;</p><div align="center" class="style3 style10 style11"><%out.println(attacker);%></div></td>
	      <td  valign="baseline" height="30"><p class="style3 style10 style11">&nbsp;</p><div align="center" class="style3 style10 style11"><%out.println(date);%></div></td>
		  <td  valign="baseline" height="30"><p class="style3 style10 style11">&nbsp;</p><div align="center" class="style3 style10 style11"><a href="a_DSign.jsp?mac=<%=mac%>&name=<%=decryptedName%>&type=<%="attack"%>">View</a></div></td>
          </tr>
			
                           <%
						}
						
						
						
						%>
			<tr>
			  <td  valign="baseline" height="20">&nbsp;</td>
              <td  valign="baseline" height="20">&nbsp;</td>
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
		   
		   
						
          <p align="right"><a href="auditorMain.jsp">Back</a></p>
          <div class="clr"></div>
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span></span>  Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu"><li><a href="auditorMain.jsp"> Main</a></li>
		    <li><a href="auditorLogin.jsp">Log Out</a></li>
          </ul>
        </div>
        <div class="gadget">
          <h2 class="star">&nbsp;</h2>
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
