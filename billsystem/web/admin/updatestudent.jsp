<%-- 
    Document   : branch
    Created on : Nov 22, 2015, 2:01:40 AM
    Author     : Saurabh Kr. Verma
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.html" %>
<%
    String fname, name,dob,gender,email,branch,phone,doj,city,state,id;
    String sid = request.getParameter("id");
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
                String sql="UPDATE `students` SET `name`=?,`dob`=?,`gender`=?,`mobile`=?,`email`=?,`f_name`=?,`state`=?,`city`=?,`branch`=?,`doj`=?,`fees`=?,`paid_fees`=? WHERE `id`=?";
                PreparedStatement st=con.prepareStatement(sql);
                
                st.setString(1, name);
                st.setString(2, dob);
                st.setString(3, gender);
                st.setString(4, phone);
                st.setString(5, email);
                st.setString(6,fname);
                st.setString(7,state);
                st.setString(8,city);
                st.setString(9,branch);
                st.setString(10,doj);
                st.setString(11,bfees);
                st.setString(12,fees);
                st.setString(13, sid);
                int i=st.executeUpdate();
                if(i>0)
                {
                    response.sendRedirect("listStudents.jsp");
                }
                else
                {
                       out.print("it's look like you are missing something. so please <a href='listStudent'>Try again..</a>");
                }
               
            }catch(ClassNotFoundException e){out.print(e);}
%>