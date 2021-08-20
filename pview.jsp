<html>
    <style>
       body{
            font-family: "Comic Sans MS",sans-serif;
        }
        table , th , td{
            border: 2px solid red;
            border-collapse: collapse;
            text-align: center;
            padding: 10px;
        }
        #custom thead{
            background-color:hsla(3,104%,61%,0.5);
            color: white;
        }
    </style>
<body bgcolor="white">
<marquee><h1><font color="green"> Pestiside</font></h1></marquee>

 <center>
     <table border="1"bgcolor="white" width="100%" id="custom">
         <thead>
         <tr>
               <th>Pestiside Name</th>
               <th>Quantienty</th>
               <th>First Name</th>
               <th>Last Name</th>
               <th>Mobile no</th>
               <th>Alternate M NO</th>
               <th>Address</th>

          </tr>
         </thead>
<%@ page language="java"%>
<%@ page import="java.sql.*" %>
<%


 Connection con;
  Statement st;
  ResultSet rs;
  try
{
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/krishi","root","");
st=con.createStatement();
  rs=st.executeQuery("select * from pestiside");
     while(rs.next())
       {%>

            <tr>
           <td> <% out.println(rs.getString(1)); %> </td>
           <td><% out.println( rs.getInt(2));   %> </td>
           <td> <% out.println(rs.getString(3)); %> </td>
           <td> <% out.println(rs.getString(4)); %> </td>
           <td><% out.println( rs.getInt(5));   %> </td>
           <td><% out.println( rs.getInt(6));   %> </td>
           <td> <% out.println(rs.getString(7)); %> </td>


       </tr>

   <%  }
 %>
<%
 }
catch(ClassNotFoundException e)
{
response.sendRedirect("adminmain.html");
}
 %>
</center>
</table>
</body>
</html>
