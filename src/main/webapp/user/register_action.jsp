<%@ page import="model.UserDTO" %>
<%@ page import="connector.MySqlConnector" %>
<%@ page import="controller.UserController" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>register_action</title>
</head>
<body>
    <%--
        이 페이지는 회원가입값을 처리하는 페이지 입니다.
        사용자는 이 페이지에 접근할 수 없습니다.
    --%>

    <%
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String nickname = request.getParameter("nickname");

        UserDTO attempt = new UserDTO();
        attempt.setUsername(username);
        attempt.setPassword(password);
        attempt.setNickname(nickname);

        MySqlConnector connector = new MySqlConnector();
        UserController userController = new UserController(connector);

        boolean result = userController.register(attempt);

        if (result) {
            // 가입 성공 - index redirect
            response.sendRedirect("/");
        } else {
            // 가입 실패 - 에러 처리
            response.sendRedirect("/error/showError.jsp?code=duplicated");
        }
    %>

</body>
</html>
