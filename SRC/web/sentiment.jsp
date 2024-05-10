<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%    

try {

String pid=request.getParameter("pid");

                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fakeproduct","root","root");                
                    PreparedStatement query=con.prepareStatement("update product1 set status='Fake Product' where pid='"+pid+"'");
                    System.out.println(query);
                    query.executeUpdate();
                    System.out.println(query);
                    out.println("<script>"); 			
                    out.println("alert(\"Update Succesfully\")");
                    out.println("</script>");

                    RequestDispatcher rd=request.getRequestDispatcher("fake.jsp");
                    rd.include(request,response);		
		}
                catch(Exception e){
                    out.println("<script>"); 			
                    out.println("alert(\"Please Try Again..\")");
                    out.println("</script>");

                    RequestDispatcher rd=request.getRequestDispatcher("fake.jsp");
                    rd.include(request,response);
                }

%>