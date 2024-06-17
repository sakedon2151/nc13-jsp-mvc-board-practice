<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<html>
<head>
    <title>Local Board</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
          rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
          crossorigin="anonymous"
    >
    <script>
        console.log("Hello World!");
        window.alert("여기는 인덱스 페이지입니다.");

        // 자바스크립트의 경우, 데이터타입이 자동으로 부여가 된다.
        // 우리가 int double String 등의 변수를 만들어 줄 때
        // 데이터타입을 따로 써줄 필요는 없지만 해당 변수의 '종류'를 적어주어야 한다.
        // 일반적인 변수: var
        // 일반적인 상수: const
        // 해당 페이지에서 한번만 선언가능하게 할 경우: let

        var number1 = 4;
        var number1 = 5; // 변수에 덮어쓰기 가능
        console.log(number1);

        const number2 = 5;
        // number2 = 10; -> 상수라서 값 변경 불가
        // const number2 = 6; -> number2 라는 상수가 이미 선언되었으므로 똑같은 이름으로 만들 수 없다.
        console.log(number2);


        let number3 = 4; // let 은 반 상수와 같은 존재
        number3 = 10;
        // let number3 = 6; -> 다시 선언하여 덮씌우려니 에러 발생
        console.log(number3);

        // --- 전역변수화 되는 것을 막기 위해 무조건 let 을 사용함 ---

        // 자바스크립트는 ; 을 안 붙여도 문제가 없다.
        let a = 10
        let b = 15
        console.log(a + b)

        // 이름의 경우 대소문자 구분을 철저히 한다.
        a = 20;
        let A = 40;
        console.log(A);

        // 일반적으로 자바스크립트에서 == 비교는 데이터타입과 상관없이 값이 같은지를 비교한다.
        a = 20;
        A = '20';
        console.log(a == 20); // 2개 모두 20이 들어갔으므로 true가 출력

        // 만약 2개의 데이터타입까지 동일한지 확일 할 경우
        // === 비교를 하게 된다.
        console.log(a === A);

        // 자바스크립트의 경우, 데이터타입이 고정되어 있지 않기 때문에
        // 숫자를 넣은 뒤 변수에 스트링을 다시 저장해도 문제가 없다.
        a = 20;
        a = "조재영";
        a = 4.13;

        // 만약 현재 들어간 값의 종류가 알고 싶을 때에는
        // typeof 를 사용하게 된다.
        console.log(typeof(4))
        console.log(typeof("조재영"))
        console.log(typeof(4.13))

    </script>
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
