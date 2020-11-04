import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class Login extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       PrintWriter out=response.getWriter();
       response.setContentType("text/html");
       String type=request.getParameter("type");
       out.println(type);
       if(type.matches("Admin")){
            
        RequestDispatcher rd=request.getRequestDispatcher("AdminLogin");  
        rd.forward(request, response);  
       }
       if(type.matches("Accountants")){
           
        RequestDispatcher rd=request.getRequestDispatcher("AccLogin");  
        rd.forward(request, response);
       }
    }

    
}
