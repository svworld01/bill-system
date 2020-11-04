import java.sql.*;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class AddBranch extends HttpServlet{
    protected void doPost(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException{
        PrintWriter out=response.getWriter();
        response.setContentType("text/html");
        String bname=request.getParameter("b_name");
        String bacc=request.getParameter("b_acc");
        String btrainer=request.getParameter("b_trainer");
        String bfees=request.getParameter("b_fees");
         try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bill_system","root","");
                String sql="INSERT INTO branch (`id`, `b_name`, `b_accountant`, `trainer`, `fees`) VALUES (NULL, '"+bname+"', '"+bacc+"', '"+btrainer+"', '"+bfees+"')";
                PreparedStatement st=con.prepareStatement(sql);
                int i=st.executeUpdate();
                if(i>0)
                {
                    response.sendRedirect("admin/listBranch.jsp");
                }
                else
                {
                       out.print("rerrrrrrrrrrrrorrrr accccccccccccccurrrrrdd Mr.");
                }
               
            }catch(SQLException e){out.print(e);}
         catch(ClassNotFoundException e){out.print(e);}
    }
}