<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>showError</title>
</head>
<body>
    <%--
        이 페이지는 오류 상황에 따른 케이스를 담고 있습니다.
    --%>

    <%
        String errorCode = request.getParameter("code");
        String message = "";

        if (errorCode.equalsIgnoreCase("duplicated")) {
            message = "중복된 아이디로는 가입하실 수 없습니다.";
        }
    %>

    <h1><%=message%></h1>
    <a href="/user/register.jsp">Sign Up</a>
</body>
</html>
