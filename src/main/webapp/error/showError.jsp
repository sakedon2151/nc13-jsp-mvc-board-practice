<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Sign Up Failed</title>
</head>
<body>
    <%
        String errorCode = request.getParameter("code");
        String message = "";

        if (errorCode.equalsIgnoreCase("duplicated")) {
            message = "You cannot sign up with a duplicate username.";
        }
    %>

    <div class="signUpFailedWrap">
        <h2><%=message%></h2>
        <div>
            <p>
                If you already have an account, select [Sign In],
                or select [Sign Up] to create an account.
            </p>
            <div class="d-grid gap-2">
                <a href="/index.jsp" role="button" class="btn btn-primary">Sign In</a>
                <a href="/user/register.jsp" role="button" class="btn btn-outline-primary">Sign Up</a>
            </div>
        </div>
    </div>
</body>
</html>
