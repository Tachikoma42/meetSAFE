<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Xtra Blog</title>
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
        <li class="tm-nav-item active"><a href="${pageContext.request.contextPath}/system/goLocation" class="tm-nav-link">
          <i class="fas fa-pen"></i>
          Location
        </a></li>
        <li class="tm-nav-item"><a href="${pageContext.request.contextPath}/system/myactivity" class="tm-nav-link">
          <i class="fas fa-users"></i>
          My Activity
        </a></li>
        <li class="tm-nav-item"><a href="${pageContext.request.contextPath}/system/myprofile" class="tm-nav-link">
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
      <a href="https://facebook.com" class="tm-social-link">
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
  <main class="tm-main">
    <!-- Search form -->

    <div class="row tm-row tm-mb-45">
      <div class="col-12" style="height: 200px">
        <hr class="tm-hr-primary tm-mb-55">
        <input
                id="pac-input"
                class="controls"
                type="text"
                placeholder="Search Box"
        />
        <div id="map" style="height: 500px"></div>

        <!-- Async script executes immediately and must be after any DOM elements used in callback. -->
        <script
                src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCc2ztqsADSTSI3gjxJOnsTn8pUu71JfjY&callback=initAutocomplete&libraries=places&v=weekly"
                async
        ></script>
      </div>
    </div>
    <div>
      <img src="${pageContext.request.contextPath}/static/images/glemarket.png" style=" padding-top: 300px;"/>
    </div>

  </main>
</div>
<script src="${pageContext.request.contextPath}/static/js/templatemo-script.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery-1.10.2.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/jquery-2.14.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/photoswipe.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/photoswipe-ui-default.min.js"></script>
<script>
  function initAutocomplete() {
    const map = new google.maps.Map(document.getElementById("map"), {
      center: { lat: 43.0392, lng: -76.1351},
      zoom: 13,
      mapTypeId: "roadmap",
    });
    // Create the search box and link it to the UI element.
    const input = document.getElementById("pac-input");
    const searchBox = new google.maps.places.SearchBox(input);
    map.controls[google.maps.ControlPosition.TOP_LEFT].push(input);
    // Bias the SearchBox results towards current map's viewport.
    map.addListener("bounds_changed", () => {
      searchBox.setBounds(map.getBounds());
    });
    let markers = [];
    // Listen for the event fired when the user selects a prediction and retrieve
    // more details for that place.
    searchBox.addListener("places_changed", () => {
      const places = searchBox.getPlaces();

      if (places.length == 0) {
        return;
      }
      // Clear out the old markers.
      markers.forEach((marker) => {
        marker.setMap(null);
      });
      markers = [];
      // For each place, get the icon, name and location.
      const bounds = new google.maps.LatLngBounds();
      places.forEach((place) => {
        if (!place.geometry || !place.geometry.location) {
          console.log("Returned place contains no geometry");
          return;
        }
        const icon = {
          url: place.icon,
          size: new google.maps.Size(71, 71),
          origin: new google.maps.Point(0, 0),
          anchor: new google.maps.Point(17, 34),
          scaledSize: new google.maps.Size(25, 25),
        };
        // Create a marker for each place.
        markers.push(
                new google.maps.Marker({
                  map,
                  icon,
                  title: place.name,
                  position: place.geometry.location,
                })
        );

        if (place.geometry.viewport) {
          // Only geocodes have viewport.
          bounds.union(place.geometry.viewport);
        } else {
          bounds.extend(place.geometry.location);
        }
      });
      map.fitBounds(bounds);
    });
  }

</script>
</body>
</html>