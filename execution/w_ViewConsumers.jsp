<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>View All Consumers</title>
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
.style5 {font-size: 16px}
.style6 {color: #FFFF00}
.style7 {font-weight: bold}
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
          <h2>View All Users </h2>
          <p>&nbsp;</p>
          <div class="clr"></div>
           
        
          
          <p></p>
          <p>  <table width="631" border="1"  cellpadding="0" cellspacing="0"  ">
            <tr>
              <td  width="34" height="34" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style6 style5 style15"><strong>ID</strong></div></td>
              <td  width="108" height="34" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style6 style5 style15"><strong>UserImage</strong></div></td>
              <td  width="102" height="34" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style6 style5 style15"><strong>Username</strong></div></td>
              <td  width="110" height="34" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style6 style5 style15"><strong>Mobile</strong></div></td>
              <td  width="132" height="34" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style6 style5 style15"><strong>Address</strong></div></td>
              <td  width="90" height="34" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style5 style6 style15"><strong>Status</strong></div></td>
            </tr>
            <%@ include file="connect.jsp" %>
            <%
					  
						String s1,s2,s3,s4;
						int i=0;
						try 
						{
						   	String query="select * from consumer"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(5);
								s3=rs.getString(6);
								s4=rs.getString(10);
								
								
								
								
							
						
					%>
            <tr>
              <td  valign="baseline" height="0"><p class="style3 style2">&nbsp;</p>
                  <div align="center" class="style3 style2">
                    <p>
                      <%out.println(i);%>
                    </p>
                    <p>&nbsp; </p>
                  </div></td>
              <td width="108" rowspan="1" ><div class="style3 style2" style="margin:10px 13px 10px 13px;" > <a class="#" id="img1" href="#" >
                  <input  name="image" type="image" src="w_ProfilePic.jsp?id=<%=i%>&type=<%="consumer"%>" style="width:90px; height:90px;"  />
              </a> </div></td>
              <td  valign="baseline" height="0"><p class="style3 style2">&nbsp;</p>
                  <div align="center" class="style3 style2">
                    <%out.println(s1);%>
                </div></td>
              <td  valign="baseline" height="0"><p class="style3 style2">&nbsp;</p>
                  <div align="center" class="style3 style2">
                    <%out.println(s2);%>
                </div></td>
              <td  valign="baseline" height="0"><p class="style3 style2">&nbsp;</p>
                  <div align="center" class="style3 style2">
                    <%out.println(s3);%>
                </div></td>
              <%
						if(s4.equalsIgnoreCase("waiting"))
						{
						
						%>
              <td  width="90" valign="baseline" height="0" style="color:#000000;"align="center"><div align="center" class="style3 style2">
                  <p>&nbsp;</p>
                <p><a href="w_Status.jsp?id=<%=i%>&type=<%="consumer"%>">waiting</a></p>
              </div></td>
              <%
						}
						else
						{
						%>
              <td width="35" height="0"  valign="baseline"><p class="style3">&nbsp;</p>
                  <div align="center" class="style3">
                    <%out.println(s4);%>
                </div></td>
              <%
						}
						%>
            </tr>
            <%
						}
						
					
				
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
            <tr>
              <td  valign="baseline" height="0">&nbsp;</td>
              <td  valign="baseline" height="0">&nbsp;</td>
              <td  valign="baseline" height="0">&nbsp;</td>
              <td  valign="baseline" height="0">&nbsp;</td>
              <td  valign="baseline" height="0">&nbsp;</td>
              <td  valign="baseline" height="0">&nbsp;</td>
            </tr>
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
          <ul class="sb_menu style7">
             <li><a href="webServerMain.jsp">Cloud  Main</a></li>
		     <li><a href="webServerLogin.jsp">Log Out</a></li>
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
