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
    <h1>Add a Branch</h1>
    <p>you can a new branch in  your branch institute. By filling this <br/>form easily</p>
    <div class="row">
        <div class="col-lg-2">
            
        </div>
        <div class="col-lg-8">
        <form method="post" action="../AddBranch">
            <table width="100%" class="table table-hover">
            <thead>
                <tr>
                    <th colspan="2">Note:please fill the information of your new branch...<th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td style="width: 30%"><label for="b_name">Branch Name:</label></td>
                    <td style="width: 70%"><input type="text" name="b_name" id="b_name" class="form-control" required="required"/></td>
                </tr>
                <tr>
                    <td style="width: 30%"><label for="b_acc">Branch Accountant: </label></td>
                    <td style="width: 70%"><input type="text" class="form-control" id="b_acc" required="required" name="b_acc"></td>
                </tr>
                <tr>
                    <td style="width: 30%"><label for="b_trainer">Branch Trainer: </label></td>
                    <td style="width: 70%"><input type="text" class="form-control" id="b_trainer" required="required" name="b_trainer"></td>
                </tr>
                <tr>
                    <td style="width: 30%"><label for="b_trainer">Branch Fees: </label></td>
                    <td style="width: 70%"><input type="number" class="form-control" id="b_trainer" required="required" name="b_fees"></td>
                </tr>
                <tr>
                    
                    <td colspan="2" style="text-align: right;">
                       <input type="submit" value="Update" class="btn btn-primary">
                        <a href="listBranch.jsp" class="btn btn-link">back</a></td>
                </tr>
            </tbody>
        </table>
        </form>
        </div>
        <div class="col-lg-2"></div>
    
    </div>
</div>                  
    </body> 
</html>