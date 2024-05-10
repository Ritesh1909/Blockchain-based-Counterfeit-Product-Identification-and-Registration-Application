<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%    

try {
String pname=request.getParameter("pname");
String pid=request.getParameter("pid");
String pcat=request.getParameter("pcat");
String price=request.getParameter("price");
String spec=request.getParameter("spec");
String pbrand=request.getParameter("pbrand");
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fakeproduct","root","root");                
                    PreparedStatement query=con.prepareStatement("update product set pcat='"+pcat+"',pbrand='"+pbrand+"',pname='"+pname+"',price='"+price+"' where pid='"+pid+"'");
                    System.out.println(query);
                    query.executeUpdate();
                    System.out.println(query);
                    out.println("<script>"); 			
                    out.println("alert(\"Update Succesfully\")");
                    out.println("</script>");

                    RequestDispatcher rd=request.getRequestDispatcher("update.jsp");
                    rd.include(request,response);		
		}
                catch(Exception e){
                    out.println("<script>"); 			
                    out.println("alert(\"Please Try Again..\")");
                    out.println("</script>");

                    RequestDispatcher rd=request.getRequestDispatcher("update.jsp");
                    rd.include(request,response);
                }

%>