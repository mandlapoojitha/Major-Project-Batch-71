

<style type="text/css">
<!--
.style1 {
	color: #FF0000;
	font-weight: bold;
}
-->	
</style>
<%@ include file="connect.jsp" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<%@ page import="com.oreilly.servlet.*"%>
          
<%
				   ArrayList list = new ArrayList();
					
					ServletContext context = getServletContext();
					
					String dirName =context.getRealPath("Gallery/");
					
					String paramname=null,bank="",name="",pass="",email="",mno="",addr="",dob="",gender="",pincode="",location="",image=null,image2=null,cloud=null,bin = "";
				
					FileInputStream fs=null,fs2=null;
					
					File file1 = null, file2 = null;	

					try {
						MultipartRequest multi = new MultipartRequest(request, dirName,	10 * 1024 * 1024);	
					
							
						int f = 0;
						Enumeration files = multi.getFileNames();	
						while (files.hasMoreElements()) 
						{
							paramname = (String) files.nextElement();
							
							if(paramname != null)
							{
								f = 1;
								image = multi.getFilesystemName(paramname);
							}		
						}
			
			
					
								String sql1="SELECT * FROM owner where  thumbname='"+image+"' ";
								Statement stmt1 = connection.createStatement();
								ResultSet rs1 =stmt1.executeQuery(sql1);
								if(rs1.next()==true)
								{
									
											
									
							
											response.sendRedirect("ownerMain.jsp");
										
								 }
								else
								{
										%>
									              <br/>
											    </div>
												<p align="center" class="style1">Finger Print Mismatch, Please Provide Correct Finger Print!! </p>
												<div align="center"><br/>
											      <br/>
												  <a href="ownerLogin.jsp"><strong>Back</strong></a>
									              <%
								}
				
					
					
				
				

	}
	 catch (Exception e)
	  {
		out.print(e);
		e.printStackTrace();
	}
%>
												  
                                                </div>
												