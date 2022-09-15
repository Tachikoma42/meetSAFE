<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>meetSAFE</title>
    <link href="${pageContext.request.contextPath}/static/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/css/templatemo-xtra-blog.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/fontawesome/css/all.min.css"> <!-- https://fontawesome.com/ -->
    <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro&display=swap" rel="stylesheet"> <!-- https://fonts.google.com/ -->

    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/layui/css/layui.css" media="all">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/font.css">
    <link href="${pageContext.request.contextPath}/static/layui/css/xadmin.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/font.css">
    <link href="${pageContext.request.contextPath}/static/layui/css/xadmin.css" rel="stylesheet">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/fontawesome/css/all.min.css"> <!-- https://fontawesome.com/ -->
    <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro&display=swap" rel="stylesheet"> <!-- https://fonts.google.com/ -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/layui/css/layui.css" media="all">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/load.css" media="all">
    <!--

    TemplateMo 553 Xtra Blog

    https://templatemo.com/tm-553-xtra-blog

    -->
</head>
<body>
<header class="tm-header" id="tm-header">
    <div class="tm-header-wrapper">
        <button class="navbar-toggler" type="button" aria-label="Toggle navigation">
            <i class="fas fa-bars"></i>
        </button>
        <div class="tm-site-header">
            <div class="mb-3 mx-auto tm-site-logo"><i class="fas fa-times fa-2x"></i></div>
            <h1 class="text-center">meetSAFE</h1>
        </div>
        <nav class="tm-nav" id="tm-nav">
            <ul>
                <li class="tm-nav-item"><a href="${pageContext.request.contextPath}/system/goMain" class="tm-nav-link">
                    <i class="fas fa-home"></i>
                    Activity Square
                </a></li>
                <li class="tm-nav-item"><a href="${pageContext.request.contextPath}/system/goLocation" class="tm-nav-link">
                    <i class="fas fa-pen"></i>
                    Location
                </a></li>
                <li class="tm-nav-item"><a href="${pageContext.request.contextPath}/system/myactivity" class="tm-nav-link">
                    <i class="fas fa-users"></i>
                    My Activity
                </a></li>
                <li class="tm-nav-item active"><a href="${pageContext.request.contextPath}/system/myprofile" class="tm-nav-link">
                    <i class="far fa-comments"></i>
                    My Profile
                </a></li>
                <li class="tm-nav-item"><a href="${pageContext.request.contextPath}/index.jsp" class="tm-nav-link">
                    <i class="far fa-comments"></i>
                    Log Out
                </a></li>
            </ul>
        </nav>
        <div class="tm-mb-65">
            <a rel="nofollow" href="https://fb.com/templatemo" class="tm-social-link">
                <i class="fab fa-facebook tm-social-icon"></i>
            </a>
            <a href="https://twitter.com" class="tm-social-link">
                <i class="fab fa-twitter tm-social-icon"></i>
            </a>
            <a href="https://instagram.com" class="tm-social-link">
                <i class="fab fa-instagram tm-social-icon"></i>
            </a>
            <a href="https://linkedin.com" class="tm-social-link">
                <i class="fab fa-linkedin tm-social-icon"></i>
            </a>
        </div>
        <p class="tm-mb-80 pr-5 text-white">
            meetSAFE is website to helo students organize and join activities.
        </p>
    </div>
</header>
<div class="container-fluid">
    <main class="tm-main" >
        <!-- Search form -->

        <div class="row tm-row tm-mb-45">
            <div class="col-12">
                <hr class="tm-hr-primary tm-mb-55">
            </div>
        </div>
        <div class="row tm-row tm-mb-120">
            <div class="col-12">
                <h2 class="tm-color-primary tm-post-title tm-mb-60">My Profile</h2>
            </div>




        </div>
        <div class="row tm-row tm-mb-120">

            <div class="col-lg-6 tm-contact-left">
                <form method="POST" class="mb-5 ml-auto mr-0 tm-contact-form" style="float: left">
                    <div class="form-group row mb-4">
                        <label for="name" class="col-sm-3 col-form-label text-right tm-color-primary">Name</label>
                        <div class="col-sm-9">
                            <input class="form-control mr-0 ml-auto" name="name" id="name" type="text" required value=${userInfo.name}>
                        </div>
                    </div>
                    <div class="form-group row mb-4">
                        <label for="password" class="col-sm-3 col-form-label text-right tm-color-primary" >Password</label>
                        <div class="col-sm-9">
                            <input class="form-control mr-0 ml-auto" name="password" id="password" type="password" required value=${userInfo.password}>
                        </div>
                    </div>
                    <div class="form-group row mb-4">
                        <label for="email" class="col-sm-3 col-form-label text-right tm-color-primary">Email</label>
                        <div class="col-sm-9">
                            <input class="form-control mr-0 ml-auto" name="email" id="email" type="email" required value=${userInfo.email}>
                        </div>
                    </div>
<%--                    <div class="form-group row mb-4">--%>
<%--                        <label for="subject" class="col-sm-3 col-form-label text-right tm-color-primary">Gender</label>--%>
<%--                        <div class="layui-input-inline" style="width: 350px;">--%>
<%--                            <input type="radio" id="male" name="userType" title="Male"  checked="" >--%>
<%--                            <label for="male">Male</label>--%>
<%--                            <input type="radio" id="female" name="userType" title="Female"  >--%>
<%--                            <label for="female">FeMale</label><br>--%>
<%--                        </div>--%>
<%--                    </div>--%>
                    <div class="form-group row text-right">
                        <div class="col-12">
                            <button class="tm-btn tm-btn-primary tm-btn-small" onclick="UpdateProfile()">Submit</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>


       		<div class="bgColor">
       			<form id="uploadForm" method="post"  enctype="multipart/form-data" class="layui-form layui-form-pane">
       				 <div id="targetOuter">
                         <div id="targetLayer"><img id="upfile1" style="cursor:pointer" src="${pageContext.request.contextPath}/healthInfo/getImage" width="200px" height="200px" class="upload-preview" /></div>
       					<div class="icon-choose-image"></div>

       				</div>
				<div>
                    <div>
                        <input type="file" name="file_upload2" id = "uplx" accept="image/gif,image/jpeg,image/jpg,image/png,image/svg" value="Choose file" style="display: none"/>
                    </div>
                    <div>
                        <input type="submit" value="Upload Photo" class="btnSubmit" onClick="HealthInfo();"/>
                    </div>
                </div>

                </form>
            </div>
             <div class="d-flex justify-content-between tm-pt-45">
                    <span class="tm-color-primary" style="float: left">Status: Passed!</span>
             </div>


    </main>
</div>
<script src="${pageContext.request.contextPath}/static/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/templatemo-script.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery-1.10.2.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/jquery-2.14.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/photoswipe.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/photoswipe-ui-default.min.js"></script>
<script src="${pageContext.request.contextPath}/static/layui/layui.js"></script>
<script src="${pageContext.request.contextPath}/static/js/fileinput.js"></script>
<script>
    $(function () {
        $("#upfile1").src = "${pageContext.request.contextPath}/healthInfo/getImage"
    })
    function HealthInfo(){
        var image = $('#uplx')[0].files[0]
        var formData = new FormData();
        formData.append("photo",image);
        $.ajax({
            type:'post',
            // dataType:'json',
            data:formData,
            url:'${pageContext.request.contextPath}/healthInfo/uploadImage',
            mimeType: "multipart/form-data",
            processData: false,
            contentType: false,
            success:function(data){
                //alert("yes")
                layer.msg("upload success")
                //location.reload();
            },
            error:function (){
                //alert("failed");
            }
        })
    }
    $("#upfile1").click(function () {
        $("#uplx").trigger('click');
    });


    function UpdateProfile(){
        var person = "${userInfo.id}";
        var formData = {
            "name": $("#name").val(),
            "password": $("#password").val(),
            "email": $("#email").val(),
            "id": person
        };
        // alert(formData)
        $.ajax({
            type: "POST",
            url: "${pageContext.request.contextPath}/student/updataStudent",
            dataType:"json",
            contentType:"application/json",
            data: JSON.stringify(formData),//
            success: function(ajaxResponse){
               //alert(ajaxResponse.data);
                if (ajaxResponse.success) {
                    layer.msg("Update Success")

                } else {
                    layer.msg("Update Failed")

                }
        },
            error: function () {
                alert("Failed");
            }
        })
    }


</script>
</body>
</html>