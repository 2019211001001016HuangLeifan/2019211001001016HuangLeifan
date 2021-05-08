<%@include file="header.jsp"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<h1>userInfo</h1>
<table>
    <tr><td>username:</td><td><%=request.getAttribute("username")%></td></tr>
    <tr><td>password:</td><td><%=request.getAttribute("password")%></td></tr>
    <tr><td>email:</td><td><%=request.getAttribute("email")%></td></tr>
    <tr><td>gender:</td><td><%=request.getAttribute("gender")%></td></tr>
    <tr><td>birthdate:</td><td><%=request.getAttribute("birthdate")%></td></tr>
</table>
<%@include file="footer.jsp"%>
