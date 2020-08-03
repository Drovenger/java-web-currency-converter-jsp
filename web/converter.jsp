<%--
  Created by IntelliJ IDEA.
  User: stpdm
  Date: 8/1/2020
  Time: 3:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Converter</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<%
    String rate = request.getParameter("rate");
    String usd = request.getParameter("usd");

    String vnd = String.valueOf(Long.parseLong(rate) * Long.parseLong(usd));
%>
<h2>Currency Converter</h2>
<form action="converter.jsp" method="get">
    <label>Rate: </label>
    <input type="text" name="rate" placeholder="RATE" value="<%=rate%>"/></br>
    <label>USD: </label>
    <input type="text" name="usd" placeholder="USD" value="<%=usd%>"/></br>
    <label>VND: </label>
    <input type="text" name="vnd" placeholder="VND" value="<%=vnd%>"/></br>
    <input type="submit" id="submit" value="Converter"/>
</form>
</body>
</html>
