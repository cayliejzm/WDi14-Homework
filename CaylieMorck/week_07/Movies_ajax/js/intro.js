var request = new XMLHttpRequest();

window.onload = function () {
  var btn = document.querySelector("button");
  btn.addEventListener("click", function() {

    request.onreadystatechange = function () {
      if ( request.readyState !== 4 ) {
        return;
      }
      var dataAsString = request.responseText
      var dataAsObject = JSON.parse( dataAsString );

      var name = document.getElementsByClassName("search")[0].value;
      name.innerHTML = dataAsObject.Title;

      console.log( dataAsObject );

    };

      request.open("GET", "http://omdbapi.com?t=" + name );
      request.send();


    console.log( name );
  });
}
