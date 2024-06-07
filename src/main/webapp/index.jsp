<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<html>
<head>
    <title>Local Board</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
          rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
          crossorigin="anonymous"
    >
</head>
<body>
    <div class="localBoardWrap">
        <h2>Sign In</h2>
        <form action="/user/auth.jsp" method="post">
            <div class="input-group">
                <div class="form-floating">
                    <input type="text" name="username" placeholder="username" class="form-control" id="floatingUsername">
                    <label for="floatingUsername">username</label>
                </div>
                <div class="form-floating">
                    <input type="password" name="password" placeholder="password" class="form-control" id="floatingPassword">
                    <label for="floatingPassword">password</label>
                </div>
            </div>
            <div class="d-grid gap-2">
                <input type="submit" value="Log In" class="btn btn-primary">
                <a href="/user/register.jsp" role="button" class="btn btn-outline-primary">Sign Up</a>
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
