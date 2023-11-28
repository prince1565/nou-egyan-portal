<%@page import="connect.DbManager"%>
<%
    int id=Integer.parseInt(request.getParameter("id"));
    DbManager dm=new DbManager();
    
    String query="delete from response where id='"+id+"'";
    
    if(dm.insertUpdateDelete(query)==true)
    {
        out.print("<script>alert('Feedback is Deleted'); window.location.href='feedbackmgmt.jsp';</script>");
    }
    else{
        out.print("<script>alert('Feedback is  Not Deleted'); window.location.href='feedbackmgmt.jsp';</script>");
    }
%>