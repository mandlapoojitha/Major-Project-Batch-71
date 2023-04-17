	<%@ include file="connect.jsp" %>
 	<%
  		
   	try {
		String type = request.getParameter("type");
		    if(type.equalsIgnoreCase("owner"))
			{
			
			String id=request.getParameter("id");
			String str = "Authorized";
       		Statement st1 = connection.createStatement();
       		String query1 ="update owner set status='"+str+"' where id="+id+" ";
	   		st1.executeUpdate (query1);
			connection.close();
			response.sendRedirect("w_ViewOwners.jsp");  
			
			}
			
			else if(type.equalsIgnoreCase("consumer"))
			{
			
			String id=request.getParameter("id");
			String str = "Authorized";
       		Statement st1 = connection.createStatement();
       		String query1 ="update consumer set status='"+str+"' where id="+id+" ";
	   		st1.executeUpdate (query1);
			connection.close();
			response.sendRedirect("w_ViewConsumers.jsp");  
			
			}
			
	   		
       	}
      	catch(Exception e)
     	{
			out.println(e.getMessage());
   		}
   		
	%>
