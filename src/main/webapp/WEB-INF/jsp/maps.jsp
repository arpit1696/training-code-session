<html>
  <head>
    <title>
      Google map
    </title>
    <link href="/resources/css/tab.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script type="text/javascript" src="http://maps.google.com/maps/api/js?key=AIzaSyCm8rnRUZU0ecO8hpCF3KVANv9LmAXv0hc&libraries=places"></script>
            <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
    
  </head>
  <body>
  <nav class="nav navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="view">View</a>
			</div>
			<ul class="nav navbar-nav">
				<li class="active"><a href="sign-up">Signup</a></li>
				<li id="page1"><a href="admin">Login</a></li>
				<li><a href="tableview">Table</a></li>
				<li><a href="galleryview">Gallery</a></li>
				<li><a href="highchart">Graph</a></li>
				<li><a href="map">Map</a></li>
				<li><a href="/gridview/1">Grid view&nbsp;&nbsp;
						&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;
						&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
						&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				</a></li>
				<li><span><input class="form-control" type="search"></span></li>
				<!-- <li>
					<button id="search" type="button" class="btn btn-info">
						<span class="glyphicon glyphicon-search"></span> Search
					</button>
				</li> -->
			</ul>
		</div>
	</nav>
  <br><br>
   <input type="text" id="address" style="width: 500px;"></input>    
    <div id="googleMap" style="height: 300px;"></div>
  </body>
  <script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
   <script>
            var autocomplete = new google.maps.places.Autocomplete($("#address")[0], {});
var a;
            google.maps.event.addListener(autocomplete, 'place_changed', function() {
                var place = autocomplete.getPlace();
         a=	place.address_components;
         getLocation(a)
            });
            

            var map;
          function getLocation(a){
        	  var geocoder = new google.maps.Geocoder();
              var address;
              console.log(`address`,a)
              for(let i in a ){
            	  address+= a[i].long_name+"+";
              }

           
            geocoder.geocode({ address: address }, function(results, status) {
              console.log(results[0].geometry.location.lat())
              console.log(results[0].geometry.location.lng())
            if (status == google.maps.GeocoderStatus.OK) {
              var latitude = results[0].geometry.location.lat();
              var longitude = results[0].geometry.location.lng();  
              initializeMap(latitude, longitude);     
            }
          });
          }
          function initializeMap(lat, lng){
        // console.log(lat,lng)
        var mapProp = {
            center:new google.maps.LatLng(lat,lng),
            zoom: 2,
        };
        map = new google.maps.Map(document.getElementById("googleMap"),mapProp);
        addMarker(lat,lng)
      }
      
      function addMarker(lat1,lng1){
        var myLatLng = {lat:lat1, lng:lng1};
        var marker = new google.maps.Marker({
          'position': myLatLng,
          'map': map,
        });
        marker.setMap(map);
       }
            
        </script>	
  
</html>