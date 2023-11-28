<%-- 
    Document   : studenthome
    Created on : 18 Oct, 2023, 10:54:14 AM
    Author     : kumar
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="connect.DbManager"%>
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
        
        
        
            <div class="row  col-sm-12" style="background-color: #ccccff;">
                
                
                    <br><h1 style="text-align: center">Answers</h1><br><br>
                    <table class="table" style="width: 90%; margin: auto;">
                        <tr>
                            <th>AId</th>
                            <th>
                                Answer
                            </th>
                            <th>
                                Aswered By
                            </th>
                            <th>Posted Date</th>
                        </tr>
                        <%
                            int qid=Integer.parseInt(request.getParameter("qid"));
                           
                            DbManager dm=new DbManager();
                            String query="select * from answer where qid='"+qid+"'";
                           
                            ResultSet rs=dm.select(query);
                            
                            while(rs.next())
                            {
                        %>
                        <tr>
                            <td><%=rs.getInt("aid")%></td>
                            <td><%=rs.getString("answer")%></td>
                            <td><%=rs.getString("answeredby")%></td>
                            <td><%=rs.getString("posteddate")%></td>
                        </tr>
                        
                       <% } %>
                        
                    </table>
                
            </div>
      
        <jsp:include page="footer.jsp"/>
    </body>
</html>
<% } %>
