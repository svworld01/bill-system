<%-- 
    Document   : index
    Created on : Nov 20, 2015, 7:23:02 PM
    Author     : Saurabh Kr. Verma
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%> 
<%@ page import="javax.servlet.http.*,javax.servlet.*" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%> 
<%@include file="header.html" %>
<div class="container">
    <%
        String name=(String)session.getAttribute("admin_name");
        String branch=(String)session.getAttribute("branch");
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bill_system","root","");
            PreparedStatement st=con.prepareStatement("SELECT * FROM branch where b_name=?");
            st.setString(1, branch);
            
            ResultSet rs=st.executeQuery();
            if (rs.next()){
                String fees=rs.getString(5);
               session.setAttribute("fees", fees);
            }
        }catch(Exception e){out.println("exception occur :"+e);}
    %>
    
    <div class="row">
        <div class="col-lg-6">
            <h2>Welcome | <%= name %></h2>
            <p>Accountant of : <b><%= branch%></b></p>
        </div>
         <div class="col-lg-2">
           
        </div>
        <div class="col-lg-4">
            <form action="searchStudent.jsp">
                <input type="text" name="search" class="form-control" style="width: 70%; float: left;" placeholder="student id,name...">
                <input type="submit" value="search" class="btn btn-primary" style="width: 30%; float: right;">
            </form>
        </div>
    </div>
        <div class="row" >
            <div class="col-lg-4" style="text-align: center">
                <h3>Add a Student</h3>
              <img src="../images/web-user.jpg" alt="cs" style="width:90%; height:200px;" class="img-thumbnail">
              <p></p>
              <a class="btn btn-lg btn-primary" role="button" href="addStudent.jsp">Register Now</a>
            </div> 
            <div class="col-lg-4" style="text-align: center">
                <h3>Check uncompleted payment</h3>
                <img src="../images/5.jpg" alt="cs" style="width:90%; height:200px;" class="img-thumbnail">
              <p></p>
              <a class="btn btn-lg btn-success" role="button" href="checkunpayed.jsp">Check Now</a>
            </div> 
            <div class="col-lg-4" style="text-align: center">
                <h3>FEature 1</h3>
                <img src="../images/setting.jpg" alt="cs" style="width:90%; height:200px;" class="img-thumbnail">
                <p></p>
                <a class="btn btn-lg btn-warning" role="button" href="setting.jsp">Setting</a>
            </div> 
        </div>
</div>
  <div class="row" style="background: #151515; height: 80px; margin-top: 20px;">
          <div class="col-sm-4">
              Saurabh Kumar Verma
          </div>
          <div class="col-lg-4">
              
          </div>
          <div class="col-lg-4">
              
          </div>
      </div>
</div>
</body>
</html>
