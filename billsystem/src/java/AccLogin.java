import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.sql.*;
import javax.servlet.http.HttpSession;

public class AccLogin extends HttpServlet{
    public void doPost(HttpServletRequest request, HttpServletResponse response)throws IOException,ServletException{
        PrintWriter out=response.getWriter();
        response.setContentType("text/html");
        String email=request.getParameter("email");
        String password= request.getParameter("password");
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bill_system","root","");
            PreparedStatement st=con.prepareStatement("SELECT * FROM accountant WHERE email=? and password=?");
            st.setString(1, email);
            st.setString(2, password);
            ResultSet rs=st.executeQuery();
            if (rs.next()){
                HttpSession session=request.getSession(true);
                session.setAttribute("useremail", email);
                session.setAttribute("pass", password);
               String acc=rs.getString(2);
               session.setAttribute("admin_name", acc);
               session.setAttribute("branch", rs.getString(10));
               response.sendRedirect("accountant/index.jsp");
            }
            else{
                out.println("you are entered wrong id or password <a href='index.html'>try again</a>");
            }
        }catch(Exception e){out.println("exception occur :"+e);}
    }
}
