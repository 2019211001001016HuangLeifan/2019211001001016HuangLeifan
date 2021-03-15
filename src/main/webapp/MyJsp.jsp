<%--
  Created by IntelliJ IDEA.
  User: 86159
  Date: 2021/4/4
  Time: 20:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">
    <h1>My JSP page</h1>
</head>
<body>
<%@include file="header.jsp" %>
This is my JSP page<br>
<br/>
<%@include file="footer.jsp" %>
</body>
</html>
