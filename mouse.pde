void mouseDragged() {
  mousePressed();
}

void mousePressed() {
  if (mouseButton==LEFT) {
    if (map[int(mouseX)/10-(startX/10)+8-tranX/10][int(mouseY)/10]==-100) {//leaflog
      map[int(mouseX)/10-(startX/10)+8-tranX/10][int(mouseY)/10]=-9418460;
    } else if (map[int(mouseX)/10-(startX/10)+8-tranX/10][int(mouseY)/10]==-1004) {//leaflog
      map[int(mouseX)/10-(startX/10)+8-tranX/10][int(mouseY)/10]=-1002;
    } else if (map[int(mouseX)/10-(startX/10)+8-tranX/10][int(mouseY)/10]==-1007) {//leaflog
      map[int(mouseX)/10-(startX/10)+8-tranX/10][int(mouseY)/10]=-1005;
    } else {
      map[int(mouseX)/10-(startX/10)+8-tranX/10][int(mouseY)/10]=0;
    }
  }
  if (mouseButton==RIGHT) {
    if ((map[int(mouseX)/10-(startX/10)+8-tranX/10][int(mouseY)/10]==-9418460 || map[int(mouseX)/10-(startX/10)+8-tranX/10][int(mouseY)/10]==-100) && blocks==-13731772) {//leaflog
      map[int(mouseX)/10-(startX/10)+8-tranX/10][int(mouseY)/10]=-100;
    } else if ((map[int(mouseX)/10-(startX/10)+8-tranX/10][int(mouseY)/10]==-1002 || map[int(mouseX)/10-(startX/10)+8-tranX/10][int(mouseY)/10]==-1004) && blocks==-1003) {//leaflog
      map[int(mouseX)/10-(startX/10)+8-tranX/10][int(mouseY)/10]=-1004;
    } else if ((map[int(mouseX)/10-(startX/10)+8-tranX/10][int(mouseY)/10]==-1005 || map[int(mouseX)/10-(startX/10)+8-tranX/10][int(mouseY)/10]==-1007) && blocks==-1006) {//leaflog
      map[int(mouseX)/10-(startX/10)+8-tranX/10][int(mouseY)/10]=-1007;
    } else {
      map[int(mouseX)/10-(startX/10)+8-tranX/10][int(mouseY)/10]=blocks;
    }
    //println("place");
  }
}

void keyPressed() {
  /*
  if (keyCode==RIGHT || key==65) {
   tranX-=10;
   println(tranX);
   }
   if (keyCode==LEFT || key==68) {
   tranX+=10;
   println(tranX);
   }*/
  switch(keyCode) {
  case 37: //left
    tranX+=10;
    break;
  case 39: //right
    tranX-=10;
    break;
  case 65: //left
    tranX+=100;
    break;
  case 68: //right
    tranX-=100;
    break;
  }
}
void mouse() {
  noFill();
  stroke(255);
  if ((int(mouseX)-tranX2)<0) {
    rect((int(mouseX)-tranX2)-(int(mouseX)-tranX2)%10-10, int(mouseY)-(int(mouseY)%10), 10, 10);
  } else {
    rect((int(mouseX)-tranX2)-(int(mouseX)-tranX2)%10, int(mouseY)-(int(mouseY)%10), 10, 10);
  }
  //rect((int(mouseX)-tranX)-(int(mouseX)-tranX)%10,int(mouseY)-(int(mouseY)%10),10,10);
  noStroke();
}

void mouseWheel(MouseEvent event) {
  block2=block+int(event.getCount());
  if (block2!=block) {
    if (block2<0) {
      block2=20;
    }
    if (block2>20) {
      block2=0;
    }
    //println(block2+1);
  }
  block=block2;

  //println(block+1);
  blocks=blockList[block];
}
