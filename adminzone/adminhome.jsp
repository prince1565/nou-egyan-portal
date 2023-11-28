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
        <title>NOU - Admin Zone</title>
        <link rel="stylesheet" href="../css/bootstrap.css">
        <script src="../js/bootstrap.bundle.js"></script>
    </head>
    <body>
        <jsp:include page="header.jsp"/>
        
        
        
            <div class="row  col-sm-12" style="background-color: #ccccff;">
                <h1 style="text-align: center;">News Management</h1> 
                <form class="form-group" method="post" action="admincontroller.jsp">
                    <input type="hidden" value="adminhome" name="page"/>
                    <table class="table" style="width:70%;margin: auto;">
                        <tr>
                            <td>Enter News Text</td>
                            <td>
                                <textarea rows="3" name="newstext" class="form-control" required></textarea>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" style="text-align: center;">
                                <button type="submit" class="btn btn-success">Add News</button>
                            </td>
                            
                        </tr>
                    </table>
                </form>
                <br><br>
                
                <table class="table" style="width: 80%;margin: auto;">
                    <tr>
                        <th>Id</th>
                        <th>News Text</th>
                        <th>Posted Date</th>
                        <th>Delete</th>
                    </tr>
                    
                    <%
                        DbManager dm = new DbManager();
                        String query="select * from news";
                        ResultSet rs=dm.select(query);
                        
                        while(rs.next())
                        {
                      %>
                      <tr>
                          <td><%=rs.getInt("id")%></td>
                          <td><%=rs.getString("newstext")%></td>
                          <td><%=rs.getString("posteddate")%></td>
                          <td>
                              <a href="delnews.jsp?id=<%=rs.getInt("id")%>">
                                  <button type="button" class="btn btn-danger">Delete</button>
                              </a>
                          </td>
                      </tr>
                      
                      <%
                        }
                      %>
                </table>
            </div>
      
        <jsp:include page="footer.jsp"/>
    </body>
</html>
<% } %>
