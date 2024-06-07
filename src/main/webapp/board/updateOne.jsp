<%@ page import="connector.MySqlConnector" %>
<%@ page import="controller.BoardController" %>
<%@ page import="model.BoardDTO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Post Update</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
          rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
          crossorigin="anonymous"
    >
</head>
<body>
    <%
        int id = Integer.parseInt(request.getParameter("id"));
        MySqlConnector connector = new MySqlConnector();
        BoardController boardController = new BoardController(connector);
        BoardDTO boardDTO = boardController.selectOne(id);
    %>

    <div class="updateOneWrap p-4">
        <h2>Post Update</h2>
        <form action="/board/updateOne_action.jsp?id=<%=boardDTO.getId()%>" method="post">
            <div>
                <p>수정할 게시글 제목</p>
                <input type="text" name="title" placeholder="<%=boardDTO.getTitle()%>" class="form-control">
                <p>수정할 게시글 내용</p>
                <textarea name="content" placeholder="<%=boardDTO.getContent()%>" class=""></textarea>
            </div>
            <div class="d-grid gap-2">
                <input type="submit" value="Update" class="btn btn-primary">
                <a href="/board/showOne.jsp?id=<%=boardDTO.getId()%>" role="button" class="btn btn-outline-primary">Cancel</a>
            </div>
        </form>
    </div>



    <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous">
    </script>
</body>
</html>
