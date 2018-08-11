package demo;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginServlet extends HttpServlet {
    
    //initilizing servlet
    String uid,pwd;
    public void init(){
        ServletConfig config = getServletConfig();
        uid = config.getInitParameter("userid");
        pwd = config.getInitParameter("pass");
        System.out.println(uid);
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        //Extracting Request Data
        String uname, pwd2;
        uname = request.getParameter("username");
        pwd2 = request.getParameter("password");
        
        //Validation of data and navigation process
        if(uname.equals(uid) && pwd2.equals(pwd)){
                    request.setAttribute("username",uname);
                    RequestDispatcher veiw1 = request.getRequestDispatcher("welcome");
                    veiw1.forward(request,response);
                    
        }
        else{
            out.println("<center><p><font color='red'>Username and password is not correct</font></p></center>");
            out.println(uname);
            out.println(uid);
            out.println(pwd2);
            out.println(pwd);
            RequestDispatcher view2 = request.getRequestDispatcher("/index.html");
            view2.include(request,response);
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
        processRequest(request, response);
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
