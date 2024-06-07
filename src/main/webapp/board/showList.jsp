<%@ page import="connector.MySqlConnector" %>
<%@ page import="controller.BoardController" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="model.BoardDTO" %>
<%@ page import="model.UserDTO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Board List</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
          rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
          crossorigin="anonymous"
    >
</head>
<body>
    <%
        // 로그인 값이 필요하다면 반드시 타입캐스팅을 통해 아래와 같이 사용
        UserDTO logIn = (UserDTO) session.getAttribute("logIn");

        MySqlConnector connector = new MySqlConnector();
        BoardController boardController = new BoardController(connector);
        ArrayList<BoardDTO> list = boardController.selectAll();
    %>

    <div class="boardListWrap">
        <h2 class="text-center">Board List</h2>
        <table class="tableWrap table table-hover p-4">
            <thead>
                <tr>
                    <td>Post ID</td>
                    <td>Title</td>
                    <td>Writer</td>
                    <td>Entry Date</td>
                    <td>Modify Date</td>
                </tr>
            </thead>
            <%
                for (BoardDTO b : list) {
            %>
            <tbody>
                <tr>
                    <td><%=b.getId()%></td>
                    <%-- 주소창으로 id 값을 개별 페이지를 출력할 때 사용할 값으로 보내주기 --%>
                    <td><a href="/board/showOne.jsp?id=<%=b.getId()%>"><%=b.getTitle()%></a></td>
                    <td><%=b.getNickname()%></td>
                    <td><%=b.getEntryDate()%></td>
                    <td><%=b.getModifyDate()%></td>
                </tr>
            </tbody>
            <%
                }
            %>
        </table>
        <div class="d-grid gap-2">
            <a href="/board/writeOne" role="button" class="btn btn-primary">Write Post</a>
        </div>
    </div>



    <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous">
    </script>
</body>
</html>
