<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Upload Imge</title>
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
.style3 {color: #FFFF00}
.style4 {color: #FF0000}
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
          <h2 class="style4">Biometric Image Upload !!! </h2>
          <p>&nbsp;</p>
          <div class="clr"></div>
           
        
          
          <p>
 <%@ include file="connect.jsp" %>
 
 <%@ page import ="java.security.Key" %>
 <%@ page import ="javax.crypto.Cipher" %> 
 <%@ page import ="java.math.BigInteger" %>
 <%@ page import ="javax.crypto.spec.SecretKeySpec" %>
 <%@ page import ="org.bouncycastle.util.encoders.Base64" %>
 <%@ page import ="java.security.MessageDigest,java.security.DigestInputStream" %>
 <%@ page import ="java.security.KeyPairGenerator,java.security.KeyPair,java.security.Key" %>
 <%@ page import ="java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.io.BufferedInputStream" %>

<%

    try 
	{
      		String title=request.getParameter("title");
      		String name=request.getParameter("name");
			String desc=request.getParameter("desc");
			
			String forMac = title + name + desc;
			
      		String keys = "ef50a0ef2c3e3a5f";
      		String h1="";
      		String filename="filename.txt";
      		
      			
      			
      		    KeyPairGenerator kg = KeyPairGenerator.getInstance("RSA");
				Cipher encoder = Cipher.getInstance("RSA");
				
				String encryptedTitle = new String(Base64.encode(title.getBytes()));
			     String encryptedName = new String(Base64.encode(name.getBytes()));
			String encryptedDesc = new String(Base64.encode(desc.getBytes()));
			
				KeyPair kp = kg.generateKeyPair();
				Key pubKey = kp.getPublic();
				byte[] pub = pubKey.getEncoded();
      		PrintStream p = new PrintStream(new FileOutputStream(filename));  
			p.print(new String(forMac));
			
			MessageDigest md = MessageDigest.getInstance("SHA1");
			FileInputStream fis11 = new FileInputStream(filename);        
			DigestInputStream dis1 = new DigestInputStream(fis11, md);
			BufferedInputStream bis1 = new BufferedInputStream(dis1);
 
			//Read the bis so SHA1 is auto calculated at dis
			while (true) {
				int b1 = bis1.read();
				if (b1 == -1)
					break;
			}
 
			BigInteger bi1 = new BigInteger(md.digest());
			String spl1 = bi1.toString();
			
			h1 = bi1.toString(16);
			
			

				String key = String.valueOf(pub);
			%>
		 <form action="o_InsertImage.jsp" method="post" enctype="multipart/form-data">
         <table width="600" border="0"  cellpadding="0" cellspacing="0"  style="border-collapse: collapse; display:inline; margin:10px 10px 10px 10px; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px;">
				    
					<tr>
					  <td  width="243" height="45" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left" class="style3 style7" style="margin-left:20px;"><strong>  Title </strong></div></td>
					  <td  width="357" valign="middle" height="45" style="color:#000000;"><div align="left" style="margin-left:20px;"><input type="text" name="title" value=<%=encryptedTitle%>></div></td>
					</tr>
					
					<tr>
					  <td  width="243" height="45" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left" class="style3 style7" style="margin-left:20px;"><strong>Biometric Image Name </strong></div></td>
					  <td  width="357" valign="middle" height="45" style="color:#000000;"><div align="left" style="margin-left:20px;"><input type="text" name="name" value=<%=encryptedName%>></div></td>
					</tr>
					
					<tr>
  						<td  width="243" height="45" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left" class="style3 style7" style="margin-left:20px;"><strong> Biometric Image Description <br />
					    </strong></div></td>
						<td  width="357" valign="middle" height="45"><div align="left" style="margin-left:20px;">
						  <textarea name="desc" cols="23" rows="3" readonly><%=encryptedDesc%> </textarea>
					  </div></td>
					</tr>
					
					<tr>
					  <td  width="243" height="45" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left" class="style3 style7" style="margin-left:20px;"><strong>Digital Sign </strong></div></td>
					  <td  width="357" valign="middle" height="45" style="color:#000000;"><div align="left" style="margin-left:20px;"><input type="text" name="mac" value=<%=h1%>></div></td>
					</tr>
					<tr>
					  <td  width="243" height="45" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left" class="style3 style7" style="margin-left:20px;"><strong>Secret Key</strong></div></td>
					  <td  width="357" valign="middle" height="45" style="color:#000000;"><div align="left" style="margin-left:20px;"><input type="text" name="key" value=<%=key%>></div></td>
					</tr>
					  
		      <tr bgcolor="#FF0000">    <span class="style8"><strong>
                  </tr>
		            </strong></span>
				      
			  
					
					<tr>
					  <td   width="243" height="74" align="left" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="left" class="style3 style8" style="margin-left:20px;"><strong>Select Biometric Image </strong></div></td>
						<td  width="357" align="left" valign="middle" height="74" style="color: #2c83b0;"><div align="left">
					  <div align="left" style="margin-left:20px;"><input type="file" name="pic"></div></td>
					</tr>
					<div > <tr><td height="45" colspan="2" id="learn_more" align="center"  style="color:#FFFFFF;"><input type="submit" value="Submit" style="width:100px; height:35px; background-color:#000000; color:#FFFFFF;"/></td></tr></div>
			</table>
		  </form>
			 <%

	   

           connection.close();
     }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
		  
		  
%>	
				</p>
          <p align="right"><span class="style2"><a href="o_AddImage.jsp">Back</a></span></p>
          <div class="clr"></div>
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span></span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
             <li><strong><a href="ownerMain.jsp">Owner Main </a></strong></li>
            <li><strong><a href="ownerLogin.jsp">Log Out </a></strong></li>
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
