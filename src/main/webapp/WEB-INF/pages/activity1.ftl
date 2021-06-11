<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="UTF-8">
    <link rel="stylesheet" href="/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/font-awesome.min.css">
    <link rel="stylesheet" href="/css/login.css">
    <style>

        body {
            padding-top: 3px;
            padding-bottom: 40px;
            background-color: #eee;
            background-repeat: no-repeat;
            background-image: url("/pics/4.png");
        }
        header {
            height: 60px;
            line-height: 60px;
            width: 100%;
            color: #fff;
            font-family: "黑体";
            font-weight: 200;
            font-size: 20px;
            /*背景色渐变*/
            background: linear-gradient(to bottom right, #F56739, #FB9749);
        }


        img.menu_img {
            height: 24px;
            width: 24px;
        }

        img {
            vertical-align: middle;
            border: 0;
        }

        a {
            color: #000000;
            text-decoration: none;
        }

    </style>
</head>
<body onclick="window.location.href='/getActivity2.html'">
<div class="container" style="margin-top: 170px">

    <h3 class="text-muted">${student.name}同学,在过去一年中</h3><br>
    <h3 class="text-primary">您借阅了<span style="color:red;">${(book.borrownum)!"暂无数据"}</span>本书</h3><br>
    <h3 class="text-danger">借阅时长<span style="color:red;">${(book.borrowtime)!"暂无数据"}</span>小时</h3><br>
    <h3>你一定很爱读书吧</h3><br>
</div>

<script src="/jquery/jquery-2.1.1.min.js"></script>
<script src="/bootstrap/js/bootstrap.min.js"></script>
<script src="/jquery/layer/layer.js"></script>

</body>
</html>