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
        
        
        
            <div class="row  col-sm-12" style="background-color: #ccccff;">
                <%
                    int qid=Integer.parseInt(request.getParameter("qid"));
                %>
                <form class="form-group" method="post" action="studentcontroller.jsp">
                    <br><br><h1 style="text-align: center">Post Answer</h1><br><br>
                    <input type="hidden" name="page" value="postanswer"/>
                    <input type="hidden" name="qid" value="<%=qid%>"/>
                    <table class="table table-bodered" style="width:70%;margin: auto;">
                        
                        <tr>
                            <td>Enter Answer</td>
                            <td>
                                <textarea rows="6" class="form-control" name="answer" required ></textarea>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" style="text-align:center;"><button type="submit" class="btn btn-success">Post Answer</button></td>
                        </tr>
                    </table><br><br>
                </form>
            </div>
      
        <jsp:include page="footer.jsp"/>
    </body>
</html>
<% } %>
