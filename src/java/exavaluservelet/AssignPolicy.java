/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package exavaluservelet;

import exavaluModel.AssignPolicym;
import exavaluUtilities.connectionProvidertoDb;
import exavalueBeans.AssignPolicys;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
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

/**
 *
 * @author Thomas
 */
public class AssignPolicy extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet AssignPolicy</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AssignPolicy at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        processRequest(request, response);
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
         int i = (int) request.getSession().getAttribute("companyId");
        String customerId = request.getParameter("customerId");
        int customerIds = Integer.parseInt(customerId);
        String pid = request.getParameter("policyId");
        int pids = Integer.parseInt(pid);
        AssignPolicys assignPolicy = new AssignPolicys();
        // assignPolicy.setCompanyId(customerIds);
        assignPolicy.setPolicyId(pids);
        assignPolicy.setCustomerId(customerIds);
        Connection connection = connectionProvidertoDb.getConnectionObject().getConnection("E:\\ExavaluProject\\WebApplication1\\config\\dbParams.properties");
        String sql1 = "select * from policyissue where pid=? and company_id=? and customer_id=? ";
        PreparedStatement stmt1;
        try {
            stmt1 = connection.prepareStatement(sql1);
            stmt1.setInt(1, pids);
            stmt1.setInt(2, i);
            stmt1.setInt(3,customerIds);
            ResultSet rs1 = stmt1.executeQuery();
            if (rs1.next()) {
                 
                out.println("<h1>PolicyId Already Exists </h1>");
                
              response.sendRedirect("Customers.jsp");
                
            } else {

                try {
                    int status = AssignPolicym.addCompany(assignPolicy, request);
                    if (status > 0) {

                            response.sendRedirect("homePage.jsp");
                    }
                } catch (SQLException ex) {
                    Logger.getLogger(AssignPolicy.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(AssignPolicy.class.getName()).log(Level.SEVERE, null, ex);
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
