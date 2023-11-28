<%-- 
    Document   : studenthome
    Created on : 18 Oct, 2023, 10:54:14 AM
    Author     : kumar
--%>
<%
    if(session.getAttribute("studentid")==null)
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
        <br><h1 style="text-align: center">Welcome Student</h1><br>
        
        
            <div class="row  col-sm-12" style="background-color: #ccccff;">
                
            </div>
      
        <jsp:include page="footer.jsp"/>
    </body>
</html>
<% } %>
