<%@ include file="connect.jsp" %>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*" %>
<%@ page import="java.util.Date" %>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import ="java.text.SimpleDateFormat" %>

            <%
			       
					
				    ArrayList list = new ArrayList();
					
					ServletContext context = getServletContext();
					
					String dirName =context.getRealPath("Gallery/");
					
					String title=null,name=null,desc=null,mac=null,key=null,image=null,bin = "", paramname=null;
					
					FileInputStream fs=null;
					
					File file1 = null;	
					try {
						MultipartRequest multi = new MultipartRequest(request, dirName,	10 * 1024 * 1024);	
						Enumeration params = multi.getParameterNames();
						while (params.hasMoreElements()) 
						{
							paramname = (String) params.nextElement();
							if(paramname.equalsIgnoreCase("title"))
							{
								title=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("name"))
							{
								name=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("desc"))
							{
								desc=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("mac"))
							{
								mac=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("key"))
							{
								key=multi.getParameter(paramname);
							}}
							
						int f = 0;
						Enumeration files = multi.getFileNames();	
						while (files.hasMoreElements()) 
						{
							paramname = (String) files.nextElement();
							
							if(paramname != null)
							{
								f = 1;
								image = multi.getFilesystemName(paramname);
								String fPath = context.getRealPath("Gallery\\"+image);
								file1 = new File(fPath);
								fs = new FileInputStream(file1);
								list.add(fs);
							
								
							}		
						}
						
						
		
						FileInputStream fs1 = null;
			 			String query1="select * from ownerimages  where name='"+name+"' "; 
						Statement st1=connection.createStatement();
						ResultSet rs1=st1.executeQuery(query1);
						
							
					if ( rs1.next() )
					   {
					   		out.print("Image Name Already Exist");
							
							
				%>
							<p><a href="o_AddImage.jsp">Back</a></p>
				<%
				
					   }
					   else
					   {
					   
					   SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
		   	           SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

			           Date now = new Date();

			           String strDate = sdfDate.format(now);
			           String strTime = sdfTime.format(now);
			           String dt = strDate + "   " + strTime;
			
					    int rank =0;
						
						String task="Upload";
					String owner = (String)application.getAttribute("owner");
					
					String strQuery2 = "insert into transaction(user,name,sk,task,dt) values('"+owner+"','"+name+"','"+key+"','"+task+"','"+dt+"')";
					connection.createStatement().executeUpdate(strQuery2);
					
					String strQuery3 = "insert into matadata(owner,title,name,digitalsign) values('"+owner+"','"+title+"','"+name+"','"+mac+"')";
					connection.createStatement().executeUpdate(strQuery3);
						 
					PreparedStatement ps1=connection.prepareStatement("insert into ownerimages(title,name,owner,description,digitalsign,sk,dt,image,rank) values(?,?,?,?,?,?,?,?,?)");
						
						ps1.setString(1,title);
						ps1.setString(2,name);
						ps1.setString(3,owner);	
						ps1.setString(4,desc);
						ps1.setString(5,mac);
						ps1.setString(6,key);
						ps1.setString(7,dt);
				        ps1.setBinaryStream(8, (InputStream)fs, (int)(file1.length()));	
				        ps1.setInt(9,rank);
						ps1.executeUpdate();
					   
                        PreparedStatement ps=connection.prepareStatement("insert into serverimages(title,name,owner,description,digitalsign,sk,dt,rank) values(?,?,?,?,?,?,?,?)");
						
						ps.setString(1,title);
						ps.setString(2,name);
						ps.setString(3,owner);	
						ps.setString(4,desc);
						ps.setString(5,mac);
						ps.setString(6,key);
						ps.setString(7,dt);
					
				        ps.setInt(8,rank);
						
						
						ps.executeUpdate();
						
							out.print("Image Uploaded Successfully");
							
			%>			
			<p><a href="o_AddImage.jsp">Back</a></p>
			<%
			
					
					
					
					
						}
					}
					catch (Exception e) 
					{
						out.println(e.getMessage());
					}
			%>
