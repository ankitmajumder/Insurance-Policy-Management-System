/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package exavaluservelet;

import exavaluUtilities.connectionProvidertoDb;
import exavalueBeans.CompanyLogin;
import exavalueBeans.User;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Thomas
 */
public class login extends HttpServlet { 
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            //get the parameters form request
            String emailaddress = request.getParameter("email_address");
            String password = request.getParameter("password");
            /* TODO output your page here. You may use following s
            ample code. */

            Connection connection = connectionProvidertoDb.getConnectionObject().getConnection("E:\\ExavaluProject\\WebApplication1\\config\\dbParams.properties");

            String sql = "SELECT * FROM companylogin where CompanyEmailAddress=? and CompanyPassword=?";

            PreparedStatement stmt = connection.prepareStatement(sql);
            stmt.setString(1, emailaddress);
            stmt.setString(2, password);


            // execute SQL
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {

                //user present
                System.out.println("Login Successful...........");
                
                
                 
                 
                 HttpSession session=request.getSession();  
                 
                // CompanyLogin companyLogin=new CompanyLogin();
                 
                 
                // companyLogin.setComapnId(rs.getInt("company_id"));
                 int i=rs.getInt("company_id");
                 
                 session.setAttribute("companyId", i);

//                  user.setUserName(rs.getString("username"));
//                  session.setAttribute("user", user);

                RequestDispatcher rd = request.getRequestDispatcher("homePage.jsp");

                rd.forward(request, response);
//                 String sql1 = "SELECT company_id FROM companylogin where CompanyEmailAddress='"+ emailaddress +"' ";
//            PreparedStatement stmt1 = connection.prepareStatement(sql1);
//             ResultSet rs1 = stmt1.executeQuery();
//             
//               companyId = rs1.getInt("company_id") ;
//               
              

            } else {

                //failed validation
                System.out.println("Login Not Successful...........");

                RequestDispatcher rd = request.getRequestDispatcher("login.jsp");

                rd.forward(request, response);

            }

            //established the connection to db
//            out.println("<!DOCTYPE html>");
//            out.println("<html>");
//            out.println("<head>");
//            out.println("<title>Servlet login</title>");
//            out.println("</head>");
//            out.println("<body>");
//            out.println("<h1>Data Recived " + emailaddress + " and " + password + "</h1>");
//            out.println("</body>");
//            out.println("</html>");
        } catch (SQLException ex) {

            System.out.println(ex.getMessage());

        }

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(login.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(login.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
