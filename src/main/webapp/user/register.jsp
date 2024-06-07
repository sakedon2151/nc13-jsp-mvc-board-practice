<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Sign Up</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
          rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
          crossorigin="anonymous"
    >
</head>
<body>
    <div class="registerWrap">
        <h2>Sign Up</h2>
        <form action="/user/register_action.jsp" method="post">
            <div>
                <div class="form-floating">
                    <input type="text" name="username" placeholder="username" class="form-control" id="floatingUsername">
                    <label for="floatingUsername">new username</label>
                </div>
                <div class="form-floating">
                    <input type="password" name="password" placeholder="password" class="form-control" id="floatingPassword">
                    <label for="floatingPassword">new password</label>
                </div>
                <div class="form-floating">
                    <input type="text" name="nickname" placeholder="nickname" class="form-control" id="floatingNickname">
                    <label for="floatingNickname">new nickname</label>
                </div>
            </div>
            <div class="d-grid gap-2">
                <input type="submit" value="Sign Up" class="btn btn-primary">
                <a href="/index.jsp" role="button" class="btn btn-outline-primary">Cancel</a>
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
