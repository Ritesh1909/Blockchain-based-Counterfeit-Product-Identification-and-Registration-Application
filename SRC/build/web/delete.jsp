<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%    

try {
                    String sno=request.getParameter("sno");
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fakeproduct","root","root");
                    PreparedStatement query=con.prepareStatement("delete from product where sno='"+sno+"'");
                    System.out.println(query);
                    query.executeUpdate();
                    System.out.println(query);
                    out.println("<script>"); 			
                    out.println("alert(\"Product Deleted Succesfully\")");
                    out.println("</script>");

                    RequestDispatcher rd=request.getRequestDispatcher("manageproduct.jsp");
                    rd.include(request,response);		
		}
                catch(Exception e){
                    out.println("<script>"); 			
                    out.println("alert(\"Please Try Again..\")");
                    out.println("</script>");

                    RequestDispatcher rd=request.getRequestDispatcher("manageproduct.jsp");
                    rd.include(request,response);
                }

%>