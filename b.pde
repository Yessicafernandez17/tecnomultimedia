void creditos1() {
  if(frameCount%5 == 0){
    counter++;
  }
  
  if (counter > 6) {
    counter = 1;
  }
  image2 = loadImage("flores" + counter + ".png");
}
