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
                <h2 style="text-align: center;">View Study Material</h2>
                <table class="table" style="width: 95%;margin: auto;">
                    <tr>
                        <th>
                            Id
                        </th>
                        <th>Subject</th>
                        <th>Title</th>
                        <th>Download File</th>
                    </tr>
                    <%
                        DbManager dm=new DbManager();
                        String rollno=session.getAttribute("studentid").toString();
                        String query="select * from student where rollno='"+rollno+"'";
                        ResultSet rs=dm.select(query);
                        if(rs.next())
                        {
                            String program=rs.getString("program");
                            String branch=rs.getString("branch");
                            String year =rs.getString("year");
                            query="select * from material where program='"+program+"'and branch='"+branch+"'and year='"+year+"' and materialtype='smate'";
                            rs=dm.select(query);
                            while(rs.next())
                            {
                          %>
                          <tr>
                              <td>
                                  <%=rs.getInt("id")%>
                              </td>
                              <td><%=rs.getString("subject")%></td>
                              <td><%=rs.getString("title")%></td>
                              <td>
                                  <a download href="<%=request.getContextPath()%>/upload/<%=rs.getString("filename")%>"><%=rs.getString("title")%></a>
                              </td>
                          </tr>
                         <% }
                        }
                    %>
                </table>
            </div>
      
        <jsp:include page="footer.jsp"/>
    </body>
</html>
<% } %>
