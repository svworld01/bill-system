<%-- 
    Document   : changePassword
    Created on : Nov 20, 2015, 7:29:43 PM
    Author     : Saurabh Kr. Verma
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.html" %>
<div class="container">
    <h1>Change Password</h1>
    <p>Change Password</p>
    <p></p>
    <div class="row">
        <div class="col-lg-2">
        </div>
        <div class="col-lg-8">
            <form action="" method="post">
                <table class="table table-hover" style="width: 100%;">
                    <tr>
                        <td>Current Password</td>
                        <td><input type="password" name="opass" class="form-control" placeholder="current password..."></td>
                    </tr>
                    <tr>
                        <td>New Password</td>
                        <td><input type="password" name="npass" class="form-control" placeholder="new password..."></td>
                    </tr>
                    <tr>
                        <td>Confirm Password</td>
                        <td><input type="password" name="cpass" class="form-control" placeholder="retype new password"></td>
                    </tr>
                    <tr>
                        
                        <td colspan="2"><input type="submit" class="form-control btn btn-primary" value="Change Password"></td>
                    </tr>
                </table>
            </form>
        </div>
        <div class="col-lg-2">
            
        </div>
    </div>
</div>
