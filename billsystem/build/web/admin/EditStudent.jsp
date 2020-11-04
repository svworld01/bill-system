<%-- 
    Document   : branch
    Created on : Nov 22, 2015, 2:01:40 AM
    Author     : Saurabh Kr. Verma
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.html" %>
<%@ page import="java.io.*,java.util.*,java.sql.*"%> 
<%@ page import="javax.servlet.http.*,javax.servlet.*" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%> 
<div class="container">
    <%
        
        String branch=(String)session.getAttribute("branch");
        String id=request.getParameter("sid");
        System.out.print("ID"+id);
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bill_system","root","");
        String sql="SELECT * FROM students WHERE id="+id+"";
        PreparedStatement st=con.prepareStatement(sql);
        //st.setString(1, id);
        ResultSet rst=st.executeQuery(sql);
        if(rst.next())
        {
    %>
    <%=rst.getString(1) %>
    <h1>Add a Student</h1>
    <p>you can a new branch in  your branch institute. By filling this <br/>form easily</p>
    <form method="post" action="updatestudent.jsp">
        <div class="row">
            <div class="col-lg-6">
                <Strong>General Details</strong>
                <hr/>
                <table>
                    <tr>
                        <td style="width: 40%;">Name</td>
                        <td style="width:60%;"><input type="text" name="name" class="form-control" placeholder="student's name..." value="<%=rst.getString(2) %>"></td>
                    </tr>
                    <tr>
                        <td>Date of birth</td>
                        <td><input type="text" value="<%=rst.getString(3) %>" name="dob" class="form-control" required="required"></td>
                    </tr>
                    <tr><td>Gender </td><td><input type="text" value="<%=rst.getString(4) %>" name="gender" class="form-control" required="required"></td></tr>
                    <tr><td>Father's Name</td><td><input type="text" value="<%=rst.getString(7) %>" required="required" name="fname" class="form-control" placeholder="student's father name.."></td></tr>
                </table>
            </div>
            <div class="col-lg-6">
                <strong>Contact Information</strong>
                <hr/>
                <table>
                    <tr>
                        <td style="width: 40%;">State</td>
                        <td style="width: 60%;">
                            <input type="text" name="state" value="<%=rst.getString(8) %>" class="form-control">
                        </td>
                    </tr>
                    <tr>
                        <td>City</td>
                        <td><input value="<%=rst.getString(9) %>" type="text" required="required" name="city" placeholder="student's city..." class="form-control"></td>
                    </tr>
                     <tr>
                        <td>E-mail</td>
                        <td><input value="<%=rst.getString(6) %>" type="email" name="email" required="required" placeholder="student's email..." class="form-control"></td>
                    </tr>
                    <tr>
                        <td>Mob. Number</td>
                        <td><input value="<%=rst.getString(5) %>" type="number" name="mob_no" required="required" placeholder="mobile number..." class="form-control"></td>
                    </tr>
                </table>
            </div>
        </div> 
        <div class="row" style="margin-top: 20px;">
            <div class="col-lg-6">
                <strong>Admission Details</strong>
                <hr/>
                <table>
                    
                    <tr>
                        <td style="width: 40%;">Date of Joining</td>
                        <td style="width: 60%;"><input value="<%=rst.getString(11) %>" type="text" name="doj" required="required" class="form-control"></td>
                    </tr>
                    <tr>
                        <td>Branch</td>
                        <td><input type="text" value="<%=rst.getString(10) %>"  name="branch" class="form-control" required="required" placeholder="branch name"></td>
                    </tr>
                    <tr>
                        <td>Fees</td>
                        <td><input value="<%=rst.getString(12) %>" type="number" name="fees" class="form-control" required="required" placeholder="fees"></td>
                    </tr>
                    <tr>
                        <td>Paid Fees</td>
                        <td><input value="<%=rst.getString(13) %>" type="number" name="pfees" class="form-control" required="required" placeholder="fees"></td>
                    </tr>
                </table>
            </div>
                        <input type="hidden" value="<%= id %>" name="id"/>
            <div class="col-lg-6">
                <strong>Registration </strong>
                <hr/>
                <p>you can change the branch name because you can only add students in your branch ok.</p>
                <input type="submit" value="Update" class="btn btn-primary" style="margin-top: 20px;">
            </div>
        </div>
    </form>
    <%}%>
</body> 
</html>
