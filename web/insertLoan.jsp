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
                    <div class="panel-heading" style="text-align: center"><strong>Loan Insert Form : </strong></div>
                    <div class="panel-body">
                        <form  class="form-horizontal" method="POST" action="saveLoan.htm">
                           
                            <div class="form-group">
                                <label  for="passField" class="col-xs-2">Name :</label>
                                <div class="col-xs-10">
                                    <input  type="text" name="name" class="form-control" id="passField" required="true"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label  for="passField" class="col-xs-2">Gender : </label>
                                <div class="col-xs-10">
                                    <input  type="radio" name="gender" value="Male"/>Male
                                    <input  type="radio" name="gender" value="Female"/>Female
                                </div>
                            </div>
                            <div class="form-group">
                                <label  for="passField" class="col-xs-2">Email : </label>
                                <div class="col-xs-10">
                                    <input  type="text" name="email" class="form-control" id="passField" required="true"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label  for="passField" class="col-xs-2">Date : </label>
                                <div class="col-xs-10">
                                    <input  type="text" name="date" class="form-control" id="passField" required="true"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label  for="passField" class="col-xs-2">amount of Loan : </label>
                                <div class="col-xs-10">
                                    <input  type="text" name="amount" class="form-control" id="a1"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label  for="passField" class="col-xs-2">Interest : </label>
                                <div class="col-xs-10">
                                    <input  type="text" name="interest" class="form-control" id="a2" onclick="m1()"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label  for="passField" class="col-xs-2">Total Amount of Loan : </label>
                                <div class="col-xs-10">
                                    <input  type="text" name="tamount" class="form-control" id="a3"/>
                                </div>
                            </div>
                            
                            <div class="col-xs-10 col-xs-offset-2">
                                <button type="submit" class="btn btn-primary glyphicon glyphicon-log-in">&nbsp;Save </button> 
                            </div>
                        </form>
                    </div>
                    <div class="panel-footer"></div>
                </div>
            </div>
            <div class="col-md-3 col-xs-12"></div>
        </div>
        
        <script>
           function m1(){
              var amount=document.getElementById("a1").value;
               var interest=document.getElementById("a2").value;
                var a=(amount*interest)/100; 
                var total=(amount+a);
               var tamount=document.getElementById("a3").value=total;
               
           }
        </script>
    </body>
</html>
