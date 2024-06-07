<%@ page import="model.UserDTO" %>
<%@ page import="model.BoardDTO" %>
<%@ page import="connector.MySqlConnector" %>
<%@ page import="controller.BoardController" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>updateOne_action</title>
</head>
<body>
    <%--
        이 페이지는 게시글 수정사항을 처리하는 페이지 입니다.
        사용자는 이 페이지에 접근할 수 없습니다.
    --%>

    <%
        // 이제 폼으로 받아온 title, content 내용을 MySQL 에서 동일한 writer_id를 가진 대상에 업데이트 해야함
        int id = Integer.parseInt(request.getParameter("id"));
        UserDTO logIn = (UserDTO) session.getAttribute("logIn");

        String title = request.getParameter("title");
        String content = request.getParameter("content");

        BoardDTO attempt = new BoardDTO();
        attempt.setId(id);
        attempt.setTitle(title);
        attempt.setContent(content);
        attempt.setWriterId(logIn.getId());

        MySqlConnector connector = new MySqlConnector();
        BoardController boardController = new BoardController(connector);
        boardController.update(attempt);

        response.sendRedirect("/board/showOne.jsp?id=" + attempt.getId());

        // 내가 만든 updateOne 값 수령 -> updateOne_action 객체화 -> BoardController 객체로 Update
        // 기존에 만든 메서드인 selectOne 메서드 활용해서도 생각해보기

    %>
</body>
</html>
