<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<html>
<head>
    <title>Main Index</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
          rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
          crossorigin="anonymous"
    >
    <style>

    </style>
</head>
<body>
    <div class="signInWrap m-4 border rounded container">
        <h2 class="pageTitle pt-3 justify-content-center row">Sign In</h2>
        <form action="/user/auth.jsp" method="post" class="p-4 row">
            <div class="input-group mb-2">
                <div class="form-floating">
                    <input type="text" name="username" placeholder="아이디" class="form-control" id="floatingUsername">
                    <label for="floatingUsername">Username</label>
                </div>
                <div class="form-floating">
                    <input type="password" name="password" placeholder="패스워드" class="form-control" id="floatingPassword">
                    <label for="floatingPassword">Password</label>
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
