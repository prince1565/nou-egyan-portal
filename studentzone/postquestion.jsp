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
        
            <div class="row  col-sm-12" style="background-color: #ccccff; min-height: 400px">
                
                <form class="form-group" method="post" action="studentcontroller.jsp">
                    <input type="hidden" name="page" value="postquestion"/>
                    <br><br><h1 style="text-align: center">Discussion Forum</h1><br><br>
                    <table class="table" style="width: 70%;margin:auto;">
                        <tr>
                            <td>Enter Your Question</td>
                            <td>
                                <textarea rows="6" name="question" class="form-control" required></textarea>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" style="text-align: center">
                                <button type="submit" class="btn btn-success">Post Question</button>
                            </td>
                        </tr>
                    </table>
                    
                </form>
                <form><br><br>
                    <br><br><h1 style="text-align: center">Asked Questions</h1><br><br>
                <table class="table" style="width: 95%; margin:auto;" >
                    <tr>
                        <th>QId</th>
                        <th>Question</th>
                        <th>Aksed By</th>
                        <th>Posted Date</th>
                        <th>Post Answer</th>
                        <th>View Answer</th>
                    </tr>
                    <% 
                          DbManager dm=new DbManager();
                          String query="select * from question";
                          ResultSet rs=dm.select(query);
                          
                          while(rs.next())
                          {
                    %>
                    <tr>
                        <td><%=rs.getInt("qid")%></td>
                        <td><%=rs.getString("question")%></td>
                        <td><%=rs.getString("askedby")%></td>
                        <td><%=rs.getString("posteddate")%></td>
                        <td>
                            <a href="postanswer.jsp?qid=<%=rs.getInt("qid")%>"><button type="button" class="btn btn-info">Post Answer</button></a>
                        </td>
                        <td>
                            <a href="viewanswer.jsp?qid=<%=rs.getInt("qid")%>"><button type="button" class="btn btn-warning">View Answer</button></a>
                        </td>
                    </tr>
                    
                    <% } %>
                </table>
                </form>
            </div>
      
        <jsp:include page="footer.jsp"/>
    </body>
</html>
<% } %>
