<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="exavaluUtilities.connectionProvidertoDb"%>

<!DOCTYPE html>
<html>
<body>

<h1>Retrieve data from database in jsp</h1>
<table border="1">
<tr>
<td>Company Name</td>
<td>Customer Name</td>
<td>Policu Name</td>
<td>Action</td>


</tr>
<%
try{
   Connection connection = connectionProvidertoDb.getConnectionObject().getConnection("E:\\ExavaluProject\\WebApplication1\\config\\dbParams.properties");
   int i = (int) request.getSession().getAttribute("companyId");
PreparedStatement pstmt = connection.prepareStatement(
        "select companyname,cutomer_name,pname,policyissue.customer_id,policy.pid from company,customer,policy,policyissue where company.company_id=policyissue.company_id and policy.company_id=policyissue.company_id and customer.customer_id=policyissue.customer_id and policy.pid=policyissue.pid and  policyissue.company_id=?");
     pstmt.setInt(1, i);
     ResultSet rs = pstmt.executeQuery();
while(rs.next()){
%>
<tr>
<td><%=rs.getString("companyname") %></td>
<td><%=rs.getString("cutomer_name") %></td>
<td><%=rs.getString("pname") %></td>
<td> <a href="DeleteAssignPolicy?cid=<%=rs.getInt("customer_id")%>&policyId=<%=rs.getInt("pid") %>">Delete</a> </td>
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