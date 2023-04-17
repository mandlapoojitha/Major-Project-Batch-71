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
.style5 {font-size: 14px}
.style6 {color: #FFFF00; font-weight: bold; }
.style7 {
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
 <%@ page import = "org.bouncycastle.util.encoders.Base64"%>
 <%
		
  String id,title,name,cont;
 
  
  	try {
	
  		String iname = request.getParameter("iname");
  		String aname = request.getParameter("aname");
	     application.setAttribute("attacker",aname);
  	
	    String encryptedIname = new String(Base64.encode(iname.getBytes()));
		
  		String strQuery = "select * from serverimages where name='"+ encryptedIname +"' ";
  		ResultSet rs = connection.createStatement().executeQuery(strQuery);
  		{
  			if (rs.next() == true) {
			    id = rs.getString(1);
  				title = rs.getString(2);
  				name = rs.getString(3);
				cont =rs.getString(5);
				String encryptedTitle = new String(Base64.decode(title.getBytes()));
				String encryptedName = new String(Base64.decode(name.getBytes()));
				String encryptedCont = new String(Base64.decode(cont.getBytes()));
				
   	     application.setAttribute("imageID",id);
				
  %>

          <form action="Attacker22.jsp" method="get" name="form1" >
<table width="478" border="0" align="center">
	<tr>
		<td width="223" bgcolor="#FF0000"><div align="center" class="style6"><span class="style5">Title</span></div></td>
		<td width="245"><label> <input required name="t1"type="text" value="<%=encryptedTitle%>" size="25" /> </label></td>
	</tr>

	<tr>
		<td height="34" bgcolor="#FF0000"><div align="center" class="style6"><span class="style5">Biometric Image Name  </span></div></td>
		<td><input name="t2" type="text" value="<%=encryptedName%>" size="25" /></td>
	</tr>
		
	<tr>
		<td bgcolor="#FF0000"><div align="center" class="style6"><span class="style5">Discription</span></div></td>
		<td><textarea name="text" id="textarea" cols="26" rows="17"><%=encryptedCont%></textarea></td>
	</tr>


	<tr>
		<td height="34" bgcolor="#FF0000"><div align="center" class="style6"><span class="style5">Digital Sign </span></div></td>
		<td><input name="t13" type="text" size="25" /></td>
	</tr>
	<tr>
		<td><div align="right"></div></td>
		<td><label> <input type="submit" name="Submit2"value="Attack" /> </label></td>
	</tr>
</table>

</form>

<%
			} 
  		else {
  		
%> <H1 class="style7">File Doesn't Exist..!</H1>
								<%
								}
									}

									connection.close();
  		
  							  			
  	}					catch(Exception e) {
									out.println(e.getMessage());
								}
							%>

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
            <li><a href="index.html">Home</a></li>
           
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
