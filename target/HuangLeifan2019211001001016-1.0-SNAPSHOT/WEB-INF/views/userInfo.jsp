<%@ page import="com.dabin.model.User" %>
<%@include file="header.jsp"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<h1>userInfo</h1>

<%--<%Cookie []allCookies=request.getCookies();--%>
<%--for (Cookie c:allCookies){--%>
<%--    out.println("<br/>"+c.getName()+"---"+c.getValue());--%>
<%--}--%>
<%--%>--%>
<%
  User u = (User) session.getAttribute("user");
%>
<table border="1">
    <tr><td>Username:</td><td><%=u.getUsername()%></td></tr>
    <tr><td>Password:</td><td><%=u.getPassword()%></td></tr>
    <tr><td>Email:</td><td><%=u.getEmail()%></td></tr>
    <tr><td>Gender:</td><td><%=u.getGender()%></td></tr>
    <tr><td>Birthdate:</td><td><%=u.getBirthdate()%></td></tr>
</table>
<%@include file="footer.jsp"%>
