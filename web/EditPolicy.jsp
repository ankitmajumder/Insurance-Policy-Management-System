<%-- 
    Document   : EditPolicy
    Created on : 4 Mar, 2021, 10:19:30 PM
    Author     : Thomas
--%>

<%@page import="exavaluModel.PolicyModel"%>
<%@page import="exavalueBeans.policy"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html
    <%
         String sid=request.getParameter("pid");  
         int pid=Integer.parseInt(sid);
         policy e=PolicyModel.getPolicyId(pid);  
        %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
        <jsp:include page="header.jsp" />
        
        
        <form action="EditPolicy" method="post">
            <table>
                <tr>
                    <td> <input type="hidden" name="pid" value="<%=e.getPid()%>" > </td>
                        
                </tr>
                <tr>
                    <td>Enter Policy Name=</td>
                    <td> <input type="text" name="pname" value="<%= e.getName() %>" >  </td>
                </tr>
                 <tr>
                    <td>Enter Policy ExpiaryDate=</td>
                    <td> <input type="text" name="ExpiaryDate" value="<%= e.getExpiryDate()%>" >  </td>
                </tr>
                 <tr>
                    <td>Enter Policy LaunchDate=</td>
                    <td> <input type="text" name="LaunchDate" value="<%= e.getLaunchDate()%>" >  </td>
                </tr>
                 <tr>
                    <td>Enter Policy premimumAmmount=</td>
                    <td> <input type="text" name="premimumAmmount" value="<%= e.getPremimumAmmount()%>" >  </td>
                </tr>
                 <tr>
                    <td>Enter Policy coverageAmmount=</td>
                    <td> <input type="text" name="coverageAmmount" value="<%= e.getCoverageammount()%>" >  </td>
                </tr>
                 <tr>
                    <td>Enter Policy minimumCoverage=</td>
                    <td> <input type="text" name="minimumCoverage" value="<%= e.getMinumumage()%>" >  </td>
                </tr>
                 <tr>
                    <td>Enter Policy Maxage=</td>
                    <td> <input type="text" name="Maxage" value="<%= e.getMaxage()%>" >  </td>
                </tr>
                <tr> <td> <input type="submit" value="Update"> </td> </tr>
            </table>
            
        </form>
    </body>
</html>
