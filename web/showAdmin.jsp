<%-- 
    Document   : showAdmin
    Created on : Apr 17, 2018, 10:21:29 PM
    Author     : User
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            table,tr,td{border: 2px solid green;padding: 10px;border-collapse: collapse;background-color: greenyellow}
            table,th{border: 2px solid green;padding: 10px;border-collapse: collapse;background-color: darkturquoise}
        </style>
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
                        <span class="sr-only"></span>

                    </button>
                </div>
            </div>
        </div>	
        <p><br/></p>
        <p><br/></p>
        <p><br/></p>

        <div class="row;background-color:#FDFDFD">
            <div class="col-xs-2">

            </div>

            <div class="col-xs-8" style="background-color: #019275;height: 550px">
                <div><h3 style="background-color:#019275;text-align:center;color:FFFFFF;height: 40px;margin-top: 1%">Admin Registration Records</h3><div>
                        <table style="margin-left: 22%">

                            <th>User ID</th>
                            <th>User Name</th>
                            <th>Gender</th>
                            <th>Email</th>
                            <th>Password</th>
                            <th></th>
                            <th></th>


                            <c:forEach var="p" items="${aa}">
                                <tr>
                                    <td>${p.id}</td>
                                    <td>${p.name}</td>
                                    <td>${p.gender}</td>
                                    <td>${p.email}</td>
                                    <td>${p.password}</td>
                                    <td><a href="delete.htm?id=${p.id}"/>Delete</a></td>
                                    <td><a href="upChange.htm?id=${p.id}&name=${p.name}&gender=${p.gender}&email=${p.email}&password=${p.password}"/>Update</a></td>

                                </tr>
                            </c:forEach>
                        </table>

                    </div>
                    <div class="col-xs-2">

                    </div>
                </div>
            </div>
        </div>

    </body>
</html>
