import processing.video.*;

Capture video;  //captura de la wecam

void setup() {

  size(640, 480);
  noStroke();
  textSize(28);

  video = new Capture(this, 640, 480); //captura de la webcam
  video.start();

}

void draw() {

  if (video.available() == true) {
    video.read();
  }  

  //video.filter(BLUR, 10);
            
  image(video,0,0);
  
  fill(0,180);
  rect(0,0,640,48);
  fill(255);
  text("FPS: " + frameRate, 10, 34);//10, 34

}