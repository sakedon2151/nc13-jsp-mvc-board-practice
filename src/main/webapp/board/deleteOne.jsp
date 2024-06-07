<%@ page import="connector.MySqlConnector" %>
<%@ page import="controller.BoardController" %>
<%@ page import="model.BoardDTO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Post Delete</title>
</head>
<body>
    <%
        int id = Integer.parseInt(request.getParameter("id"));
        MySqlConnector connector = new MySqlConnector();
        BoardController boardController = new BoardController(connector);
        BoardDTO boardDTO = boardController.selectOne(id);


    %>

    <div class="postDeleteWrap">
        <h2>DELETE?</h2>
        <div>
            <p>Deleted posts cannot be recovered.</p>
            <div class="d-grid gap-2">
                <a href="/board/deleteOne_action.jsp?id=<%=boardDTO.getId()%>" role="button" class="btn btn-primary">Delete</a>
                <a href="/board/showOne.jsp?id=<%=boardDTO.getId()%>" role="button" class="btn btn-outline-primary">Cancel</a>
            </div>
        </div>
    </div>
</body>
</html>
