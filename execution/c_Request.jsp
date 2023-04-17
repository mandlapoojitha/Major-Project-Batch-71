
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title> Images Key</title>
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
.style24 {color: #FF3300}
.style25 {
	color: #FF0000;
	font-weight: bold;
}
.style27 {font-size: 16px}
.style28 {color: #FFFF00; font-weight: bold; }
.style29 {
	color: #FF0000;
	font-size: 36px;
}
.style30 {font-weight: bold}
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
         
          <p class="style5 style25">Request SecretKey</p>
          <div class="clr"></div>
           
        
        
          <p>
	  <%@ include file = "connect.jsp" %>
	  <%@ page import = "java.util.Date" %>
	  <%@ page import = "java.text.SimpleDateFormat" %>
	  <%@ page import ="org.bouncycastle.util.encoders.Base64" %>
	
	  <%
		  
		    	try 
				{
			    String consumer = (String)application.getAttribute("consumer");
			
				String name = request.getParameter("t1");
				String encryptedName = new String(Base64.encode(name.getBytes()));
				
				String imgName,sk;
				String strDate,strTime,dt;
				String task;
				
				
				String str = "select * from serverimages where name='"+encryptedName+"'";
				Statement st = connection.createStatement();
				ResultSet rs = st.executeQuery(str);
		
					if(rs.next()==true)
					{
					 imgName = rs.getString(3);
					 String decryptedName = new String(Base64.decode(imgName.getBytes()));
					 sk=rs.getString(7);
				
					SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
					SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

					Date now = new Date();

					 strDate = sdfDate.format(now);
					 strTime = sdfTime.format(now);
					 dt = strDate + "   " + strTime;	
					
					 task="Download";
					
					String strQuery2 = "insert into transaction(user,name,sk,task,dt) values('"+consumer+"','"+imgName+"','"+sk+"','"+task+"','"+dt+"')";
					connection.createStatement().executeUpdate(strQuery2);
					
					
					 
				
			%>
			
		 
          <table width="478" border="0" align="center">
            <tr>
              <td width="223" height="51" bgcolor="#FF0000"><div align="center" class="style28"><span class="style27">Enter File Name </span></div></td>
              <td width="245"><label>
                  <input required name="t1" type="text" value="<%=decryptedName%>" size="25" />
              </label></td>
            </tr>
             
            <tr>
              <td height="35" bgcolor="#FF0000"><div align="center" class="style28"><span class="style27">Secret Key </span></div></td>
              <td><input name="t13" type="text" value="<%=sk%>" size="25" /></td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td height="26"></td>
               <form action="c_DownloadImg.jsp?name=<%=encryptedName%>&sk=<%=sk%>" method="post" name="form1" id="form1">
				<td><label>
                  <div align="right">
                    <span class="style24">Biometric Image</span> 
                    <input type="submit" name="Submit2" value="Download" />
                  </div>
				</label></td>
			   </form>
            </tr>
		    <tr>
              <td height="26"></td>
               <form action="c_Downloadcont.jsp?name=<%=encryptedName%>&sk=<%=sk%>" method="post" name="form1" id="form1">
				<td><label>
                  <div align="right">
                    <span class="style24">Content</span> 
                    <input type="submit" name="Submit2" value="Download" />
                  </div>
				</label></td>
			   </form>
            </tr>
          </table>
         		
			
			<%	
			
			
					
					
	
	 }
	 else
	 {
	 %>
			<h1 class="style29">Sorry Bimetric image Not Found</h1>
			
			<p>
			  <%
	 }
          
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%> 		  
			  
			  
			  
          </P>
		  </p>
			<div class="clr"></div>
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span></span> Users Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu style30">
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
