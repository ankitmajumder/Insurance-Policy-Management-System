 /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package exavaluModel;

import static com.sun.corba.se.spi.presentation.rmi.StubAdapter.request;
import exavaluUtilities.connectionProvidertoDb;
import exavalueBeans.CompanyLogin;
import exavalueBeans.policy;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Thomas
 */
public class PolicyModel {
       // HttpSession session=request.getSession(false);

    public static List<policy> getAllPolicys(HttpServletRequest request) {
        // ArrayList list = new ArrayList();
         int i= (int) request.getSession().getAttribute("companyId");
        List<policy> list = new ArrayList<policy>();
        try {
            Connection connection = connectionProvidertoDb.getConnectionObject().getConnection("E:\\ExavaluProject\\WebApplication1\\config\\dbParams.properties");
            
            String sql = "SELECT * FROM policy where company_id=?";

            PreparedStatement stmt = connection.prepareStatement(sql);
            stmt.setInt(1,i);
             ResultSet rs = stmt.executeQuery();
       
            while (rs.next()) {
                policy policys = new policy();
                policys.setPid(rs.getInt("pid"));
                policys.setName(rs.getString("pname"));
                policys.setExpiryDate(rs.getInt("expirydate"));
                policys.setLaunchDate(rs.getInt("launchdate"));
                policys.setPremimumAmmount(rs.getInt("preimumammount"));
                policys.setCoverageammount(rs.getInt("coverageammount"));
                policys.setMinumumage(rs.getInt("minimumagecoverage"));
                policys.setMaxage(rs.getInt("maxage"));
                list.add(policys);
            }
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return list;

    }

    public static int delete(int id,HttpServletRequest request) {
        int i = 0;
          int ids = (int)request.getSession().getAttribute("companyId");
        try {
            Connection connection = connectionProvidertoDb.getConnectionObject().getConnection("E:\\ExavaluProject\\WebApplication1\\config\\dbParams.properties");
            PreparedStatement stmt = connection.prepareStatement("DELETE from policy where pid=? and company_id=?");
            stmt.setInt(1, id);
            stmt.setInt(2, ids);
            i = stmt.executeUpdate();
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return i;

    }
    public static policy getPolicyId(int id) throws IOException{  
        policy p=new policy();  
          Connection connection = connectionProvidertoDb.getConnectionObject().getConnection("E:\\ExavaluProject\\WebApplication1\\config\\dbParams.properties");
        try{  
            
            PreparedStatement ps=connection.prepareStatement("select * from policy where pid=?");  
            ps.setInt(1,id);  
            ResultSet rs=ps.executeQuery();  
            if(rs.next()){  
                p.setPid(rs.getInt(1));  
                p.setName(rs.getString(2));
                p.setExpiryDate(rs.getInt(3));
                p.setLaunchDate(rs.getInt(4));
                p.setPremimumAmmount(rs.getInt(5)); 
                p.setCoverageammount(rs.getInt(6)); 
                p.setMinumumage(rs.getInt(7)); 
                p.setMaxage(rs.getInt(8)); 
                    
                               
            }  
            
        }catch(Exception ex){ex.printStackTrace();}  
          
        return p;  
    }  

    public static int update(policy p, HttpServletRequest request) throws IOException, SQLException {
         int ids = (int)request.getSession().getAttribute("companyId");
        int status = 0;
        Connection connection = connectionProvidertoDb.getConnectionObject().getConnection("E:\\ExavaluProject\\WebApplication1\\config\\dbParams.properties");

        PreparedStatement pstmt = connection.prepareStatement("update policy set pname=?,expirydate=?,launchdate=?,preimumammount=?,coverageammount=?,minimumagecoverage=?,maxage=? where pid=? and company_id=? ");
        pstmt.setString(1, p.getName());
        pstmt.setInt(2, p.getExpiryDate());
        pstmt.setInt(3, p.getLaunchDate());
        pstmt.setInt(4, p.getPremimumAmmount());
        pstmt.setInt(5, p.getCoverageammount());
        pstmt.setInt(6, p.getMinumumage());
        pstmt.setInt(7, p.getMaxage());
        pstmt.setInt(8, p.getPid());
         pstmt.setInt(9, ids);
        status=pstmt.executeUpdate();  
        return status;
    }
    
    
   public static int addPolicy(policy policys, HttpServletRequest request) throws IOException, SQLException {
       int status = 0;
       int i= (int) request.getSession().getAttribute("companyId");
   

      Connection connection = connectionProvidertoDb.getConnectionObject().getConnection("E:\\ExavaluProject\\WebApplication1\\config\\dbParams.properties");
      PreparedStatement pstmt =
      connection.prepareStatement("insert into policy(company_id,pid,pname,expirydate,launchdate,preimumammount,coverageammount,minimumagecoverage,maxage) values (?,?,?,?,?,?,?,?,?)");
     
      pstmt.setInt(1,i);
      pstmt.setInt(2, policys.getPid());
      pstmt.setString(3, policys.getName());
      pstmt.setInt(4, policys.getExpiryDate());
      pstmt.setInt(5, policys.getLaunchDate());
      pstmt.setInt(6, policys.getPremimumAmmount());
      pstmt.setInt(7, policys.getCoverageammount());
      pstmt.setInt(8, policys.getMinumumage());
      pstmt.setInt(9, policys.getMaxage());
      status=pstmt.executeUpdate();  
        return status;
       
        
    }

}
