<html>
<%@ page language="java"%>
<%@ page import="java.sql.*" %>
<%

 String fertilizer=request.getParameter("fertilizer");
 int quantienty=Integer.parseInt(request.getParameter("quantienty"));
  String fname=request.getParameter("fname");
 String lname=request.getParameter("lname");
 int mno=Integer.parseInt(request.getParameter("mno"));
 int amno=Integer.parseInt(request.getParameter("amno"));
 String address=request.getParameter("address");



 Connection con;
  Statement st;
  ResultSet re;
PreparedStatement ps;
  try
{
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/krishi","root","");
ps=con.prepareStatement("insert into fertilizer values(?,?,?,?,?,?,?)");

     ps.setString(1,fertilizer);
     ps.setInt(2,quantienty);
     ps.setString(3,fname);
     ps.setString(4,lname);
     ps.setInt(5,mno);
     ps.setInt(6,amno);
     ps.setString(7,address);
   ps.executeUpdate();
%>
            <script>
     alert("Record Saved... !!");
     </script>
  <%@include file="fertlizer.html" %>

<%
 }
catch(ClassNotFoundException e)
{
response.sendRedirect("fertilizer.html");
}
 %>
</html>
