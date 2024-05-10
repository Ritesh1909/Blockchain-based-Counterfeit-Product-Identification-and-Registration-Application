<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    
    String user,pass;
    user=request.getParameter("user");
    pass=request.getParameter("pass");
    if(user.equals("admin")&&pass.equals("admin"))
    {
    out.println("<script>"
                    +"alert('Welcome admin !!!!!')"
                    +"</script>");
    RequestDispatcher rd=request.getRequestDispatcher("/ahome.jsp");
                    rd.include(request, response);
            }
    else{
    out.println("<script>"
            +"alret('Please enter the valid Username and Password ')"
            
            +"</script>");
    RequestDispatcher rd=request.getRequestDispatcher("ahome.jsp");
     rd.include(request, response);
            }
    
    %>
