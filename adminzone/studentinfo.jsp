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
        <title>Student Info</title>
        <link rel="stylesheet" href="../css/bootstrap.css">
        <script src="../js/bootstrap.bundle.js"></script>
    </head>
    <body>
        
        <jsp:include page="header.jsp"/>
        
        <div class="row col-sm-12">
            <div class="col-sm-12" style="min-height: 600px; background-color:  #9999ff">
                <h1 style="text-align: center" >Student Information</h1>
                <table class="table table-bodered" style="width: 95%; margin: auto;" >
                    <tr>
                        <th>Roll No</th>
                        <th>Name</th>
                        <th>Father Name</th>
                        <th>Mother Name</th>
                        <th>Gender</th>
                        <th>Address</th>
                        <th>Program</th>
                        <th>Branch</th>
                        <th>Year</th>
                        <th>Contact no</th>
                        <th>Email Address</th>
                        <th>Reg. date</th>
                    </tr>
                    
                    <%
                        DbManager dm=new DbManager();
                        String query="select * from student";
                        ResultSet rs=dm.select(query);
                        
                        while(rs.next())
                        {
                        %>
                        <tr>
                            <td><%=rs.getString("rollno")%></td>
                            <td><%=rs.getString("name")%></td>
                            <td><%=rs.getString("fname")%></td>
                            <td><%=rs.getString("mname")%></td>
                            <td><%=rs.getString("gender")%></td>
                            <td><%=rs.getString("address")%></td>
                            <td><%=rs.getString("program")%></td>
                            <td><%=rs.getString("branch")%></td>
                            <td><%=rs.getString("year")%></td>
                            <td><%=rs.getString("contactno")%></td>
                            <td><%=rs.getString("emailaddress")%></td>
                            <td><%=rs.getString("regdate")%></td>
                            
                        </tr>
                    <%
                        }
                    %>
                </table>
            </div>
        </div>
        <jsp:include page="footer.jsp"/>
    </body>
</html>
<% } %>



