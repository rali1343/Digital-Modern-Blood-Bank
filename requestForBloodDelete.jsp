<%@page import="dao.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%
String mobilenumber=request.getParameter("mobilenumber");
try
{
    Connection con=ConnectionProvider.getCon();
    Statement st=con.createStatement();
    st.executeUpdate("delete from blood where mobilenumber='"+mobilenumber+"'");
    
    response.sendRedirect("requestForBlood.jsp");
}
catch(Exception e)
{
        response.sendRedirect("requestForBlood.jsp");
}
%>