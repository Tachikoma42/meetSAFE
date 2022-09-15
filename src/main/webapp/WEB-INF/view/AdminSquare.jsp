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
                <li class="tm-nav-item active"><a href="${pageContext.request.contextPath}/system/goAdminInterface" class="tm-nav-link">
                    <i class="fas fa-home"></i>
                    Activity Square
                </a></li>

                <li class="tm-nav-item"><a href="${pageContext.request.contextPath}/system/goAdminmanager" class="tm-nav-link">
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
        <div class="row tm-row">
            <div class="col-12" >
                <input id = "SearchType" class="form-control tm-search-input" name="query" type="text" placeholder="Search Type" aria-label="Search" style="width: 20%;float: left">
                <input id = "SearchName" class="form-control tm-search-input" name="query" type="text" placeholder="Search Name" aria-label="Search" style="width: 20%;float:left">
                <button class="tm-search-button" onclick="Search()"><i class="fas fa-search tm-search-icon" aria-hidden="true"></i></button>
            </div>
        </div>
        <div class="row tm-row"  id="showDiv">
            <article class="col-12 col-md-6 tm-post">
                <hr class="tm-hr-primary">
                <a href="post.html" class="effect-lily tm-post-link tm-pt-60">
                    <div class="tm-post-link-inner">
                        <img src="${pageContext.request.contextPath}/static/images/img-01.jpg" alt="Image" class="img-fluid">
                    </div>
                    <span class="position-absolute tm-new-badge">New</span>
                    <h2 class="tm-pt-30 tm-color-primary tm-post-title">Simple and useful HTML layout</h2>
                </a>
                <p class="tm-pt-30">
                    There is a clickable image with beautiful hover effect and active title link for each post item.
                    Left side is a sticky menu bar. Right side is a blog content that will scroll up and down.
                </p>

                <button type="button" style="padding-top: 10px" class="btn btn-success">Sign In</button>
                <div class="d-flex justify-content-between tm-pt-45">
                    <span class="tm-color-primary">Travel . Events</span>
                    <span class="tm-color-primary">June 24, 2020</span>
                </div>
                <hr>
                <div class="d-flex justify-content-between">
                    <span>36 comments</span>
                    <span>by Admin Nat</span>
                </div>
            </article>

        </div>
        <div class="row tm-row tm-mt-100 tm-mb-75">
            <div class="tm-prev-next-wrapper">
                <a href="#" class="mb-2 tm-btn tm-btn-primary tm-prev-next disabled tm-mr-20">Prev</a>
                <a href="#" class="mb-2 tm-btn tm-btn-primary tm-prev-next">Next</a>
            </div>
            <div class="tm-paging-wrapper">
                <span class="d-inline-block mr-3">Page</span>
                <nav class="tm-paging-nav d-inline-block">
                    <ul>
                        <li class="tm-paging-item active">
                            <a href="#" class="mb-2 tm-btn tm-paging-link">1</a>
                        </li>
                        <li class="tm-paging-item">
                            <a href="#" class="mb-2 tm-btn tm-paging-link">2</a>
                        </li>
                        <li class="tm-paging-item">
                            <a href="#" class="mb-2 tm-btn tm-paging-link">3</a>
                        </li>
                        <li class="tm-paging-item">
                            <a href="#" class="mb-2 tm-btn tm-paging-link">4</a>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
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
<div id="model"  style="display: none">
    <article class="col-6 col-md-6 tm-post">
        <hr class="tm-hr-primary">
        <a  class="effect-lily tm-post-link tm-pt-60">
            <div class="tm-post-link-inner">
                <img src="${pageContext.request.contextPath}/static/images/img-01.jpg" alt="Image" class="img-fluid">
            </div>
            <span class="position-absolute tm-new-badge">Activity Type</span>
            <h2 class="tm-pt-30 tm-color-primary tm-post-title">Activity Title</h2>
        </a>
        <p class="tm-pt-30">
            Activity Content
        </p>
        <button type="button" class="layui-btn" style="background-color: red" id="SignInbutton" onclick="SignIn(this, this.value)" value="99999" >
            <i class="layui-icon"></i>Delete
        </button>
        <div class="d-flex justify-content-between tm-pt-45">
            <span class="tm-color-primary">Location</span>
            <span class="tm-color-primary">June 24, 2020</span>
        </div>
        <hr>
        <div class="d-flex justify-content-between">
            <span>Unknown Signed</span>
            <span>Organizer: Someone</span>
        </div>
    </article>
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

<script type="text/javascript">
    $(function(){
        var id = "${userInfo.id}"
        $.ajax({
            type: "POST",
            url: "${pageContext.request.contextPath}/activity/activityList",
            //dataType:"json",
            contentType: 'application/json; charset=utf-8',
            async : false,
            data: id,
            success: function(ajaxResponse){
                //alert(ajaxResponse.msg);
                var data = ajaxResponse.data
                var healstatus = ajaxResponse.boolean
                //alert(healstatus)
                //alert(ajaxResponse.data);

                var div
                var ele = document.getElementById("SignInbutton")
                $("#showDiv").html("")
                var showDiv = $("#showDiv").html()
                for(var i in data){
                    //alert(data[i].activityId)
                    //console.log(data[i].activityId)
                    console.log(data[i])
                    div = $("#model").html()

                    div = div.replace(/Activity Type/g,data[i].categoryName)
                    div = div.replace(/Activity Title/g,data[i].activityName)
                    div = div.replace(/Activity Content/g, data[i].comment)
                    div = div.replace(/June 24, 2020/g,data[i].date)
                    div = div.replace(/Location/g,data[i].placeName)
                    div = div.replace(/Someone/g,data[i].studentName)
                    div = div.replace(/Unknown/g,data[i].curPeople)
                    if(data[i].categoryName === "Party")
                        div = div.replace(/img-01/g, "img-03")
                    if(data[i].categoryName === "Show")
                        div = div.replace(/img-01/g, "img-05")
                    if(data[i].categoryName === "Show")
                        div = div.replace(/img-01/g, "img-02")
                    showDiv+=div

                }
                $("#showDiv").html(showDiv)
            },
            error: function () {
                alert("failed");

            }
        });

        // $('#date').combodate();

    })

    //search
    function Search() {
        // var date =  document.getElementById("SearchDate");
        // var categoryName =  document.getElementById("SearchType");
        // var location =  document.getElementById("SearchLocation");
        var formdata = {
            "activityName": $("#SearchName").val(),
            "categoryName": $("#SearchType").val(),
        }
        $.ajax({
            type: "POST",
            url: "${pageContext.request.contextPath}/activity/getActivityByParam",
            data:JSON.stringify(formdata),
            dataType:"json",
            contentType:"application/json",
            success: function(ajaxResponse){
                var data = ajaxResponse.list

                var div
                $("#showDiv").html("")
                var showDiv = $("#showDiv").html()
                for(var i in data){
                    div = $("#model").html()

                    div = div.replace(/Activity Type/g,data[i].categoryName)
                    div = div.replace(/Activity Title/g,data[i].activityName)
                    div = div.replace(/Activity Content/g, data[i].comment)
                    div = div.replace(/June 24, 2020/g,data[i].date)
                    div = div.replace(/Location/g,data[i].placeName)
                    div = div.replace(/Someone/g,data[i].studentName)
                    div = div.replace(/Unknown/g,data[i].curPeople)
                    if(data[i].categoryName === "Party")
                        div = div.replace(/img-01/g, "img-03")
                    if(data[i].categoryName === "Show")
                        div = div.replace(/img-01/g, "img-05")
                    if(data[i].categoryName === "Show")
                        div = div.replace(/img-01/g, "img-02")
                    showDiv+=div
                }
                $("#showDiv").html(showDiv)
            },
            error: function (){
                alert("search failed")
            }

        })
    }

    //activity sign in
    function SignIn(ele, value){
        //alert(this.value)
        //alert(value)

        ele.disabled="disabled"
        ele.style.backgroundColor = "grey"
        ele.innerHTML = "Signed"
        var personid = "${userInfo.id}";
        var formdata={
            "activityId": ele.value,
            "personId": personid,
        }
        $.ajax({
            url: "${pageContext.request.contextPath}/activity/deleteActivity",
            data:JSON.stringify(formdata),
            dataType:"json",
            type:"POST",
            contentType:"application/json",
            success: function(ajaxResponse){
                alert("success")
            },
            error: function (){
                alert("add failed")
            }
        });
    }



</script>

</body>
</html>