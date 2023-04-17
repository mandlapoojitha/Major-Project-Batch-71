<title>Data Lineage in Malicious Environments</title>

<%@ include file="connect.jsp" %>

<%
   	String type=request.getParameter("type");      
    try{
         
    	
    	
		if(type.equalsIgnoreCase("auditor"))
		{
		
			String username=request.getParameter("userid");      
         	String Password=request.getParameter("pass");
			
			application.setAttribute("auditor",username);
			
			String sql="SELECT * FROM auditor where username='"+username+"' and password='"+Password+"'";
			Statement stmt = connection.createStatement();
			ResultSet rs =stmt.executeQuery(sql);
			
			if(rs.next()){
				
				response.sendRedirect("auditorMain.jsp");
			}
			else
			{
				response.sendRedirect("wrongLogin.jsp");
			}
		}
		
		else if(type.equalsIgnoreCase("consumer"))
		{
			
			String username=request.getParameter("userid");      
         	String Password=request.getParameter("pass");
			
			application.setAttribute("consumer",username);
			
			String sql="SELECT * FROM consumer where username='"+username+"' and password='"+Password+"'";
			Statement stmt = connection.createStatement();
			ResultSet rs =stmt.executeQuery(sql);
			
			if(rs.next()){
			
			String sql1="SELECT * FROM consumer where username='"+username+"' and status='Waiting'";
			
			ResultSet rs1 =stmt.executeQuery(sql1);
			if(rs1.next())
			{
				
				response.sendRedirect("wrongLogin.jsp");
				}
				else
				{
				response.sendRedirect("User_BioIdentification.jsp");
				}
			}
			else
			{
				response.sendRedirect("wrongLogin.jsp");
			}
		}
		
		else if(type.equalsIgnoreCase("server"))
		{
			
			String username=request.getParameter("userid");      
         	String Password=request.getParameter("pass");
			
			application.setAttribute("server",username);
			
			String sql="SELECT * FROM server where username='"+username+"' and password='"+Password+"'";
			Statement stmt = connection.createStatement();
			ResultSet rs =stmt.executeQuery(sql);
			
			if(rs.next()){
				
				response.sendRedirect("webServerMain.jsp");
			}
			else
			{
				response.sendRedirect("wrongLogin.jsp");
			}
		}
		
		else if(type.equalsIgnoreCase("owner"))
		{
			String username=request.getParameter("userid");      
   	        String Password=request.getParameter("pass");
			
			application.setAttribute("owner",username);
			
			String sql="SELECT * FROM owner where username='"+username+"' and password='"+Password+"'";
			Statement stmt = connection.createStatement();
			ResultSet rs =stmt.executeQuery(sql);
			
			
			if(rs.next()){
			
			String sql1="SELECT * FROM owner where username='"+username+"' and status='Waiting'";
			
			ResultSet rs1 =stmt.executeQuery(sql1);
			
			
			if(rs1.next()){
				response.sendRedirect("wrongLogin.jsp");
				}
				else
				{
				response.sendRedirect("Owner_BioIdentification.jsp");
				}
			}
			else
			{
				response.sendRedirect("wrongLogin.jsp");
			}
		}
	}
	catch(Exception e)
	{
		out.print(e);
	}
%>