<%@ page contentType="text/html;charset=UTF-8" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>meetSAFE</title>
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta http-equiv="Cache-Control" content="no-siteapp"/>

    <link href="<%=request.getContextPath()%>/static/layui/css/layui.css" rel="stylesheet"/>
    <link href="<%=request.getContextPath()%>/static/layui/css/xadmin.css" rel="stylesheet">


</head>
<body class="login-bg">

<div class="login layui-anim layui-anim-up" style="width: 800px;">
    <div class="message">Welcome to meetSAFE</div>
    <div id="darkbannerwrap"></div>
    <div class="layui-form">
        <div class="layui-form-item">
            <input id="loginName" name="name" placeholder="User name" type="text" lay-verify="required" class="layui-input">
        </div>
        <div class="layui-form-item">
            <input id="password" name="password" lay-verify="required" placeholder="Password" type="password" class="layui-input">
        </div>
        <div class="layui-form-item ">
            <input name="verCode" lay-verify="required|captcha" placeholder="Verification Code" type="text"
                   class="layui-input-inline" style="width: 150px;">
            <div class="captcha-img">
                <img src="${pageContext.request.contextPath}/system/getCaptcha" title="Click to switch" id="captcha" width="130px" height="50px" style="margin-left: 20px">
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-input-inline" style="width: 350px;">
                <input type="radio" name="userType" title="Student"  checked="" value="1">

                <input type="radio" name="userType" title="Admin"  value="2">
            </div>
        </div>
        <div class="layui-form-item">
            <input value="Login" lay-submit lay-filter="login" style="width:100%;" type="submit">
        </div>
    </div>
</div>
<p>${pageContext.request.contextPath}</p>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery-1.10.2.min.js"></script>
<script src="${pageContext.request.contextPath}/static/layui/layui.js" charset="utf-8"></script>
<script src="${pageContext.request.contextPath}/static/js/xadmin.js"></script>
<script>
    $(function () {

        $("#captcha").click(function () {
            this.src = "${pageContext.request.contextPath}/system/getCaptcha?t=" + new Date().getTime();
        });


        layui.use('form', function () {
            const form = layui.form;
            form.on('submit(login)', function (data) {
                const formData = data.field;
                console.log(formData);
                $.ajax({
                    url: "${pageContext.request.contextPath}/system/login",
                    data: formData,
                    method: "post",
                    async: true,
                    success: function (result) {
                        console.log(result);
                        layer.msg(result.msg);
                        if (result.success) {
                            var usertype = formData.userType
                            //alert(usertype)
                            if ( usertype === "1" ){
                                window.location.href = "${pageContext.request.contextPath}/system/goMain";
                            }
                            else{
                                window.location.href = "${pageContext.request.contextPath}/system/goAdminInterface";
                            }
                        } else {
                            /* Switch the verification code and clear the input box */
                            $("#captcha").click();
                            $("input[name=verCode]").val("");
                        }

                    },
                    error: function () {
                        layer.msg("Login Failed");

                    }
                })
            })
        });
    })
</script>
</body>
</html>