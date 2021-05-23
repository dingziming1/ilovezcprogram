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



        img.menu_img {
            height: 24px;
            width: 24px;
        }

        img {
            vertical-align: middle;
            border: 0;
        }


        a {
            color: #38454f;
            text-decoration: none;
        }
    </style>
</head>
<body>

<div class="container">
    <img src="/pics/zc.jpg" width="100" height="100" style="border-radius: 90px">
    <span style="line-height: 10px;font-weight: bolder;font-size: 17px">福州大学至诚学院图书馆欢迎您</span>

</div>
<form class="form-horizontal">
    <div class="form-group">
        <label for="newpassword" class="col-sm-2 control-label">新密码</label>
        <div class="col-sm-10">
            <input type="password" class="form-control" id="newpassword" placeholder="新密码">
        </div>
    </div>
    <div class="form-group">
        <label for="confirmpassword" class="col-sm-2 control-label">确认新密码</label>
        <div class="col-sm-10">
            <input type="password" class="form-control" id="confirmpassword" placeholder="确认新密码">
        </div>
    </div>

    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <button type="button" onclick="updatepsw()" class="btn btn-primary btn-lg btn-block">确认修改</button>
        </div>
    </div>
</form>

<script src="/jquery/jquery-2.1.1.min.js"></script>
<script src="/bootstrap/js/bootstrap.min.js"></script>
<script src="/jquery/layer/layer.js"></script>
<script>
    var p1 = $("#newpassword");
    var p2 = $("#confirmpassword");
    console.log(p1)
    console.log(p2)
    function updatepsw() {
        $(function () {
            $.ajax({
                url: "/updatepsw.do",
                type: "post",
                dataType: "json",
                data: {
                    newpassword: p1.val(),
                    confirmpassword: p2.val()
                },
                success(data) {
                    if (data.flag) {
                        layer.msg("修改成功", {time: 1000, icon: 6, shift: 5}, function () {
                            window.location.href = "/main.html"
                        });
                    } else {
                        layer.msg("修改失败,两次密码不同", {time: 1000, icon: 5, shift: 6}, function () {

                        });
                    }
                }
            })
        });
    }
</script>
</body>
</html>