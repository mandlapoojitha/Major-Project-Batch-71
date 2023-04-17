
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Download Content</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-marketingscript.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<script type='text/javascript'>
        function saveTextAsFile()
{
	var textToWrite = document.getElementById("textarea").value;
	var textFileAsBlob = new Blob([textToWrite], {type:'text/plain'});
	var fileNameToSaveAs = "File.txt";

	var downloadLink = document.createElement("a");
	downloadLink.download = fileNameToSaveAs;
	downloadLink.innerHTML = "Download File";
	if (window.webkitURL != null)
	{
		// Chrome allows the link to be clicked
		// without actually adding it to the DOM.
		downloadLink.href = window.webkitURL.createObjectURL(textFileAsBlob);
	}
	else
	{
		// Firefox requires the link to be added to the DOM
		// before it can be clicked.
		downloadLink.href = window.URL.createObjectURL(textFileAsBlob);
		downloadLink.onclick = destroyClickedElement;
		downloadLink.style.display = "none";
		document.body.appendChild(downloadLink);
	}

	downloadLink.click();
}

function destroyClickedElement(event)
{
	document.body.removeChild(event.target);
}
</script>
<style type="text/css">
<!--
.style1 {font-size: 40px}
.style16 {
	color: #FF0000;
	font-weight: bold;
}
.style17 {
	font-size: 40px;
	color: #FF0000;
	font-weight: bold;
}
.style18 {font-weight: bold}
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
         
        
          <div class="clr"></div>
           
        
        
          <p>
	  <%@ include file = "connect.jsp" %>
	  <%@ page import = "java.util.Date" %>
	  <%@ page import = "java.security.Key" %>
	  <%@ page import = "java.text.SimpleDateFormat" %>
	  <%@ page import = "org.bouncycastle.util.encoders.Base64"%>
	  <%@ page import = "javax.crypto.spec.SecretKeySpec,javax.crypto.Cipher" %>
	  
	 
		<%

try 
			
			
				{
				
		  		String name = request.getParameter("name");
				String key = request.getParameter("sk");
				
			
				
				String strQuery = "select * from serverimages where name='"+name+"' and sk='"+key+"'";
				ResultSet rs = connection.createStatement().executeQuery(strQuery);

					if(rs.next()==true)
					{
					    
						
						String ct=rs.getString(5);
						String decryptedName = new String(Base64.decode(ct.getBytes()));
						
						
							
			%>
		  </p>
		  <p align="center" class="style17">Biometric File Contents</p>
		  
		    <label>
	            <div align="center">
	              <p>
	                <textarea name="text" id="textarea" cols="45" rows="17"><%=decryptedName%></textarea>
                  </p>
	              <p align="right"><a href="c_Comment.jsp?name=<%=name%>">Comment</a><br/>
	                <br/>
                  </p>
	              <td><button onClick="saveTextAsFile()">Download</button></td>
          </div>
		    </label>
		 <p align="right"><a href="c_Request.jsp?t1=<%=name%>">Back</a></p>
		  <p>
		    <%	
					}
					else
					{
						
		%>
	      </p>
		  <p>
		  <h1 class="style1 style16">File Doesn't Exist !!!</h1>
		  </p><br />
	<%
					}

        connection.close();
		  } 
          catch(Exception e)
          {
            out.println(e.getMessage());
          }%>
	 
			        
</P> 
              
          <div class="clr"></div>
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span></span> Users Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu style18">
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
