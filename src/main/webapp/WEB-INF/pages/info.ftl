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
            background-image: url(/pics/1.jpg);
            background-repeat: no-repeat;
        }
        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            font-family: 微软雅黑;
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

        .active {
            color: #FFA129;
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
<div class="container">
    <span style="line-height: 10px;font-weight: bolder;font-size: 17px">${student.name}同学你好</span>
</div>
<br>
<div class="table-responsive">
    <table class="table  table-bordered">
        <thead>
        <tr>
            <th>学号</th>
            <th>性别</th>
            <th>年龄</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>${student.id}</td>
            <td>${student.gender}</td>
            <td>${student.age}</td>
        <tr>
        </tbody>
    </table>
    <table class="table  table-bordered">
        <thead>
        <tr>
            <th>系别</th>
            <th>专业</th>
            <th>班级</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>${student.dept}</td>
            <td>${student.major}</td>
            <td>${student.stuclass}</td>
        </tr>
        </tbody>
    </table>
</div>
<div class="container">
    <button type="button" onclick="window.location.href='/updatepass.html'" class="btn btn-primary btn-lg btn-block">修改密码</button>
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