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
            table,th{border: 2px solid green;padding: 10px;border-collapse: collapse;background-color: orange}
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

            <div class="col-xs-8">
                <h1 style="background-color: gold">Employees Information Records</h1>
                <table>
               
                        <th>Serial No</th>
                        <th>Employees Id</th>
                        <th>Employees Name</th>
                        <th>Salary</th>
                        <th>House Rent</th>
                        <th>Treatement Allowance</th>
                        <th>Transport Cost</th>
                        <th>Total Salary</th>
                                        
                    <c:forEach var="p" items="${aa}">
                        <tr>
                            <td>${p.sid}</td>
                            <td>${p.id}</td>
                            <td>${p.name}</td>
                            <td>${p.salary}</td>
                            <td>${p.rent}</td>
                            <td>${p.tallowance}</td>
                            <td>${p.ta}</td>
                            <td>${p.tsalary}</td>
                        </tr>
                    </c:forEach>
                </table>

            </div>
            <div class="col-xs-2">

            </div>
        </div>

    </body>
</html>
