<%-- 
    Document   : ClientMessage
    Created on : 20 Mar, 2021, 10:14:04 PM
    Author     : Thomas
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="exavaluUtilities.connectionProvidertoDb"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
 <%
            try {
                Connection connection = connectionProvidertoDb.getConnectionObject().getConnection("E:\\ExavaluProject\\WebApplication1\\config\\dbParams.properties");
                PreparedStatement pstmt = connection.prepareStatement("select * from feedback");
               
                ResultSet rs = pstmt.executeQuery();
                while (rs.next()) {
        %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    </head>
    <body>
        <table border="1">
            <tr>
                <td>  CompanyName</td>
                <td>  Company</td>
                <td>  Message</td>
            </tr>
         <tr>
             <td><%=rs.getString("cname") %></td> 
            <td><%=rs.getString("cmail") %></td>
            <td><%=rs.getString("cmessage") %></td>
            
 </tr>
        </table>
            
    <%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>         
                
        
    </body>
</html>
