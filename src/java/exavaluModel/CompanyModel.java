/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package exavaluModel;

import exavaluUtilities.connectionProvidertoDb;
import exavalueBeans.Company;
import exavalueBeans.CompanyLogin;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Thomas
 */
public class CompanyModel {

    public static int addCompany(Company company) throws IOException, SQLException {
        
        Connection connection = connectionProvidertoDb.getConnectionObject().getConnection("E:\\ExavaluProject\\WebApplication1\\config\\dbParams.properties");

        PreparedStatement pstmt = connection.prepareStatement("insert into company(company_id,companyname,address,phonenumber) values (?,?,?,?) ");
        pstmt.setInt(1, company.getCompany_id());
        pstmt.setString(2, company.getCompanyName());
        pstmt.setString(3, company.getCompanyAddress());
        pstmt.setString(4, company.getCompanyNummber());

      int  status = pstmt.executeUpdate();
        pstmt = connection.prepareStatement("insert into companylogin(company_id,CompanyEmailAddress,CompanyPassword) values (?,?,?) ");
        pstmt.setInt(1, company.getCompany_id());
        pstmt.setString(2, company.getCompanyLogin().getCompanyEmail());
        pstmt.setString(3, company.getCompanyLogin().getPassword());
        status = pstmt.executeUpdate();

        return status;
    }

}
