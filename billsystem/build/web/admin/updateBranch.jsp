<%@ page import="java.io.*,java.util.*,java.sql.*"%> 
<%@ page import="javax.servlet.http.*,javax.servlet.*" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%> 
<%
   String b_id=request.getParameter("id");
    String b_name=request.getParameter("b_name");
    String b_acc=request.getParameter("b_acc");
    String b_trainer=request.getParameter("b_trainer");
    String b_fees=request.getParameter("b_fees");
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bill_system","root","");
        String sql="update branch SET b_name=?, b_accountant=?, trainer=?, fees=? where id=?";
        PreparedStatement st=con.prepareStatement(sql);
        st.setString(1,b_name);
        st.setString(2,b_acc);
        st.setString(3,b_trainer);
        st.setString(5, b_id);
        st.setString(4, b_fees);
        st.executeUpdate();
        response.sendRedirect("listBranch.jsp");
        
        
        
    }catch(SQLException e){out.println(e);}
%>