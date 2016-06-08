var peopleBaseURL = "http://api.open-notify.org/astros.json"
var $basePeopleContent = $(".people .content");
// var astroName = data.people.name;
// var astroCraft = data.people.craft;


var showAstro = function ( data ) {
  // var astros = data.people;
  for( var i=0; i < data.people.length; i ++ ) {
    var $p = $("<p>");
    $p.text( "Name: " + data.people[i].name + " " + "Vessel: " + data.people[i].craft );
    $basePeopleContent.append( "" );
    $basePeopleContent.prepend( $p );

    // debugger;
  };
};

var getAstro = function () {
  $.ajax({
  url: peopleBaseURL,
  dataType: "JSONP",
  type: "GET",
}).done( showAstro );
};

$(document).ready(function () {
  getAstro();
});



// var astros = data.people
// for( var i=0; i > data.people.length; i += ) {
//   var currentAstro = astro[i]
// }
