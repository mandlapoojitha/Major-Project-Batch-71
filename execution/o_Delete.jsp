
<%@ include file="connect.jsp" %>

<%
   	String id=request.getParameter("t");    
	 
	
    try{
		
			String sql="delete FROM ownerimages where id = '"+id+"' " ;
			connection.createStatement().executeUpdate(sql);
			
				
			String sql1="delete FROM serverimages where id = '"+id+"' " ;
			connection.createStatement().executeUpdate(sql1);
			
				
			String sql2="delete FROM attacker where id = '"+id+"' " ;
			connection.createStatement().executeUpdate(sql2);
			
			String sql3="delete FROM matadata where id = '"+id+"' " ;
			connection.createStatement().executeUpdate(sql3);
									
			response.sendRedirect("o_VerifyImage.jsp");
			
		
		
     
	}
	catch(Exception e)
	{
		out.print(e);
	}
%>