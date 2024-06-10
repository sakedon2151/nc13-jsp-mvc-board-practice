<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Write Post</title>
</head>
<body>


    <div class="writePostWrap p-4">
        <h2>Write Post</h2>
        <form action="/board/writeOne_action.jsp" method="post">
            <div>
                <p>등록할 게시글 제목</p>
                <input type="text" name="title" placeholder="Title" class="form-control">
                <p>등록할 게시글 내용</p>
                <textarea name="content" placeholder="Content" class=""></textarea>
            </div>
            <div>
                <input type="submit" value="Write" class="btn btn-primary">
                <a href="/board/showList.jsp" role="button" class="btn btn-outline-primary">Cancel</a>
            </div>
        </form>
    </div>
</body>
</html>
