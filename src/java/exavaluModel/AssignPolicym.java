/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package exavaluModel;

import exavaluUtilities.connectionProvidertoDb;
import exavalueBeans.AssignPolicys;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author Thomas
 */
public class AssignPolicym {
    public static int addCompany(AssignPolicys assignPolicys, HttpServletRequest request) throws IOException, SQLException {
        int i = (int) request.getSession().getAttribute("companyId");
        Connection connection = connectionProvidertoDb.getConnectionObject().getConnection("E:\\ExavaluProject\\WebApplication1\\config\\dbParams.properties");
        PreparedStatement pstmt = connection.prepareStatement("insert into policyissue(company_id,customer_id,pid) values(?,?,?)");
        pstmt.setInt(1, i);
        pstmt.setInt(2, assignPolicys.getCustomerId());
        pstmt.setInt(3, assignPolicys.getPolicyId());
        int status = pstmt.executeUpdate();
        return status;
    }
    
    public static List<AssignPolicys> getAllCustomer(HttpServletRequest request) throws IOException, SQLException {
         Connection connection = connectionProvidertoDb.getConnectionObject().getConnection("E:\\ExavaluProject\\WebApplication1\\config\\dbParams.properties");
          PreparedStatement ps = connection.prepareStatement("select companyname,cutomer_name,pname from company,customer,policy,policyissue where company.company_id=policyissue.company_id and customer.customer_id=policyissue.customer_id and policy.pid=policyissue.pid ");
          
        return null;
        
        
    }
    
}
