<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="keys" content="">
    <meta name="author" content="">
    <link rel="stylesheet" href="/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/font-awesome.min.css">
    <link rel="stylesheet" href="/css/login.css">
    <style>
        .my-form-control-feedback {
            position: absolute;
            top: 0;
            right: 0;
            z-index: 2;
            display: block;
            width: 34px;
            height: 34px;
            line-height: 34px;
            text-align: center;
            color: #3C763D;
        }
        body {
            padding-top: 70px;
            padding-bottom: 40px;
            background-color: #eee;
            background-image: url(/pics/1.jpg);
            background-repeat: no-repeat;
        }
    </style>
</head>
<body>
<div class="container">

    <div class="form-signin" role="form" style="margin:50px auto">
        <h2 class="form-signin-heading"><i class="glyphicon glyphicon-log-in"></i> 注册</h2>
        <div class="form-group has-success has-feedback">
            <input type="text" class="form-control" id="stuid" placeholder="请输入学号" autofocus>
            <span class="glyphicon glyphicon-user form-control-feedback"
                  style="font-size: 20px;margin-right: -5px;margin-top: 6px"></span>
        </div>
        <div class="form-group has-success has-feedback">
            <input type="password" class="form-control" id="password" placeholder="请输入密码" autofocus>
            <span class="glyphicon glyphicon-user form-control-feedback"
                  style="font-size: 20px;margin-right: -5px;margin-top: 6px"></span>
        </div>
        <div class="form-group has-success has-feedback">
            <input type="text" class="form-control" id="name" placeholder="请输入姓名" style="margin-top:10px;">
            <span class="glyphicon glyphicon-lock form-control-feedback"
                  style="font-size: 20px;margin-right: -5px;margin-top: 6px"></span>
        </div>
        <div class="form-group has-success has-feedback">
            <select class="form-control" id="gender">
                <option>男</option>
                <option>女</option>
            </select>
        </div>
        <div class="form-group has-success has-feedback">
            <input type="text" class="form-control" id="age" placeholder="请输入年龄" style="margin-top:10px;">
            <span class="glyphicon glyphicon glyphicon-envelope form-control-feedback"
                  style="font-size: 20px;margin-right: -5px;margin-top: 6px"></span>
        </div>
        <div class="form-group has-success has-feedback">
            <input type="text" class="form-control" id="dept" placeholder="请输入系别" style="margin-top:10px;">
            <span class="glyphicon glyphicon glyphicon-envelope form-control-feedback"
                  style="font-size: 20px;margin-right: -5px;margin-top: 6px"></span>
        </div>
        <div class="form-group has-success has-feedback">
            <input type="text" class="form-control" id="major" placeholder="请输入专业" style="margin-top:10px;">
            <span class="glyphicon glyphicon glyphicon-envelope form-control-feedback"
                  style="font-size: 20px;margin-right: -5px;margin-top: 6px"></span>
        </div>

        <div class="form-group has-success has-feedback">
            <input type="text" class="form-control" id="stuclass" placeholder="请输入班级" style="margin-top:10px;">
            <span class="glyphicon glyphicon glyphicon-envelope form-control-feedback"
                  style="font-size: 20px;margin-right: -5px;margin-top: 6px"></span>
        </div>
        <div class="checkbox">
            <label style="float:right">
                <a href="/index">我有账号</a>
            </label>
        </div>
        <a class="btn btn-lg btn-success btn-block" onclick=register()>注册</a>
    </div>
</div>
<script src="/jquery/jquery-2.1.1.min.js"></script>
<script src="/bootstrap/js/bootstrap.min.js"></script>
<script src="/jquery/layer/layer.js"></script>
<script>
    var stuid = $("#stuid");
    var password = $("#password");
    var name = $("#name");
    var gender = $("#gender").selected();
    var age = $("#age");
    var dept = $("#dept");
    var major = $("#major");
    var stuclass = $("#stuclass");


    function register() {
        $.ajax({
            url: "/register.do",
            type: "post",
            dataType: "json",
            data: {
                stuid: stuid.val(),
                password: password.val(),
                name: name.val(),
                gender: gender,
                age: age.val(),
                dept: dept.val(),
                major: major.val(),
                stuclass: stuclass.val(),
            },
            success(data) {
                if (data.t === true) {
                    layer.msg("注册成功!即将跳转到登录页面", {time: 2000, icon: 6, shift: 5}, function () {
                        window.location.href = "/login"
                    });
                }
            }
        })
    }
</script>
<div class="container">

    <div class="form-signin" role="form" style="margin:50px auto">
        <h2 class="form-signin-heading"><i class="glyphicon glyphicon-log-in"></i> 注册</h2>
        <div class="form-group has-success has-feedback">
            <input type="text" class="form-control" id="stuid" placeholder="请输入学号" autofocus>
            <span class="glyphicon glyphicon-user form-control-feedback"
                  style="font-size: 20px;margin-right: -5px;margin-top: 6px"></span>
        </div>
        <div class="form-group has-success has-feedback">
            <input type="password" class="form-control" id="password" placeholder="请输入密码" autofocus>
            <span class="glyphicon glyphicon-user form-control-feedback"
                  style="font-size: 20px;margin-right: -5px;margin-top: 6px"></span>
        </div>
        <div class="form-group has-success has-feedback">
            <input type="text" class="form-control" id="name" placeholder="请输入姓名" style="margin-top:10px;">
            <span class="glyphicon glyphicon-lock form-control-feedback"
                  style="font-size: 20px;margin-right: -5px;margin-top: 6px"></span>
        </div>
        <div class="form-group has-success has-feedback">
            <select class="form-control" id="gender">
                <option>男</option>
                <option>女</option>
            </select>
        </div>
        <div class="form-group has-success has-feedback">
            <input type="text" class="form-control" id="age" placeholder="请输入年龄" style="margin-top:10px;">
            <span class="glyphicon glyphicon glyphicon-envelope form-control-feedback"
                  style="font-size: 20px;margin-right: -5px;margin-top: 6px"></span>
        </div>
        <div class="form-group has-success has-feedback">
            <input type="text" class="form-control" id="dept" placeholder="请输入系别" style="margin-top:10px;">
            <span class="glyphicon glyphicon glyphicon-envelope form-control-feedback"
                  style="font-size: 20px;margin-right: -5px;margin-top: 6px"></span>
        </div>
        <div class="form-group has-success has-feedback">
            <input type="text" class="form-control" id="major" placeholder="请输入专业" style="margin-top:10px;">
            <span class="glyphicon glyphicon glyphicon-envelope form-control-feedback"
                  style="font-size: 20px;margin-right: -5px;margin-top: 6px"></span>
        </div>

        <div class="form-group has-success has-feedback">
            <input type="text" class="form-control" id="stuclass" placeholder="请输入班级" style="margin-top:10px;">
            <span class="glyphicon glyphicon glyphicon-envelope form-control-feedback"
                  style="font-size: 20px;margin-right: -5px;margin-top: 6px"></span>
        </div>
        <div class="checkbox">
            <label style="float:right">
                <a href="/index.html">我有账号</a>
            </label>
        </div>
        <a class="btn btn-lg btn-success btn-block" onclick=register()>注册</a>
    </div>
</div>
<script src="/jquery/jquery-2.1.1.min.js"></script>
<script src="/bootstrap/js/bootstrap.min.js"></script>
<script src="/jquery/layer/layer.js"></script>
<script>
    var stuid = $("#stuid");
    var password = $("#password");
    var name = $("#name");
    var gender = $("#gender").selected();
    var age = $("#age");
    var dept = $("#dept");
    var major = $("#major");
    var stuclass = $("#stuclass");


    function register() {
        $.ajax({
            url: "/register.do",
            type: "post",
            dataType: "json",
            data: {
                stuid: stuid.val(),
                password: password.val(),
                name: name.val(),
                gender: gender,
                age: age.val(),
                dept: dept.val(),
                major: major.val(),
                stuclass: stuclass.val(),
            },
            success(data) {
                if (data.t === true) {
                    layer.msg("注册成功!即将跳转到登录页面", {time: 2000, icon: 6, shift: 5}, function () {
                        window.location.href = "/login"
                    });
                }
            }
        })
    }
</script>
</body>
</html>
