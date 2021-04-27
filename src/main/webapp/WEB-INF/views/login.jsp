<%@include file="header.jsp"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
</head>
<body>
<%
    if(!(request.getAttribute("message") == null)){
        out.println("<h3>"+request.getAttribute("message")+"</h3>");
    }
%>
<%
    Cookie[]allCookies=request.getCookies();
    String username="",password="",rememberMeVal="";
    if (allCookies!=null){
        for (Cookie c:allCookies){
            if (c.getName().equals("cUsername")){
                username=c.getValue();
            }
            if (c.getName().equals("cPassword")){
                password =c.getValue();
            }
            if (c.getName().equals("cRememberMe")){
                rememberMeVal=c.getValue();
            }
        }
    }
%>
<form method="post" action="/2019211001001016_war_exploded/login">
    username:<input type = "text" name="name"> value="<%=username%><<br/>
    password:<input type = "password" name="password">value="<%=password%><br/>
    <input type="checkbox" name="rememberMe" value="1" <%=rememberMeVal.equals("1")?"checked":""%>/> RememberMe
    </br>
    <input type="submit" name="提交">
</form>
</body>
</html>
<%@include file="footer.jsp"%>
