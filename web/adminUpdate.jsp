<%-- 
    Document   : adminUpdate
    Created on : Apr 18, 2018, 1:58:23 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
                    <div class="panel-heading" style="text-align: center"><strong>Administrative Update Form : </strong></div>
                    <div class="panel-body">
                        <form  class="form-horizontal" method="POST" action="update.htm">
                            <div class="form-group">
                                <label  for="passField" class="col-xs-2">Id :</label>
                                <div class="col-xs-10">
                                    <input  type="text" name="id" class="form-control" value="${admin.id}"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label  for="passField" class="col-xs-2">Name :</label>
                                <div class="col-xs-10">
                                    <input  type="text" name="name" class="form-control" value="${admin.name}"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label  for="passField" class="col-xs-2">Gender : </label>
                                <div class="col-xs-10">
                                    <input  type="text" name="gender" class="form-control" value="${admin.gender}"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label  for="passField" class="col-xs-2">Email : </label>
                                <div class="col-xs-10">
                                    <input  type="text" name="email" class="form-control" value="${admin.email}"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label  for="passField" class="col-xs-2">Password :</label>
                                <div class="col-xs-10">
                                    <input  type="password" name="password" class="form-control" value="${admin.password}"/>
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
