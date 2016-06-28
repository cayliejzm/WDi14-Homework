var dawg = document.querySelector( ".dawg");
  dawg.style.top = "0px";
  dawg.style.marginLeft = "0px";
  var leftTimer = null;

var makeDawgDance = function () {
  // debugger

  var currentLeftValue = parseFloat( dawg.style.marginLeft );
  if ( parseInt(dawg.style.marginLeft) <= 850 ) {
    var newLeftValue = currentLeftValue + 10;
      dawg.style.marginLeft = newLeftValue + "px";
  } else {
    var newLeftValue = currentLeftValue - 10;
      dawg.style.marginLeft = newLeftValue + "px";
  }
  // debugger
// var newLeftValue = currentLeftValue + 10;
//   dawg.style.marginLeft = newLeftValue + "px";
    // console.log(dawg.style.marginLeft);
};
leftTimer = window.setInterval( makeDawgDance, 50 );
