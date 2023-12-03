<%--
  Created by IntelliJ IDEA.
  User: seogyeongmi
  Date: 12/3/23
  Time: 9:11 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<spring:eval expression="u" var="boardVO" />
<tr>
    <td>Category: ${u.getCategory()} <br><br></td>
    <td>Title: ${u.getTitle()} <br><br></td>
    <td>Writer: ${u.getWriter()} <br><br></td>
    <td>Content: ${u.getContent()} <br><br></td>
    <td>생성된 날짜: ${u.getRegdate()} <br></td>
    <td>최근 수정된 날짜: ${u.getEditdate()} <br></td>
</tr>
</body>
</html>
