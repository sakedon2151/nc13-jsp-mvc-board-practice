<%@ page import="controller.BoardController" %>
<%@ page import="connector.MySqlConnector" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>deleteOne_action</title>
</head>
<body>
    <%--
        이 페이지는 게시글 삭제를 처리하는 페이지 입니다.
        사용자는 이 페이지에 접근할 수 없습니다.
    --%>

    <%
        int id = Integer.parseInt(request.getParameter("id"));
        MySqlConnector connector = new MySqlConnector();
        BoardController boardController = new BoardController(connector);
        boardController.delete(id);

        response.sendRedirect("/board/showList.jsp");
    %>
</body>
</html>
