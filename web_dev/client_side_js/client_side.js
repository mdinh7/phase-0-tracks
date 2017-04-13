console.log("The script is running!");
function addRedDrop() {
  var photo = document.getElementById("Headline");
photo.style.boxShadow = "20px 30px 40px red";
}
var photo = document.getElementById("Headline");
photo.addEventListener("click", addRedDrop);