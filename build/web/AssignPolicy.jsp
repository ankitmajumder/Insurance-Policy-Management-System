<%-- 
    Document   : AssignPolicy
    Created on : 17 Mar, 2021, 11:09:29 AM
    Author     : Thomas
--%>

<%@page import="java.util.List"%>
<%@page import="exavalueBeans.policy"%>
<%@page import="exavaluModel.PolicyModel"%>
<%@page import="exavaluModel.CustomerModel"%>
<%@page import="exavalueBeans.Customer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
         String sid=request.getParameter("cid");  
         int cid=Integer.parseInt(sid);
       Customer  e=CustomerModel.getCustomerId(cid);  
        %>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
          <jsp:include page="header.jsp" />
           <form action="AssignPolicy" method="post">
            <table>
                <tr>
                    <td> <input type="hidden" name="customerId" value="<%=e.getCustomerId()%>" > </td>
                        
                </tr>
                <tr>
                    <td>Enter  PolicyId=</td>
                    <td> <input type="text" name="policyId" >  </td>
                        
                </tr>
                
                <tr> <td> <input type="submit" value="Add"> </td> </tr>
            </table>
           </form>
          
           
                <table>
                    <tr>
                        
                        <th>policyId</th>
                        <th>policy Name</th>
                    </tr>
                    
                    
                <%            List<policy> list = PolicyModel.getAllPolicys(request);
                    for (policy p
                            : list) {

                %>
                    
                    
                     <tr>    
               
                    <td><%=p.getPid()%></td>
                    <td><%=p.getName()%></td>
                     </tr>
                     
                    <%}%>
                    
                </table>
                
                    
                    
    </body>
</html>
