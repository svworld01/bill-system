<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.html" %>
<%@ page import="java.io.*,java.util.*,java.sql.*"%> 
<%@ page import="javax.servlet.http.*,javax.servlet.*" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%> 
<%
        String name="",dob="",gender="",email="",branch="",phone="",doj="",qualification="",salery="",city="",state="",password="";  
        String id=request.getParameter("id");
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
                String sql="update accontants set name=?, dob=?, gender=?, email=?, phone=?, qualification=?,state=?,city=?,branch=?,doj=?,password=?,salery=? where id=?";
                PreparedStatement st=con.prepareStatement(sql);
                
                st.setString(1, name);
                st.setString(2, dob);
                st.setString(3, gender);
                st.setString(4, email);
                st.setString(5, phone);
                st.setString(6, qualification);
                st.setString(7, state);
                st.setString(8, city);
                st.setString(9, branch);
                st.setString(10, doj);
                st.setString(11, password);
                st.setString(12, salery);
                st.setString(13, id);
                int i=st.executeUpdate();
                if(i>0)
                {
                    response.sendRedirect("listAccountants.jsp");
                }
                else
                {
                       out.print("it's look like you are missing something. so please <a href='../admin/addAccountant.jsp'>Try again..</a>");
                }
               
            }catch(SQLException e){out.print(e);}
         
    
%>
