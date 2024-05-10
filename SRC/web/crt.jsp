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
String review=request.getParameter("review");
String rate=request.getParameter("rate");
String pbrand=request.getParameter("pbrand");

String user=session.getAttribute("user").toString();
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fakeproduct","root","root");                
                   PreparedStatement query=con.prepareStatement("insert into product1 (user,pid,pcat,pname,pbrand,price,review,rate)values('"+user+"','"+pid+"','"+pcat+"','"+pname+"','"+pbrand+"','"+price+"','"+review+"','"+rate+"')");
                   System.out.println(query);
                    query.executeUpdate();
                    System.out.println(query);
                    out.println("<script>"); 			
                    out.println("alert(\"Give review and rating  Succesfully\")");
                    out.println("</script>");

                    RequestDispatcher rd=request.getRequestDispatcher("review1.jsp");
                    rd.include(request,response);		
		}
                catch(Exception e){
                    out.println("<script>"); 			
                    out.println("alert(\"Please Try Again..\")");
                    out.println("</script>");

                    RequestDispatcher rd=request.getRequestDispatcher("review1.jsp");
                    rd.include(request,response);
                }

%>

