<%@ page import="connector.MySqlConnector" %>
<%@ page import="controller.BoardController" %>
<%@ page import="model.BoardDTO" %>
<%@ page import="model.UserDTO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Board One</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
          rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
          crossorigin="anonymous"
    >
</head>
<body>
    <%
        int id = Integer.parseInt(request.getParameter("id"));
        UserDTO logIn = (UserDTO) session.getAttribute("logIn");
        MySqlConnector connector = new MySqlConnector();
        BoardController boardController = new BoardController(connector);
        BoardDTO boardDTO = boardController.selectOne(id);

        if (boardDTO != null) { // 해당 id 를 대상으로한 boardDTO 에 값이 있을 경우
    %>
    <div class="boardOneWrap">
        <h2 class="text-center">Title: <%=boardDTO.getTitle()%></h2>
        <p>Post ID: <%=boardDTO.getId()%></p>
        <p>Writer: <%=boardDTO.getNickname()%></p>
        <p>Entry Date: <%=boardDTO.getEntryDate()%></p>
        <p>Modify Date: <%=boardDTO.getModifyDate()%></p>
        <hr>
        <p><%=boardDTO.getContent()%></p>
    </div>
    <%
            if (boardDTO.getWriterId() == logIn.getId()) { // 해당 게시글의 작성자 id 와 현재 로그인한 유저의 id 가 동일한 경우
    %>
    <div class="d-grid gap-2">
        <a href="/board/updateOne.jsp?id=<%=boardDTO.getId()%>" role="button" class="btn btn-primary">Update</a>
        <a href="/board/deleteOne.jsp?id=<%=boardDTO.getId()%>" role="button" class="btn btn-outline-primary">Delete</a>
    </div>
    <%
            }
    %>
    <div class="d-grid gap-2">
        <a href="/board/showList.jsp" role="button" class="btn btn-primary">Prev Page</a>
    </div>
    <%
        } else { // 해당 id 를 대상으로한 boardDTO 에 값이 없을 경우
    %>
    <div class="errorCaseWrap">
        <h2>The ID post does not exist.</h2>
        <div class="d-grid gap-2">
            <a href="/board/showList.jsp" role="button" class="btn btn-primary">Prev Page</a>
        </div>
    </div>
    <%
        }
    %>



    <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous">
    </script>
</body>
</html>
