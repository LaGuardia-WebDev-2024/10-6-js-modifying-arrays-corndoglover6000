var xPositions = [100, 255, 123, 321];
var yPositions = [200, 123, 367, 321];

setup = function() {
  size(400, 400); 
};

draw = function(){
  background(0, 0, 0);
  drawStars();

  //***in the video they use if(mouseIsPressed)
  //***in Codespaces we use if(mousePressed)

  if(mousePressed){
  xPositions.push(mouseX);
  yPositions.push(mouseY);
  }

  
}

var drawStars = function() {
    for (var i = 0; i < yPositions.length; i++) {
        text("⭐", xPositions[i], yPositions[i]);
        xPositions[i]++;
    }
};


