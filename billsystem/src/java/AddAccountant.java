import java.sql.*;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class AddAccountant extends HttpServlet{
    protected void doPost(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException{
        PrintWriter out=response.getWriter();
        response.setContentType("text/html");
        String name="",dob="",gender="",email="",branch="",phone="",doj="",qualification="",salery="",city="",state="",password="";
        name=request.getParameter("name");
        dob=request.getParameter("dob");
        doj=request.getParameter("doj");
        gender=request.getParameter("gender");
        branch=request.getParameter("branch");
        qualification=request.getParameter("qualification");
        salery=request.getParameter("salery");
        email=request.getParameter("email");
        city=request.getParameter("city");
        state=request.getParameter("state");
        password=request.getParameter("password");
        phone=request.getParameter("mob_no");
        try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bill_system","root","");
                String sql="INSERT INTO accountant (id, name, dob, gender, email, phone, qualification, state, city, branch, doj, password, salery) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,? )";
                PreparedStatement st=con.prepareStatement(sql);
                st.setString(1, null);
                st.setString(2, name);
                st.setString(3, dob);
                st.setString(4, gender);
                st.setString(5, email);
                st.setString(6, phone);
                st.setString(7, qualification);
                st.setString(8, state);
                st.setString(9, city);
                st.setString(10, branch);
                st.setString(11, doj);
                st.setString(12, password);
                st.setString(13, salery);
                int i=st.executeUpdate();
                if(i>0)
                {
                    response.sendRedirect("admin/listAccountants.jsp");
                }
                else
                {
                       out.print("it's look like you are missing something. so please <a href='../admin/addAccountant.jsp'>Try again..</a>");
                }
               
            }catch(SQLException e){out.print(e);}
         catch(ClassNotFoundException e){out.print(e);}
    }
}