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
    %>
    <h1>Add a Student</h1>
    <p>you can a new branch in  your branch institute. By filling this <br/>form easily</p>
    <form method="post" action="../AddStudent">
        <div class="row">
            <div class="col-lg-6">
                <Strong>General Details</strong>
                <hr/>
                <table>
                    <tr>
                        <td style="width: 40%;">Name</td>
                        <td style="width:60%;"><input type="text" name="name" class="form-control" placeholder="student's name..." required="required"></td>
                    </tr>
                    <tr>
                        <td>Date of birth</td>
                        <td><input type="date" name="dob" class="form-control" required="required"></td>
                    </tr>
                    <tr><td>Gender</td><td><input type="radio" name="gender" value="Male" checked="checked">Male<input type="radio" name="gender" value="Female">Female</td></tr>
                    <tr><td>Father's Name</td><td><input type="text" required="required" name="fname" class="form-control" placeholder="student's father name.."></td></tr>
                </table>
            </div>
            <div class="col-lg-6">
                <strong>Contact Information</strong>
                <hr/>
                <table>
                    <tr>
                        <td style="width: 40%;">State</td>
                        <td style="width: 60%;">
                            <select name="state" required="required" class="form-control">
                                <option value="">Choose </option>
                                <option value="Uttar Pradesh">Uttar Pradesh</option>
                                <option value="Punjab">Punjab</option>
                                
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>City</td>
                        <td><input type="text" required="required" name="city" placeholder="student's city..." class="form-control"></td>
                    </tr>
                     <tr>
                        <td>E-mail</td>
                        <td><input type="email" name="email" required="required" placeholder="student's email..." class="form-control"></td>
                    </tr>
                    <tr>
                        <td>Mob. Number</td>
                        <td><input type="number" name="mob_no" required="required" placeholder="mobile number..." class="form-control"></td>
                    </tr>
                </table>
            </div>
        </div> 
        <div class="row" style="margin-top: 20px;">
            <div class="col-lg-6">
                <strong>Professional Details</strong>
                <hr/>
                <table>
                    <tr>
                        <td>Edu. Qualification</td>
                        <td><input type="text" required="required" name="qualification" class="form-control" placeholder="student's qualification..."></td>
                    </tr>
                    <tr>
                        <td style="width: 40%;">Date of Joining</td>
                        <td style="width: 60%;"><input type="date" name="doj" required="required" class="form-control"></td>
                    </tr>
                    <tr>
                        <td>Branch</td>
                        <td><input type="text" value="<%=branch%>" readonly="readonly" name="branch" class="form-control" required="required" placeholder="branch name"></td>
                    </tr>
                    <tr>
                        <td>Fees</td>
                        <td><input type="number" name="fees" class="form-control" required="required" placeholder="fees"></td>
                    </tr>
                </table>
            </div>
            <div class="col-lg-6">
                <strong>Registration </strong>
                <hr/>
                <p>you can change the branch name because you can only add students in your branch ok.</p>
                <input type="submit" value="Register" class="btn btn-primary" style="margin-top: 20px;">
            </div>
        </div>
    </form>
</body> 
</html>
