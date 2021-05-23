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
            padding-top: 70px;
            padding-bottom: 40px;
            background-color: #eee;
            background-image: url(/pics/1.jpg);
            background-repeat: no-repeat;
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


        .menu {
            display: block;
            position: fixed;
            bottom: 36px;
            width: 100%;
            height: 64px;
            color: #000000;
            padding-top: 10px;
            border-top: 0px solid #eee;
            background-color: transparent;
        }

        .subMenu {
            width: 20%;
            float: left;
            cursor: pointer;
        }

        .menu_name {
            height: 30px;
            width: 100%;
            line-height: 30px;
        }

        img.menu_img {
            height: 24px;
            width: 24px;
        }

        img {
            vertical-align: middle;
            border: 0;
        }


        .text-center {
            text-align: center
        }
        a {
            color: #000000;
            text-decoration: none;
        }

    </style>
</head>
<body>
<img src="/pics/3.jpg" alt="..." class="img-rounded" style="margin-left: 50px;margin-top: -27px;border-radius: 15px" height="221" width="273">
<div class="container">
    <br><br>
    <a class="btn btn-lg btn-success btn-block" onclick="window.location.href='/getActivity1.html'"> 点击进入年度书单</a>
</div>
<div id="menu" class="menu">
    <div id="one" class="subMenu text-center" data-src="">
        <a href="/main.html">
            <span style="font-size: 25px" class="glyphicon glyphicon-home"></span><br>
        </a>
        <div class="menu_name"><strong>主页面</strong></div>
    </div>
    <div id="two" class="subMenu text-center">
        <span></span>
        <div class="menu_name"></div>
    </div>
    <div id="three" class="subMenu text-center" data-src="">
        <a href="/activity.html">
            <span style="font-size: 25px" class="glyphicon glyphicon-calendar"></span><br>
        </a>
        <div class="menu_name"><strong>活动</strong></div>
    </div>
    <div id="four" class="subMenu text-center" data-src="personal.html">
        <span></span>
        <div class="menu_name"></div>
    </div>
    <div id="five" class="subMenu text-center" data-src="personal.html">
        <a href="/info.html">
            <span style="font-size: 25px" class="glyphicon glyphicon-user"></span><br>
        </a>
        <div class="menu_name"><strong>信息</strong></div>
    </div>
</div>
<script src="/jquery/jquery-2.1.1.min.js"></script>
<script src="/bootstrap/js/bootstrap.min.js"></script>
<script src="/jquery/layer/layer.js"></script>

</body>
</html>