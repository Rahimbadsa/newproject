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
            table,th{border: 2px solid green;padding: 10px;border-collapse: collapse;background-color:darkturquoise}
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
            <div class="col-xs-1">

            </div>

           <div class="col-xs-10" style="background-color: #019275;height: 550px">
                <div><h3 style="background-color:#019275;text-align:center;color:FFFFFF;height: 40px;margin-top: 1%">Employees Information Records</h3>
                <table style="margin-left: 6%">
               
                        <th>Employees ID</th>
                        <th>Employees Name</th>
                        <th>Email</th>
                        <th>Gender</th>
                        <th>religion</th>
                        <th>nationality</th>
                        <th>Joining Date</th>
                        <th>Date of Birth</th>
                        <th>mobile Number</th>
                        <th>Adress</th>
                        <th>Salary</th>
                        <th></th>
                        <th></th>

                   
                    <c:forEach var="p" items="${aa}">
                        <tr>
                            <td>${p.id}</td>
                            <td>${p.name}</td>
                            <td>${p.email}</td>
                            <td>${p.gender}</td>
                            <td>${p.religion}</td>
                            <td>${p.nationality}</td>
                            <td>${p.jdate}</td>
                            <td>${p.dob}</td>
                            <td>${p.phone}</td>
                            <td>${p.adress}</td>
                            <td>${p.salary}</td>
                            <td><a href="deleteEmp.htm?id=${p.id}"/>Delete</a></td>
                            <td><a href="upchangeEmp.htm?id=${p.id}&name=${p.name}&email=${p.email}&gender=${p.gender}&religion=${p.religion}&nationality=${p.nationality}&jdate=${p.jdate}&dob=${p.dob}&phone=${p.phone}&adress=${p.adress}&salary=${p.salary}">Edit</a></td>
                        </tr>
                    </c:forEach>
                </table>

            </div>
            <div class="col-xs-1">

            </div>
        </div>

    </body>
</html>
