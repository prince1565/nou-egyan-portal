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
        <title>Change Password</title>
        <link rel="stylesheet" href="../css/bootstrap.css">
        <script src="../js/bootstrap.bundle.js"></script>
    </head>
    <body>
        <script>
            function validate()
            {
                var newpassword=document.getElementById("newpassword");
                var confirmnewpassword=document.getElementById("confirmnewpassword");
                
                
                if(newpassword.value!=confirmnewpassword.value)
                {
                     alert('Confirm password does not matched ');
                     confirmnewpassword.focus();
                }
         
                else{
                     document.getElementById("frmchangepassword").submit();
                 }
            }
        </script>
        <jsp:include page="header.jsp"/>
        
        
        <div class="row col-sm-12">
            <div class=" col-sm-12" style="background-color: #ccccff; min-height: 500px;">
                <br><h1 style="text-align: center; color:  #990000">Change Password</h1><br><br><br>
                <form class="form-group" method="post" id="frmchangepassword" onsubmit="event.preventDefault();validate(); "action="admincontroller.jsp">
                    
                     <input type="hidden" name="page" value="changepassword"/>
                     
                     <table class="table" style="margin: auto;width:60%;">
                         <tr>
                             <td>Enter Old Password</td>
                             <td>
                                 <input type="password" name="oldpassword" class="form-control" id="oldpassword" required/>
                             </td>
                         </tr>
                         <tr>
                             <td>Enter New Password</td>
                             <td>
                                 <input type="password" name="newpassword" class="form-control" id="newpassword" required/>
                             </td>
                         </tr>
                         <tr>
                             <td>Confirm New Password</td>
                             <td>
                                 <input type="password" name="confirmnewpassword" class="form-control" id="confirmnewpassword" required/>
                             </td>
                         </tr><br>
                         <tr>
                             <td colspan="2" style="text-align: center;"><button class="btn btn-primary">Change Password</button></td>
                         </tr>
                     </table>
                </form>   
            </div>
            
        </div>
        <jsp:include page="footer.jsp"/>
    </body>
</html>
<% } %>



