<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Consumer Profile</title>
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
.style6 {color: #aeaeae; font-size: 14px; }
.style7 {font-size: 14px}
.style8 {font-size: 18px}
.style9 {color: #FF0000}
.style10 {color: #333333}
.style11 {color: #333333; font-size: 14px; }
.style12 {color: #FFFF00}
.style13 {font-weight: bold}
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
          <h2> <span class="style9">Users Profile</span></h2>
          <p>&nbsp;</p>
          <p><table width="547" border="1.5" align="center"  cellpadding="0" cellspacing="0"  >
					
					
				
<%@ include file="connect.jsp" %>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>

					<%
						
						String consumer=(String )application.getAttribute("consumer");
						
						String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13;
						int i=0;
						try 
						{
						   	String query="select * from consumer where username='"+consumer+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(4);
								s3=rs.getString(5);
								s4=rs.getString(6);
								s5=rs.getString(7);
								s6=rs.getString(10);
								
								
								if(s6.equals("Waiting")){
							
									
									s1 = new String(Base64.encode(s1.getBytes()));
									s2 = new String(Base64.encode(s2.getBytes()));
									s3 = new String(Base64.encode(s3.getBytes()));
									s4 = new String(Base64.encode(s4.getBytes()));
									s5 = new String(Base64.encode(s5.getBytes()));
									
								
							}
								
								
								
								
					%>
					<tr>
					<td width="230" rowspan="8" >
						<div class="style7" style="margin:10px 13px 10px 13px;" ><a class="#" id="img1" href="#" >
						 <input  name="image" type="image" src="w_ProfilePic.jsp?id=<%=i%>&type=<%="consumer"%>" style="width:200px; height:200px;"  />
						 </a></div>					</td>
					</tr>
					
					<tr>
					<tr>
					  <td  width="127" height="28" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left" class="style3 style14 style7 style12" style="margin-left:20px;"><strong>Name</strong></div></td>
					  <td  width="182" valign="middle" height="28" style="color:#000000;"><div align="left" class="style6 style10" style="margin-left:20px;"><%out.println(s1);%></div></td>
					</tr>
					  <td  width="127" height="28" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left" class="style3 style14 style7 style12" style="margin-left:20px;"><strong>E-Mail</strong></div></td>
					  <td  width="182" valign="middle" height="28" style="color:#000000;"><div align="left" class="style11" style="margin-left:20px;"><%out.println(s2);%></div></td>
					</tr>
					<tr>
					  <td  width="127" height="28" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left" class="style3 style14 style7 style12" style="margin-left:20px;"><strong>Mobile</strong></div></td>
					  <td  width="182" valign="middle" height="28"><div align="left" class="style11" style="margin-left:20px;"><%out.println(s3);%></div></td>
					</tr>
					<tr>
<td  width="127" height="28" align="left" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left" class="style3 style14 style7 style12" style="margin-left:20px;"><strong>Address</strong></div> </td>                    	
<td  width="182" align="left" valign="middle" height="28"><div align="left" class="style11" style="margin-left:20px;"><%out.println(s4);%></div></td>
					</tr>
					<tr>
					  <td  width="127" height="23" align="left" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left " class="style3 style14 style7 style12" style="margin-left:20px;"><strong>Date Of Birth</strong></div></td>
					  <td  width="182" align="left" valign="middle" height="23"><div align="left" class="style11" style="margin-left:20px;"><%out.println(s5);%></div></td>
					</tr>
					<tr>
					  <td   width="127" height="101" align="left" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left" class="style3 style14 style7 style12" style="margin-left:20px;"><strong>Status</strong></div                        ></td>
						<td  width="182" align="left" valign="middle" height="101" style="color: #2c83b0;"><div align="left">
					  <div align="left" class="style11" style="margin-left:20px;"><%out.                       println(s6);%></div></td>
					</tr>
					 
				
					<%if(s6.equals("Waiting"))
					{
					%>
					<p class="style8"><span class="style10">You are</span> <span class="style9">Unauthorized consumer</span><span class="style10"> please wait for</span><span class="style9"> Server permission</span><span class="style10">.</span></p>
					<%
					}
						}
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>

					
				</table>
          </p>
                <p align="right"><a href="consumerMain.jsp">Back</a></p>
                <div class="clr"></div>
           
        
          
          <p></p>
          <div class="clr"></div>
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span></span>Users Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu style13">
            <li>User <a href="consumerMain.jsp"> Main </a></li>
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
