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
                <table style="margin-left: 3%">
               
                        <th>Account No</th>
                        <th>User Name</th>
                        <th>Account Type</th>
                        <th>Password</th>
                        <th>Gender</th>
                        <th>Date of Birth</th>
                        <th>mobile Number</th>
                        <th>Branch Name</th>
                        <th>Balance</th>
                        <th></th>
                        <th></th>
                                      
                    <c:forEach var="p" items="${aa}">
                        <tr>
                            <td>${p.accNo}</td>
                            <td>${p.name}</td>
                            <td>${p.accType}</td>
                            <td>${p.password}</td>
                            <td>${p.gender}</td>
                            <td>${p.dob}</td>
                            <td>${p.phone}</td>
                            <td>${p.adress}</td>
                            <td>${p.balance}</td>
                             <td><a href="deleteAccount.htm?accNo=${p.accNo}"/>Delete</a></td>
                             <td><a href="upchangeAccount.htm?accNo=${p.accNo}&name=${p.name}&accType=${p.accType}&password=${p.password}&gender=${p.gender}&dob=${p.dob}&phone=${p.phone}&adress=${p.adress}&balance=${p.balance}"/>Edit</a></td>                      
                        </tr>
                    </c:forEach>
                </table>

            </div>
            <div class="col-xs-2">

            </div>
        </div>

    </body>
</html>
