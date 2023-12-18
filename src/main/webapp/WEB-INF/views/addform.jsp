<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add New Post</title>
    <style>
        body {
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            background-color: #f2f2f2;
            margin: 20px;
            text-align: center;
        }

        h1 {
            color: #006bb3;
        }

        form {
            width: 50%;
            margin: auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        table {
            width: 100%;
            margin-top: 20px;
            border-collapse: collapse;
        }

        table, tr, td {
            border: 1px solid #ddd;
        }

        td {
            padding: 12px;
            text-align: left;
        }

        input, textarea {
            width: calc(100% - 20px);
            padding: 8px;
            box-sizing: border-box;
            margin-bottom: 10px;
        }

        button {
            background-color: #006bb3;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        button:hover {
            background-color: #004080;
        }
    </style>
</head>
<body>

<h1>Add New Post</h1>

<form action="../addok" method="post" accept-charset="UTF-8">
    <table>
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
    <button type="submit">등록하기</button>
</form>

</body>
</html>
