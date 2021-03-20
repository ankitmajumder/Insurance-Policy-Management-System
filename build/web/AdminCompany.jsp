<%-- 
    Document   : AdminCompany
    Created on : 20 Mar, 2021, 7:38:51 PM
    Author     : Thomas
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="exavaluUtilities.connectionProvidertoDb"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table border="1">
<tr>
<td>Company Name</td>
<td> phonenumber</td>
<td>address </td>
<td>CompanyEmailAddress</td>
<td>CompanyPassword</td>
<td>Action</td>
</tr>
 <%
 
            try {
                Connection connection = connectionProvidertoDb.getConnectionObject().getConnection("E:\\ExavaluProject\\WebApplication1\\config\\dbParams.properties");
                PreparedStatement pstmt = connection.prepareStatement(
  "select * from company,companylogin where company.company_id=companylogin.company_id");
               
                ResultSet rs = pstmt.executeQuery();
                while (rs.next()) {
                    
                
        %>
<tr>
<td><%=rs.getString("companyname") %></td>
<td><%=rs.getString("phonenumber") %></td>
<td><%=rs.getString("address") %></td>
<td><%=rs.getString("CompanyEmailAddress") %></td>
<td><%=rs.getString("CompanyPassword") %></td>
<td>  <a href="DeleteCompnay?compid=<%=rs.getInt("company_id")%>">Delete</a>| <a href="EditCompnay.jsp?compid=<%=rs.getInt("company_id")%>">Edit</a> </td>
</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>


        </table>
    </body>
</html>
