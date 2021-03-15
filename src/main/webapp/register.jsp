<%@include file="header.jsp" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form method="post" action="register">
    username<input type="text" name="username"/><br/>
    password<input type="password" name="password"/><br/>
    Email<input type="text" name="Email"/><br/>
    Gender:<input type="radio" name="gender">Nale<input type="radio" name="gender">Female<br/>
    Data or Birth :<input type="text"name="birthDate"><br/>
    <input type="submit" value="Register"/>

</form>

</body>
</html>
<%@include file="footer.jsp" %>
