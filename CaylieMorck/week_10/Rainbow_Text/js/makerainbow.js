
(function($){
  $.fn.makeRainbow = function(text){
  $(".rainbow").empty();
  var userValue = text.split("");
  for (var i = 0; i < userValue.length; i++) {
    var currentLetter = userValue[i];
    var rainbowColor = "rgb("+(Math.round(Math.random()*255))+','+(Math.round(Math.random()*255))+','+(Math.round(Math.random()*255))+")";
    var $span = $("<span>");
    $span.text(currentLetter).css({ color: rainbowColor });
    $(".rainbow").append($span)

  };
  };
}(jQuery));


// by wrapping $.fn in a jQuery function, the variables are "untouchable" by other variables in the code. Especailly when using other peoples code/ plugin.
