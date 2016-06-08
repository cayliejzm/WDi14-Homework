
var baseIssURL = "http://api.open-notify.org/iss-now.json";
var $baseLatitude = $(".latitude");
var $baseLongitude = $(".longitude");
var data2;



var getCurrentLocation = function ( longitude, latitude ) {
  $.ajax ({
    url: baseIssURL,
    dataType: "JSONP",
    type: "GET"
  }).done (function(data){
    data2 = data
    initMap(data)
  });
};

getCurrentLocation();

var initMap = function ( data ) {
  var issLatitude = data.iss_position.latitude;
  var issLongitude = data.iss_position.longitude;
  var map = new google.maps.Map(document.getElementById('map'), {
    zoom: 4,
    center: {
      lat: issLatitude,
      lng: issLongitude
    },
   });


   var marker = new google.maps.Marker({
     position: {
       lat: issLatitude,
       lng: issLongitude
     },
     map: map,
     title: "SPACE STATION"
   });
};
