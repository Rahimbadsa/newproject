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
        <div class="row">
            <div class="col-xs-2">

            </div>

            <div class="col-xs-8" style="background-color: #019275;height: 550px">
                <div><h3 style="background-color:#019275;text-align:center;color:FFFFFF;height: 40px;margin-top: 1%">Employees Information Records</h3>
                <table style="margin-left: 10%">
               
                        <th>loan ID</th>
                        <th>Receiver Name</th>                       
                        <th>Gender</th>
                        <th>Email</th>
                        <th>Date</th>
                        <th>Amount</th>
                        <th>Interest</th>
                        <th>Total Amount</th>                      
                        <th></th>
                        <th></th>

                   
                    <c:forEach var="p" items="${aa}">
                        <tr>
                            <td>${p.id}</td>
                            <td>${p.name}</td>                            
                            <td>${p.gender}</td>
                            <td>${p.email}</td>
                            <td>${p.date}</td>
                            <td>${p.amount}</td>
                            <td>${p.interest}</td>
                            <td>${p.tamount}</td>                          
                            <td><a href="deleteLoan.htm?id=${p.id}"/>Delete</a></td>
                            <td><a href="upchanceLoan.htm?id=${p.id}&name=${p.name}&gender=${p.gender}&email=${p.email}&date=${p.date}&amount=${p.amount}&interest=${p.interest}&tamount=${p.tamount}">Edit</a></td>
                        </tr>
                    </c:forEach>
                </table>

            </div>
            <div class="col-xs-2">

            </div>
        </div>

    </body>
</html>
