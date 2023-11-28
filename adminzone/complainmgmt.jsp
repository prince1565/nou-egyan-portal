<%-- 
    Document   : studenthome
    Created on : 18 Oct, 2023, 10:54:14 AM
    Author     : kumar
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="connect.DbManager"%>
<%
    if(session.getAttribute("adminid")==null)
    {
        response.sendRedirect("../login.jsp");
    }
    else{
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>NOU - Student Zone</title>
        <link rel="stylesheet" href="../css/bootstrap.css">
        <script src="../js/bootstrap.bundle.js"></script>
    </head>
    <body>
        <jsp:include page="header.jsp"/>
        
        
        
            <div class="row  col-sm-12" style="background-color: #ccccff;">
                <br><h1 style="text-align: center">Complain Management</h1><br><br><br><br><br>
                <table class="table" style="width: 95%; margin: auto;" >
                    <tr>
                        <th>Id</th>
                        <th>Roll No</th>
                        <th>Name</th>
                        <th>Program</th>
                        <th>Branch</th>
                        <th>Year</th>
                        <th>Contact no</th>
                        <th>Subject</th>
                        <th>Complain</th>
                        <th>Posted Date</th>
                        <th>Delete</th>
                          
                    </tr>
                    <%
                        DbManager dm=new DbManager();
                        String query="select * from response where responsetype='complain'";
                        ResultSet rs=dm.select(query);
                        while(rs.next())
                        {
                     %>
                     <tr>
                         <td><%=rs.getInt("id")%></td>
                         <td><%=rs.getString("rollno")%></td>
                         <td><%=rs.getString("name")%></td>
                         <td><%=rs.getString("program")%></td>
                         <td><%=rs.getString("branch")%></td>
                         <td><%=rs.getString("year")%></td>
                         <td><%=rs.getString("contactno")%></td>
                         <td><%=rs.getString("subject")%></td>
                         <td><%=rs.getString("responsetext")%></td>
                         <td><%=rs.getString("responsedate")%></td>
                         <td>
                             <a href="delcomplain.jsp?id=<%=rs.getInt("id")%>"><button type="button" class="btn btn-danger">Delete</button></a>
                         </td>
                         
                     </tr>
                     
                     <%}%>
                    
                </table>
               
            </div>
      
        <jsp:include page="footer.jsp"/>
    </body>
</html>
<% } %>
