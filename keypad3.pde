import websockets.*;
import android.view.*;
import ketai.net.*;

Finger[] fingers;
ArrayList<Integer> touchMap;

int touchAmount = 0;

WebsocketServer ws;

void setup() {
  fullScreen();
  fingers = new Finger[200];
  for (int i = 0; i < fingers.length; i++){
    fingers[i] = new Finger();
  }
  
  touchMap = new ArrayList<Integer>();
  
  frameRate(240);
  
  ws = new WebsocketServer(this, 8025, "/keypad");
}

void draw() {
  background(0);
  try{
    text(KetaiNet.getIP() + "     ;     " + frameRate + " ; " + frameCount, width*0.5, height*0.25);
  } catch(Exception e) {
  }
  text(touches.length, width *0.5, height * 0.5 - 10);
  
  for (int i = 0; i < touches.length && i < 2;i++) {
    fingers[i].a = false;
  }
  
  if (touches.length > 0) {
    for (int i = 0; i < touches.length && i < 2;i++) {
      text(str(touches[i].id) +  " , " + touches[i].x + " , " + touches[i].y, width * 0.5, height * 0.5 + i * 10);
      fingers[touches[i].id].x = int(touches[i].x);
      fingers[touches[i].id].y = int(touches[i].y);
      fingers[touches[i].id].a = true;
    }
  }
  //println(str(int(fingers[0].a)) + "," + str(int(fingers[1].a)));
  
  ws.sendMessage(str(int(fingers[0].a)) + "," + str(int(fingers[1].a)));
  for (Finger i : fingers) {
    i.a = false;
  }
}

class Finger {
  public int x = 0;
  public int y = 0;
  public boolean a = false;
  
  Finger() {}
};
