<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Main Page</title>
</head>
<body>

<h1>Main Page</h1>

<table border="1">
    <tr>
        <th>Item ID</th>
        <th>Seller Name</th>
        <th>Item Name</th>
        <th>Price</th>
        <th>Condition</th>
        <th>Content</th>
        <th>How to Sell</th>
        <th>Phone</th>
        <th>Registration Date</th>
    </tr>
    <tr>
        <td>${BoardVO.getItemID}</td>
        <td>${BoardVO.getSellerNAME}</td>
        <td>${boardVO.getItemNAME}</td>
        <td>${boardVO.getPrice}</td>
        <td>${boardVO.getCondi}</td>
        <td>${boardVO.getContent}</td>
        <td>${boardVO.getCowToSell}</td>
        <td>${boardVO.getPhone}</td>
        <td>${boardVO.getRegDate}</td>
    </tr>
</table>

</body>
</html>
