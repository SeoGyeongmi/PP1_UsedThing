<%--
  Created by IntelliJ IDEA.
  User: seogyeongmi
  Date: 11/30/23
  Time: 3:23 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>자유게시판</title>
    <style>
        #list {
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }
        #list td, #list th {
            border: 1px solid #ddd;
            padding: 8px;
            text-align:center;
        }
        #list tr:nth-child(even){background-color: #f2f2f2;}
        #list tr:hover {background-color: #ddd;}
        #list th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: center;
            background-color: #006bb3;
            color: white;
        }
    </style>
    <script>
        function delete_ok(id){
            var a = confirm("정말로 삭제하겠습니까?");
            if(a) location.href='deleteok/' + id;
            else location.href='/'
        }
        function redirectToViewPage(id) {
            location.href = 'view/' + id;
        }
    </script>
</head>
<body>
<h1>자유게시판</h1>
<table id="list">
    <tr>
        <th>Item ID</th>
        <th>Seller Name</th>
        <th>Item Name</th>
        <th>Price</th>
        <th>Condition</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>
    <c:forEach items="${list}" var="u">
        <tr onclick="redirectToViewPage('${u.getItemID()}')">
            <td>${u.getItemID()}</td>
            <td>${u.getSellerName()}</td>
            <td>${u.getItemName()}</td>
            <td>${u.getPrice()}</td>
            <td>${u.getCondi()}</td>
            <td><a href="editform/${u.getItemID()}">Edit</a></td>
            <td><a href="javascript:delete_ok('${u.getItemID()}')">Delete</a></td>
        </tr>
    </c:forEach>
</table>

<br/><a href="add/">Add New Post</a>
</body>
</html>