<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>meetSAE</title>
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
    <link href="${pageContext.request.contextPath}/static/layui/css/layui.css" rel="stylesheet"/>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/xadmin.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/combodate.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/moment.js"></script>
    <!--

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
                <li class="tm-nav-item "><a href="${pageContext.request.contextPath}/system/goAdminInterface" class="tm-nav-link">
                    <i class="fas fa-home"></i>
                    Activity Square
                </a></li>

                <li class="tm-nav-item active"><a href="${pageContext.request.contextPath}/system/goAdminmanager" class="tm-nav-link">
                    <i class="far fa-comments"></i>
                    Manage User
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

<div class="container-fluid" >
    <main class="tm-main" >
        <!-- Search form -->
        <table class="layui-hide"  id="test" lay-filter="test"></table>




        <footer class="row tm-row">
            <hr class="col-12">
            <div class="col-md-6 col-12 tm-color-gray">
                Design: <a rel="nofollow" target="_parent" href="https://github.com/zil14010/MeetSafe" class="tm-external-link">meetSAFE Group</a>
            </div>
            <div class="col-md-6 col-12 tm-color-gray tm-copyright">
                Copyright 2021 CSE687
            </div>
        </footer>
    </main>
</div>




<script src="${pageContext.request.contextPath}/static/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/templatemo-script.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery-1.10.2.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/jquery-2.14.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/photoswipe.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/photoswipe-ui-default.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/layui/layui.js" charset="utf-8"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/xadmin.js"></script>
<style type="text/css">
    .layui-table-cell{
        text-align:center;
        height: auto;
        white-space: normal;
    }
    .layui-table img{
        max-width:300px
    }
</style>
<script type="text/javascript">

    layui.use('table', function(){
        var table = layui.table;

        table.render({
            elem: '#test'
            ,url: "${pageContext.request.contextPath}/student/getStudent"
            ,toolbar: '#toolbarDemo'
            ,defaultToolbar: ['filter', 'exports', 'print', {
                title: 'Remind'
                ,layEvent: 'LAYTABLE_TIPS'
                ,icon: 'layui-icon-tips'
            }]
            ,title: 'User Table'
            ,cols: [[
                {field:'id',title:'ID', width:'10%', unresize: true, style:'font-size:large', sort: true}
                ,{field:'name', title:'Name', width:'10%', unresize: true, style:'font-size:large', sort: true}
                ,{field:'email', title:'Email', width:'20%',  unresize: true, style:'font-size:large',sort: true}

                ,{field:'image', title:'Image' ,templet: function(data) {
                        var id = data.id;
                        //alert(id)
                        var str = '<img height=\"200px\" width=\"200px\" src=\"${pageContext.request.contextPath}/healthInfo/getImageById?studentId='
                        str += id
                        str +='\">'
                        //alert(str)
                        return str; }}
                ,{field:'healthStatus', title:'HealthStatus', width: '15%',style:'font-size:large',templet: function(data){
                      if(data.healthStatus === 1){
                          var str = '<div style=\"font-size: large; color: green\">Passed</div>'
                          return str;
                      }

                      if(data.healthStatus ===0)
                          var str = '<div style=\"font-size: large; color: red\">Not Passed</div>'
                          return str;
                    }}
                , {field:'button', title:'button' ,width: '15%',style:'font-size:large',templet: function(data) {
                        if(data.healthStatus===0){
                            var str = '<button id=\"pass\" value=\"'
                            str += data.id
                            str += '\" type=\"button\" onclick=\"passHealth(this, this.value)\" class=\"btn btn-success\">Pass</button>'
                            return str;
                        }
                       else {
                            var str = '<button disabled=true style=\"background-color: grey\" id=\"pass\" value=\"+ data.id + \" type=\"button\" class=\"btn btn-success\">Passed</button>'
                            return str;
                        }
                    }
                }
            ]]

        });})
    function passHealth(ele, value){
        //alert(this.value)
        //alert(value)

        ele.disabled="disabled"
        ele.style.backgroundColor = "grey"
        ele.innerHTML = "Passed"
        //alert(ele.value)
        var id = ele.value
        $.ajax({
            url: "${pageContext.request.contextPath}/healthInfo/updateHealthBypersonId",
            data: id,
            //dataType:"json",
            type:"POST",
            contentType: 'application/json; charset=utf-8',
            success: function(ajaxResponse){
                //alert("success")
                location.reload();
            },
            error: function (){
                alert("add failed")
            }
        });
    }

</script>

</body>
</html>