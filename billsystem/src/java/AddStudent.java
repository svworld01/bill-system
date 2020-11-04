import java.sql.*;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class AddStudent extends HttpServlet{
    protected void doPost(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException{
        PrintWriter out=response.getWriter();
        response.setContentType("text/html");
        HttpSession session=request.getSession(true);
        String fname, name,dob,gender,email,branch,phone,doj,city,state;
        name=request.getParameter("name");
        dob=request.getParameter("dob");
        doj=request.getParameter("doj");
        gender=request.getParameter("gender");
        branch=request.getParameter("branch");
       
        
        String fees=request.getParameter("fees");
        email=request.getParameter("email");
        city=request.getParameter("city");
        state=request.getParameter("state");
       
        phone=request.getParameter("mob_no");
        fname=request.getParameter("fname");
       
        String bfees=request.getParameter("fees");
        try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bill_system","root","");
                String sql="INSERT INTO students (id, name, dob, gender, mobile, email,f_name, state, city, branch, doj, fees,paid_fees) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?)";
                PreparedStatement st=con.prepareStatement(sql);
                st.setString(1, null);
                st.setString(2, name);
                st.setString(3, dob);
                st.setString(4, gender);
                st.setString(5, phone);
                st.setString(6, email);
                st.setString(7,fname);
                st.setString(8,state);
                st.setString(9,city);
                st.setString(10,branch);
                st.setString(11,doj);
                st.setString(12,bfees);
                st.setString(13,fees);
                int i=st.executeUpdate();
                if(i>0)
                {
                    response.sendRedirect("../admin/listStudents.jsp");
                }
                else
                {
                       out.print("it's look like you are missing something. so please <a href='../admin/addAccountant.jsp'>Try again..</a>");
                }
               
            }catch(SQLException e){out.print(e);}
         catch(ClassNotFoundException e){out.print(e);}
    }
}