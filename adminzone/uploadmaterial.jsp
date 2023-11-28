<%-- 
    Document   : studenthome
    Created on : 18 Oct, 2023, 10:54:14 AM
    Author     : kumar
--%>
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
        
        
        
        <div class="row  col-sm-12">
            <h1 style="text-align: center">Upload Material</h1><br><br><br>
            <form class="form-control" method="post" action="../UploadMaterial" enctype="multipart/form-data">
                    <table class="table" style="margin:auto;width:70%;" >
                         <tr>
                              <td>
                                  Select Program
                              </td>
                              <td>
                                  <select name="program" class="form-control">
                                      <option selected>-Select Program-</option>
                                      <option value="B.Tech.">B.Tech.</option>
                                      <option value="M.Tech.">M.Tech.</option>
                                  </select>
                              </td>
                          </tr>
                          <tr>
                              <td>Select Branch</td>
                              <td>
                                  <select name="branch" class="form-control">
                                      <option selected>-Select Branch-</option>
                                      <option value="CS">Computer Science</option>
                                      <option value="IT">Information Technology</option>
                                  </select>
                              </td>
                          </tr>
                          
                          <tr>
                              <td>
                                  Select Year
                              </td>
                              <td>
                                    <select name="year" class="form-control">
                                      <option selected>-Select year-</option>
                                      <option value="First Year">First Year</option>
                                      <option value="Second Year">Second Year</option>
                                      <option value="Third Year">Third Year</option>
                                      <option value="Final Year">Final Year</option>
                                  </select>
                              </td>
                          </tr>
                          <tr>
                              <td>Enter Subject</td>
                              <td>
                                  <input type="text" name="subject" class="form-control" required/>
                              </td>
                          </tr>
                          <tr>
                              <td> Select Material Type</td>
                              <td> 
                                  <select name="materialtype" class="form-control">
                                      <option selected>-Select Material Type-</option>
                                      <option value="assign">Assignment</option>
                                      <option value="smate">Study Material</option>
                                  </select>
                              </td>
                          </tr>
                          <tr>
                              <td>
                                  Enter Title
                              </td>
                              <td>
                                  <input type="text" name="title" class="form-control" required/>
                              </td>
                          </tr>
                          <tr>
                              <td>Upload File</td>
                              <td>
                                  <input type="file" name="filename" class="form-control"/>
                              </td>
                          </tr>
                          <tr>
                              <td colspan="2" style="text-align: center;">
                                  <button type="submit" class="btn btn-success">Upload</button>
                              </td>
                          </tr>
                    </table>
                </form>
           
            </div>
      
        <jsp:include page="footer.jsp"/>
    </body>
</html>
<% } %>
