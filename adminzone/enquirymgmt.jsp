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
                <br><br><h1 style="text-align: center">Enquiry Management</h1><br><br><br><br><br>
                <table class="table" style="width: 95%; margin: auto;">
                    <tr>
                        <th>Id</th>
                        <th>Name</th>
                        <th>Gender</th>
                        <th>Address</th>
                        <th>Contact No</th>
                        <th>Email Address</th>
                        <th>Enquiry Text</th>
                        <th>
                            Enquiry Date
                        </th>
                        <th>Delete</th>
                    </tr>
                    <%
                        DbManager dm=new DbManager();
                        String query="select * from enquiry";
                        ResultSet rs=dm.select(query);
                        while(rs.next())
                        {
                    %>
                    <tr>
                        <td><%=rs.getInt("id")%></td>
                        <td><%=rs.getString("name")%></td>
                        <td><%=rs.getString("gender")%></td>
                        <td><%=rs.getString("address")%></td>
                        <td><%=rs.getString("contactno")%></td>
                        <td><%=rs.getString("emailaddress")%></td>
                        <td><%=rs.getString("enquirytext")%></td>
                        <td><%=rs.getString("enquirydate")%></td>
                        <td>
                            <a href="delenquiry.jsp?id=<%=rs.getInt("id")%>">
                                <button type="button" class="btn btn-danger">Delete</button>
                            </a>
                        </td>
                    </tr>
                    
                    <%}%>
                </table>
            </div>
      
        <jsp:include page="footer.jsp"/>
    </body>
</html>
<% } %>
