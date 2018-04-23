<%-- 
    Document   : singUp
    Created on : Apr 17, 2018, 11:34:46 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link href="resources/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="wait overlay">
            <div class="loader"></div>
        </div>

        <div class="navbar navbar-inverse navbar-fixed-top">
            <div class="container-fluid">	
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#collapse" aria-expanded="false">
                        <span class="sr-only">navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div>
            </div>
        </div>	
        <p><br/></p>
        <p><br/></p>
        <p><br/></p>

        <div class="container-fluid">
            <div class="col-md-3 col-xs-12"></div>
            <div class="col-md-6 col-xs-12">
                <div class="row">
                    <div class="col-md-12 col-xs-12" id="product_msg">
                    </div>
                </div>
                <div class="panel panel-info">
                    <div class="panel-heading" style="text-align: center"><strong>Account Update Form : </strong></div>
                    <div class="panel-body">
                        <form  class="form-horizontal" method="POST" action="updateAccount.htm">
                            
                            <div class="form-group">
                                <label class="col-xs-2">Account No :</label>
                                <div class="col-xs-10">
                                    <input type="text" name="accNo" class="form-control" value="${account.accNo}"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-xs-2">User Name :</label>
                                <div class="col-xs-10">
                                    <input type="text" name="name" class="form-control" value="${account.name}"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-xs-2">Account Type :</label>
                                <div class="col-xs-10">
                                    <input type="text" name="accType" class="form-control" value="${account.accType}"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-xs-2">Pin Number :</label>
                                <div class="col-xs-10">
                                    <input type="text" name="password" class="form-control" value="${account.password}"/>
                                </div>
                            </div>
                            
                            <div class="form-group">
                                <label class="col-xs-2">gender : </label>
                                <div class="col-xs-10">
                                    <input type="text" name="gender" class="form-control" value="${account.gender}"/>
                                </div>
                            </div>
                            
                            <div class="form-group">
                                <label class="col-xs-2">Date of Birth : </label>
                                <div class="col-xs-10">
                                    <input type="text" name="dob" class="form-control" value="${account.dob}"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-xs-2">Mobile Number :</label>
                                <div class="col-xs-10">
                                    <input type="text" name="phone" class="form-control" value="${account.phone}"/>
                                </div>
                            </div>
                            
                            <div class="form-group">
                                <label class="col-xs-2">Branch Name :</label>
                                <div class="col-xs-10">
                                    <input type="text" name="adress" class="form-control" value="${account.adress}"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-xs-2">Balance :</label>
                                <div class="col-xs-10">
                                    <input type="text" name="balance" class="form-control" value="${account.balance}"/>
                                </div>
                            </div>
                           
                            <div class="col-xs-10 col-xs-offset-2">
                                <button type="submit" class="btn btn-primary glyphicon glyphicon-log-in">&nbsp;Update </button> 
                            </div>
                        </form>
                    </div>
                    <div class="panel-footer"></div>
                </div>
            </div>
            <div class="col-md-3 col-xs-12"></div>
        </div>
    </body>
</html>
