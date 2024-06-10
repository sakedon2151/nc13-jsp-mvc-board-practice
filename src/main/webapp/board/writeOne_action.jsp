<%@ page import="model.UserDTO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>writeOne_action</title>
</head>
<body>
    <%--
        이 페이지는 게시글 등록을 처리하는 페이지 입니다.
        사용자는 이 페이지에 접근할 수 없습니다.
    --%>

    <%
        UserDTO logIn = (UserDTO) session.getAttribute("logIn");
    %>
</body>
</html>
