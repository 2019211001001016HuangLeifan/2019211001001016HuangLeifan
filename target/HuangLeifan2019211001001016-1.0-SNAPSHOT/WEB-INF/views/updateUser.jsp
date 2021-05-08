<%--
  Created by IntelliJ IDEA.
  User: 86159
  Date: 2021/4/26
  Time: 21:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="header.jsp"%>
<h1>User Update</h1>

<%
    User u=(User) session.getAttribute("user");
%>
<form method="post" action="updateUser">
    <input type="hidden" name="id" value="<%=u.getID()%>"
    username<input type="text" name="username" value="<%=u.getUsername()%>"/><br/>
    password<input type="password" name="password" value="<%=u.getPassword()%>"/><br/>
    email<input type="text" name="email" value="<%=u.getEmail()%>"/><br/>
    gender:<input type="radio" name="gender" value="male" <%=u.getGender().equals("male")?"checked":""%> > Male
    <input type="radio" name="gender" value="female" <%=u.getGender().equals("female")?"checked":""%>> Female
    <br>
    birthdate : <input type="date" name="birthdate" value="<%=u.getBirthdate()%>"><br>
    <input type="submit" value="update">

</form>

<%@include file="footer.jsp"%>

