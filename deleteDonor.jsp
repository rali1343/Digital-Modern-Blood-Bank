<%@page import="dao.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%
    String id=request.getParameter("id");
    try
    {
      Connection con=ConnectionProvider.getCon();
      Statement st=con.createStatement();
      st.executeUpdate("delete from donar where id='"+id+"'");
      response.sendRedirect("editDeleteList.jsp?msg=deleted");
    }
    catch(Exception e)
    {
             response.sendRedirect("editDeleteList.jsp?msg=invalid"); 
    }
    %>