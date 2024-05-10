<%@page import="java.net.InetAddress"%>
<%@page import="pack.QRCode"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%
    String sid=request.getParameter("sid");
    QRCode js = new QRCode();
    String txt=sid.toString();
    //Scanner ss=new Scanner(System.in);
    js.qr(txt,"C:\\Users\\ADMIN\\Documents\\aaaaaaaaaaaaaaaaaaaaaaaaaa\\E- Ration\\E-BusPass\\web\\QR_Code\\One.png");
    
    out.println("<script type=\"text/javascript\">"); 			
    out.println("alert(\"QR Generated\")");
    out.println("</script>");
    RequestDispatcher rd=request.getRequestDispatcher("Generateqr.jsp");
    rd.include(request, response);
    
%>