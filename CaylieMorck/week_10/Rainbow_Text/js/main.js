$button = $("#makeItRain")
$userInput = $("#userInput")


var buttonClicked = function() {
  var userValue = $userInput.val();
  $userInput.makeRainbow(userValue);
};


$button.on("click", buttonClicked);
