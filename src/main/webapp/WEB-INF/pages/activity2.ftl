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
<body onclick="window.location.href='/getActivity3.html'">
<div class="container" style="margin-top: 170px">

    <h3 class="text-muted">在一年中，你在<span style="color:red;">${(book.firstbooktime)!"暂无数据"}</span>第一次借的这本<span style="color:red;">${(book.firstbook)!"暂无数据"}</span>是否勾起你的回忆</h3><br>
    <h3 class="text-primary"><span style="color:red;">${(book.favouritebook)!"暂无数据"}</span>当之无愧是你最爱的书籍</h3><br>
    <h3 class="text-danger">希望你能够在接下来的一年中继续学习享受学习</h3><br>
</div>

<script src="/jquery/jquery-2.1.1.min.js"></script>
<script src="/bootstrap/js/bootstrap.min.js"></script>
<script src="/jquery/layer/layer.js"></script>

</body>
</html>