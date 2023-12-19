<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Post</title>
    <style>
        body {
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            background-color: #f2f2f2;
        }

        #edit {
            border-collapse: collapse;
            width: 50%;
            margin: 20px auto;
            background-color: #fff;
            padding: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }

        #edit td {
            padding: 10px;
            text-align: left;
        }

        #edit input[type="text"],
        #edit textarea {
            width: 100%;
            padding: 8px;
            margin: 6px 0;
            box-sizing: border-box;
        }

        #edit button {
            background-color: #006bb3;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        #edit button[type="button"] {
            background-color: #d9534f;
        }

        #edit button:hover {
            background-color: #005580;
        }
    </style>
</head>
<body>

<h1>Edit Post</h1>

<form:form commandName="u" method="POST" action="editok">
    <form:hidden path="itemID"/>
    <table id="edit">
        <tr><td>Seller Name:</td><td><input type="text" name="sellerName"/></td></tr>
        <tr><td>Item Name:</td><td><input type="text" name="itemName"/></td></tr>
        <tr><td>Price:</td><td><input type="number" id="price" name="price" min="0" max="10000000" step="10000" value="0"></td></tr>
        <tr><td>Condition:</td><td>
            <input list="condi" name="condi">
            <datalist id="condi">
                <option value="상">
                <option value="중">
                <option value="하">
            </datalist></td></tr>
        <tr><td>Content:</td><td><textarea name="content" rows="10" cols="30"></textarea></td></tr>
        <tr><td>How To Sell:</td><td>
            <input type="radio" id="direct" name="howToSell" value="직거래">
            <label for="direct">직거래</label><br>
            <input type="radio" id="package" name="howToSell" value="택배거래">
            <label for="package">택배</label><br></td></tr>
        <tr><td>Phone Number:</td><td><input type="text" name="phone"/></td></tr>
    </table>
    <button type="submit">수정하기</button>
    <input type="button" value="취소하기" onclick="history.back()"/>
</form:form>

</body>
</html>
