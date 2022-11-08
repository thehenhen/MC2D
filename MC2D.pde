int y=10;
int i;
int treeD=0;
int treeC;
int coalC;
int ironC;
int goldC;
int copperC;
int redC;
int lapisC;
int diamondC;
int[] blockList= {-13987537, -11386840, -9737365, -9418460, -13731772, -14935012, -1916758, -462770, -4167854, -15118672, -4194304, -11542059, -2100, -13144136};
int[] solidBlocks= {-13987537, -11386840, -9737365, -9418460, -13731772, -14935012, -1916758, -462770, -4167854, -15118672, -4194304, -11542059, -2100};
int block=0;
int block2;
int tranX=0;
int tranX2;
int count=0;
float yoff;
float yincrement=0.03;
int colour;
int n;
int m;
int time=1;
int[][] map = new int[243][50];
int[][] fluid = new int[243][50];
int blocks = -13987537;
int a=-700;
int cloudS=int(random(0, 5));
int seaLevel=30;
int seed=int(random(0, 10000000)); 

void setup() {
  //frameRate(10);
  randomSeed(seed);//////REPLACE THE VARIABLES WITH YOUR SEED IF YOU WANT A CUSTOM WORLD
  noiseSeed(seed);  
  for (int i=0; i<243; i++) {
    for (int j=0; j<50; j++) {
      map[i][j]=0;
    }
  }
  println("Left click to break, right click to place. ");
  //println("1 - grass\n2 - dirt\n3 - stone\n4 - log\n5 - leaf\n6 - coal ore\n7 - iron ore\n8 - gold ore\n9 - copper ore\n10 - redstone ore\n11 - lapis ore\n12 - diamond ore");
  println("Use mouse wheel to scroll through blocks. ");
  println("DON'T CLICK OUTSIDE THE BORDER I SWEAR TO GOD THE GAME WILL CRASH\n");
  println("Changelog for alpha103: ");
  println(" - WATER MOVES LETS GOOOOOOOOOOOOOOOO");
  println(" - SAND MOVES LETS GOOOOOOOOOOOOOOOO");
  println(" - animations still buggy, expect it to hopefully be done by next update");
  println(" - scuffed temporary biome based on height - if terrain goes below sea level (which you can edit) the biome turns into ocean biome");
  println("\nIf any bugs, large or small are found, pls tell me lmao\n");
  println("seed: "+seed);
  size(800, 500);
  noStroke();
  forest();
}

void printMap() {
  for (n=0; n<=239; n++) {
    for (m=0; m<=49; m++) {
      if (map[n][m]!=-1651885 && map[n][m]!=-2092 && map[n][m]!=-16777216 && map[n][m]!=-6427649 && map[n][m]!=0 && map[n][m]!=-10039043 && map[n][m]!=-991338 && map[n][m]!=-10197916 && map[n][m]!=-1307) {
        rectMode(CENTER);
        if (map[n][m]==-14935012) {
          rectMode(CORNER);
          coal(n*10-865, m*10+5);
          rectMode(CENTER);
        } else if (map[n][m]==-1916758) {
          rectMode(CORNER);
          iron(n*10-865, m*10+5);
          rectMode(CENTER);
        } else if (map[n][m]==-462770) {
          rectMode(CORNER);
          gold(n*10-865, m*10+5);
          rectMode(CENTER);
        } else if (map[n][m]==-4167854) {
          rectMode(CORNER);
          copper(n*10-865, m*10+5);
          rectMode(CENTER);
        } else if (map[n][m]==-4194304) {
          rectMode(CORNER);
          redstone(n*10-865, m*10+5);
          rectMode(CENTER);
        } else if (map[n][m]==-15118672) {
          rectMode(CORNER);
          lapis(n*10-865, m*10+5);
          rectMode(CENTER);
        } else if (map[n][m]==-11542059) {
          rectMode(CORNER);
          diamond(n*10-865, m*10+5);
          rectMode(CENTER);
        } else if (map[n][m]==-13987537) {
          rectMode(CORNER);
          grass(n*10-865, m*10+5);
          rectMode(CENTER);
        } else if (map[n][m]==-9418460) {
          rectMode(CORNER);
          wood(n*10-865, m*10+5);
          rectMode(CENTER);
        } else if (map[n][m]==-13731772) {
          rectMode(CORNER);
          leaf(n*10-865, m*10+5);
          rectMode(CENTER);
        } else if (map[n][m]==-100) {
          rectMode(CORNER);
          leafWood(n*10-865, m*10+5);  
          rectMode(CENTER);
        } else if (map[n][m]==-2100) {
          rectMode(CORNER);
          sand(n*10-865, m*10+5);
          rectMode(CENTER);
        } else if (map[n][m]==-13144136) {
          rectMode(CORNER);
          waterSource(n*10-865, m*10+5);
          rectMode(CENTER);
        } else if (map[n][m]==-1314413602) {
          rectMode(CORNER);
          waterFlowR(n*10-865, m*10+5);
          rectMode(CENTER);
        } else if (map[n][m]==-1314413603) {
          rectMode(CORNER);
          waterFlowL(n*10-865, m*10+5);
          rectMode(CENTER);
        } else if (map[n][m]==-1314413604) {
          rectMode(CORNER);
          waterFlowD(n*10-865, m*10+5);
          rectMode(CENTER);
        } else {
          fill(map[n][m]);
          rect(n*10-865, m*10+5, 10, 10);
        }
      }
    }
  }
  rectMode(CORNER);  
}

void mouseDragged() {
  mousePressed();
}

void mousePressed() {
  if (mouseButton==LEFT) {
    if (map[int(mouseX)/10+87-tranX/10][int(mouseY)/10]==-100) {
      map[int(mouseX)/10+87-tranX/10][int(mouseY)/10]=-9418460;
    } else {
      map[int(mouseX)/10+87-tranX/10][int(mouseY)/10]=0;
    }
    //println(int(mouseX)/10-tranX/10+" "+int(mouseY)/10);
  }
  if (mouseButton==RIGHT) {
    if ((map[int(mouseX)/10+87-tranX/10][int(mouseY)/10]==-9418460 || map[int(mouseX)/10+87-tranX/10][int(mouseY)/10]==-100) && blocks==-13731772) {
      map[int(mouseX)/10+87-tranX/10][int(mouseY)/10]=-100;
    } else {
      map[int(mouseX)/10+87-tranX/10][int(mouseY)/10]=blocks;
    }
    //println("place");
  }
}

void keyPressed() {
  if (keyCode==RIGHT || key==65) {
    tranX-=10;
    //println(tranX);
  }
  if (keyCode==LEFT || key==68) {
    tranX+=10;
    //println(tranX);
  }
  switch(keyCode) {
  case 37: //left
    tranX+=10;
    break;
  case 39: //right
    tranX-=10;
    break;
  case 65: //left
    tranX+=10;
    break;
  case 68: //right
    tranX-=10;
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
      block2=13;
    }
    if (block2>13) {
      block2=0;
    }
    //println(block2+1);
  }
  block=block2;

  //println(block+1);
  blocks=blockList[block];
}

//stone -9737365
//day -16535044
//night -16777216
//grass -13987537
//dirt -11386840
//log -9418460
//leaf -13731772
//coal -14935012
//iron -1916758
//gold -462770
//copperOrange -4167854
//copperGreen -13738674
//redstone -4194304
//lapis -15118672
//diamond -11542059
//sand -2100
//water -13144136

//sun -1651885
//moon -2092
//cloud day -10039043
//cloud night -10197916

void draw() {
  flowUpdate();
  sourceUpdate();
  blockUpdate();
  if (millis()%500>250) {
  }
  a+=time*cloudS;
  sky();
  //println(tranX);
  pushMatrix();
  translate(tranX, 0);
  tranX2=tranX;
  printMap();
  popMatrix();
  tranX2=0;
  if (blocks!=-1651885 && blocks!=-2092 && blocks!=-16777216 && blocks!=-6427649 && blocks!=0 && blocks!=-10039043 && blocks!=-991338 && blocks!=-10197916 && blocks!=-1307) {
    rectMode(CENTER);
    if (blocks==-14935012) {
      rectMode(CORNER);
      coal(15, 15);
      rectMode(CENTER);
      fill(255);
      text("Block: Coal Ore", 25, 19);
    } else if (blocks==-1916758) {
      rectMode(CORNER);
      iron(15, 15);
      rectMode(CENTER);
      fill(255);
      text("Block: Iron Ore", 25, 19);
    } else if (blocks==-462770) {
      rectMode(CORNER);
      gold(15, 15);
      rectMode(CENTER);
      fill(255);
      text("Block: Gold Ore", 25, 19);
    } else if (blocks==-4167854) {
      rectMode(CORNER);
      copper(15, 15);
      rectMode(CENTER);
      fill(255);
      text("Block: Copper Ore", 25, 19);
    } else if (blocks==-4194304) {
      rectMode(CORNER);
      redstone(15, 15);
      rectMode(CENTER);
      fill(255);
      text("Block: Redstone Ore", 25, 19);
    } else if (blocks==-15118672) {
      rectMode(CORNER);
      lapis(15, 15);
      rectMode(CENTER);
      fill(255);
      text("Block: Lapis Ore", 25, 19);
    } else if (blocks==-11542059) {
      rectMode(CORNER);
      diamond(15, 15);
      rectMode(CENTER);
      fill(255);
      text("Block: Diamond Ore", 25, 19);
    } else if (blocks==-13987537) {
      rectMode(CORNER);
      grass(15, 15);
      rectMode(CENTER);
      fill(255);
      text("Block: Grass", 25, 19);
    } else if (blocks==-11386840) {
      fill(blocks);
      rect(15, 15, 10, 10);
      fill(255);
      text("Block: Dirt", 25, 19);
    } else if (blocks==-9737365) {
      fill(blocks);
      rect(15, 15, 10, 10);
      fill(255);
      text("Block: Stone", 25, 19);
    } else if (blocks==-9418460) {  
      rectMode(CORNER);
      wood(15, 15);
      rectMode(CENTER);
      fill(255);
      text("Block: Wood", 25, 19);
    } else if (blocks==-13731772) {
      rectMode(CORNER);
      leaf(15, 15);
      rectMode(CENTER);
      fill(255);
      text("Block: Leaf", 25, 19);
    } else if (blocks==-2100) {
      rectMode(CORNER);
      sand(15, 15);
      rectMode(CENTER);
      fill(255);
      text("Block: Sand", 25, 19);
    } else if (blocks==-13144136) {
      rectMode(CORNER);
      waterSource(15, 15);
      rectMode(CENTER);
      fill(255);
      text("Block: Water", 25, 19);
    }
    rectMode(CORNER);
  }
  mouse();
  //println(int(mouseX)+" "+int(mouseY));
}

void grass(int x, int y) {
  fill(-11386840);
  rect(x+2, y-3, 1, 1);
  rect(x-5, y-2, 10, 7);
  fill(-13987537);
  rect(x-5, y-5, 10, 3);
  rect(x-4, y-2, 2, 1);
  rect(x-4, y-1, 1, 1);
  rect(x-1, y-2, 2, 1);
  rect(x+3, y-2, 1, 1);
  fill(-11386840);
  rect(x+2, y-3, 1, 1);
}

void wood(int x, int y) {
  fill(-9418460);
  rect(x-5, y-5, 10, 10);
  fill(74, 50, 11);
  rect(x-4, y-5, 1, 2);
  rect(x-4, y, 1, 5);
  rect(x-2, y-5, 1, 6);
  rect(x, y+1, 1, 4);
  rect(x+1, y-5, 1, 5);
  rect(x+2, y-1, 1, 6);
  rect(x+3, y-5, 1, 3);
}

void leaf(int x, int y) {
  fill(-13731772);
  rect(x-5, y-5, 1, 1);
  rect(x-5, y-4, 1, 1);
  rect(x-4, y-4, 1, 1);
  rect(x-3, y-4, 1, 1);
  rect(x-3, y-5, 1, 1);
  rect(x-2, y-5, 3, 1);
  rect(x-2, y-4, 1, 2);
  rect(x-4, y-3, 1, 2);
  rect(x-5, y-2, 1, 2);
  rect(x-3, y-2, 1, 2);
  rect(x-1, y-3, 1, 2);
  rect(x-2, y-1, 1, 6);
  rect(x-4, y, 1, 2);
  rect(x-5, y+1, 1, 2);
  rect(x-3, y+1, 1, 2);
  rect(x-4, y+3, 1, 2);
  rect(x-3, y+4, 4, 1);
  rect(x-1, y, 1, 2);
  rect(x, y+1, 1, 3);
  rect(x+1, y-4, 1, 3);
  rect(x, y-5, 1, 2);
  rect(x, y-2, 1, 2);
  rect(x+1, y, 1, 2);
  rect(x+1, y+3, 1, 1);
  rect(x+2, y+2, 1, 3);
  rect(x+2, y+4, 2, 1);
  rect(x+3, y+1, 1, 2);
  rect(x+4, y, 1, 4);
  rect(x+2, y-1, 1, 2);
  rect(x+3, y-2, 1, 2);
  rect(x+4, y-3, 1, 2);
  rect(x+2, y-5, 3, 1);
  rect(x+3, y-4, 1, 1);
  rect(x+2, y-3, 1, 2);
  rect(x-5, y+3, 1, 2);
}

void leafWood(int x, int y) {
  fill(-9418460);
  rect(x-5, y-5, 10, 10);
  fill(74, 50, 11);
  rect(x-4, y-5, 1, 2);
  rect(x-4, y, 1, 5);
  rect(x-2, y-5, 1, 6);
  rect(x, y+1, 1, 4);
  rect(x+1, y-5, 1, 5);
  rect(x+2, y-1, 1, 6);
  rect(x+3, y-5, 1, 3);
  fill(-13731772);
  rect(x-5, y-5, 1, 1);
  rect(x-5, y-4, 1, 1);
  rect(x-4, y-4, 1, 1);
  rect(x-3, y-4, 1, 1);
  rect(x-3, y-5, 1, 1);
  rect(x-2, y-5, 3, 1);
  rect(x-2, y-4, 1, 2);
  rect(x-4, y-3, 1, 2);
  rect(x-5, y-2, 1, 2);
  rect(x-3, y-2, 1, 2);
  rect(x-1, y-3, 1, 2);
  rect(x-2, y-1, 1, 6);
  rect(x-4, y, 1, 2);
  rect(x-5, y+1, 1, 2);
  rect(x-3, y+1, 1, 2);
  rect(x-4, y+3, 1, 2);
  rect(x-3, y+4, 4, 1);
  rect(x-1, y, 1, 2);
  rect(x, y+1, 1, 3);
  rect(x+1, y-4, 1, 3);
  rect(x, y-5, 1, 2);
  rect(x, y-2, 1, 2);
  rect(x+1, y, 1, 2);
  rect(x+1, y+3, 1, 1);
  rect(x+2, y+2, 1, 3);
  rect(x+2, y+4, 2, 1);
  rect(x+3, y+1, 1, 2);
  rect(x+4, y, 1, 4);
  rect(x+2, y-1, 1, 2);
  rect(x+3, y-2, 1, 2);
  rect(x+4, y-3, 1, 2);
  rect(x+2, y-5, 3, 1);
  rect(x+3, y-4, 1, 1);
  rect(x+2, y-3, 1, 2);
  rect(x-5, y+3, 1, 2);
}

void coal(int x, int y) {
  fill(-9737365);
  rect(x-5, y-5, 10, 10);
  fill(-14935012);
  rect(x-4, y-4, 2, 1);
  rect(x-4, y-4, 2, 1);
  rect(x+2, y-4, 1, 2);
  rect(x-2, y-2, 2, 1);
  rect(x-1, y-1, 1, 1);
  rect(x+1, y, 1, 2);
  rect(x-4, y+2, 3, 1);
  rect(x-2, y+1, 1, 1);
  rect(x+3, y+3, 1, 1);
}

void iron(int x, int y) {
  fill(-9737365);
  rect(x-5, y-5, 10, 10);
  fill(-1916758);
  rect(x-4, y-4, 2, 1);
  rect(x-4, y-4, 2, 1);
  rect(x+2, y-4, 1, 2);
  rect(x-2, y-2, 2, 1);
  rect(x-1, y-1, 1, 1);
  rect(x+1, y, 1, 2);
  rect(x-4, y+2, 3, 1);
  rect(x-2, y+1, 1, 1);
  rect(x+3, y+3, 1, 1);
}

void gold(int x, int y) {
  fill(-9737365);
  rect(x-5, y-5, 10, 10);
  fill(-462770);
  rect(x-4, y-4, 2, 1);
  rect(x-4, y-4, 2, 1);
  rect(x+2, y-4, 1, 2);
  rect(x-2, y-2, 2, 1);
  rect(x-1, y-1, 1, 1);
  rect(x+1, y, 1, 2);
  rect(x-4, y+2, 3, 1);
  rect(x-2, y+1, 1, 1);
  rect(x+3, y+3, 1, 1);
}

void copper(int x, int y) {
  fill(-9737365);
  rect(x-5, y-5, 10, 10);
  fill(-4167854);
  rect(x-4, y-4, 1, 1);
  rect(x-2, y-2, 1, 1);
  rect(x+2, y-4, 1, 2);
  rect(x-3, y+2, 2, 1);
  rect(x+3, y+3, 1, 1);
  fill(-13738674);
  rect(x-3, y-4, 1, 1);
  rect(x-1, y-2, 1, 2);
  rect(x-2, y+1, 1, 1);
  rect(x-4, y+2, 1, 1);
  rect(x+1, y, 1, 2);
}

void redstone(int x, int y) {
  fill(-9737365);
  rect(x-5, y-5, 10, 10);
  fill(-4194304);
  rect(x-4, y-4, 2, 1);
  rect(x-4, y-4, 2, 1);
  rect(x+2, y-4, 1, 2);
  rect(x-2, y-2, 2, 1);
  rect(x-1, y-1, 1, 1);
  rect(x+1, y, 1, 2);
  rect(x-4, y+2, 3, 1);
  rect(x-2, y+1, 1, 1);
  rect(x+3, y+3, 1, 1);
}

void lapis(int x, int y) {
  fill(-9737365);
  rect(x-5, y-5, 10, 10);
  fill(-15118672);
  rect(x-4, y-4, 2, 1);
  rect(x-4, y-4, 2, 1);
  rect(x+2, y-4, 1, 2);
  rect(x-2, y-2, 2, 1);
  rect(x-1, y-1, 1, 1);
  rect(x+1, y, 1, 2);
  rect(x-4, y+2, 3, 1);
  rect(x-2, y+1, 1, 1);
  rect(x+3, y+3, 1, 1);
}

void diamond(int x, int y) {
  fill(-9737365);
  rect(x-5, y-5, 10, 10);
  fill(-11542059);
  rect(x-4, y-4, 2, 1);
  rect(x-4, y-4, 2, 1);
  rect(x+2, y-4, 1, 2);
  rect(x-2, y-2, 2, 1);
  rect(x-1, y-1, 1, 1);
  rect(x+1, y, 1, 2);
  rect(x-4, y+2, 3, 1);
  rect(x-2, y+1, 1, 1);
  rect(x+3, y+3, 1, 1);
}

void sand(int x, int y) {
  fill(-2100);
  rect(x-5, y-5, 10, 10);
}

void waterSource(int x, int y) {
  fill(-13144136);
  rect(x-5, y-5, 10, 10);
}

void waterFlowR(int x, int y) {//02
  fill(-13144136);
  triangle(x-5, y-5, x-5, y+5, x+5, y+5);
  //println("flowR");
}

void waterFlowL(int x, int y) {//03
  fill(-13144136);
  triangle(x+5, y-5, x+5, y+5, x-5, y+5);
  //println("flowL");
}

void waterFlowD(int x, int y) {//04
  fill(-13144136);
  rect(x-5, y-5, 10, 10);
}

boolean blockSolid(int i, int j) {
  boolean out=false;
  if (map[i][j]==-13987537 || map[i][j]==-11386840 || map[i][j]==-9737365 || map[i][j]==-9418460 || map[i][j]==-13731772 || map[i][j]==-14935012 || map[i][j]==-1916758 || map[i][j]==-462770 || map[i][j]==-4167854 || map[i][j]==-15118672 || map[i][j]==-4194304 || map[i][j]==-11542059 || map[i][j]==-2100) {
    out=true;
  }
  return out;
}

boolean blockFill(int i, int j){
  boolean out=false;
  if (map[i][j]==-13987537 || map[i][j]==-11386840 || map[i][j]==-9737365 || map[i][j]==-9418460 || map[i][j]==-13731772 || map[i][j]==-14935012 || map[i][j]==-1916758 || map[i][j]==-462770 || map[i][j]==-4167854 || map[i][j]==-15118672 || map[i][j]==-4194304 || map[i][j]==-11542059 || map[i][j]==-2100 || map[i][j]==-13144136 || map[i][j]==-1314413604) {
    out=true;
  }
  return out;
}
void forest() {
  //sky();
  for (int x=-790; x<=1600; x+=10) {
    float n = noise(yoff)*50;
    yoff += yincrement;
    treeC=int(random(0, 9));
    y=int(n);   
    //if (y>=40) {
    //  y-=1;
    //  n-=1;
    //}
    //if (y<=30) {
    //  y+=3;
    //  n+=3;
    //}
    for (i=1; i<y-3; i++) {
      coalC=int(random(0, 400));
      ironC=int(random(0, 2000));
      goldC=int(random(0, 600));
      copperC=int(random(0, 150));
      redC=int(random(0, 400));
      lapisC=int(random(0, 800));
      diamondC=int(random(0, 2000));
      if (coalC==1 && 500-i*10>50 && 500-i*10<300) {
        ore1(x, 500-i*10, "coal");
      } else if (coalC==2 && 500-i*10>50 && 500-i*10<300) {
        ore2(x, 500-i*10, "coal");
      } else if (coalC==3 && 500-i*10>50 && 500-i*10<300) {
        ore3(x, 500-i*10, "coal");
      } else if (coalC==4 && 500-i*10>50 && 500-i*10<300) {
        ore4(x, 500-i*10, "coal");
      } else if (coalC==5 && 500-i*10>50 && 500-i*10<300) {
        ore5(x, 500-i*10, "coal");
      } else if (coalC==6 && 500-i*10>50 && 500-i*10<300) {
        ore6(x, 500-i*10, "coal");
      } else if (coalC==7 && 500-i*10>50 && 500-i*10<300) {
        ore7(x, 500-i*10, "coal");
      } else {
        if (map[(x+790)/10][50-i]!=-14935012 && map[(x+790)/10][50-i]!=-1916758 && map[(x+790)/10][50-i]!=-462770 && map[(x+790)/10][50-i]!=-4167854  && map[(x+790)/10][50-i]!=-4194304 && map[(x+790)/10][50-i]!=-15118672  && map[(x+790)/10][50-i]!=-11542059) {
          fill(107, 107, 107);
          rect(x, 500-i*10, 10, 10);
          map[(x+790)/10][50-i]=-9737365;
        }
      }

      if (ironC==15 && 500-i*10>150 && 500-i*10<480) {
        ore1(x, 500-i*10, "iron");
      } else if ((ironC==2 || ironC==8) && 500-i*10>150 && 500-i*10<480) {
        ore2(x, 500-i*10, "iron");
      } else if ((ironC==3  || ironC==9)&& 500-i*10>150 && 500-i*10<480) {
        ore3(x, 500-i*10, "iron");
      } else if ((ironC==4  || ironC==10)&& 500-i*10>150 && 500-i*10<480) {
        ore4(x, 500-i*10, "iron");
      } else if ((ironC==5  || ironC==11)&& 500-i*10>150 && 500-i*10<480) {
        ore5(x, 500-i*10, "iron");
      } else if ((ironC==6  || ironC==12)&& 500-i*10>150 && 500-i*10<480) {
        ore6(x, 500-i*10, "iron");
      } else if ((ironC==7  || ironC==13)&& 500-i*10>150 && 500-i*10<480) {
        ore7(x, 500-i*10, "iron");
      } else {
        if (map[(x+790)/10][50-i]!=-14935012 && map[(x+790)/10][50-i]!=-1916758 && map[(x+790)/10][50-i]!=-462770 && map[(x+790)/10][50-i]!=-4167854  && map[(x+790)/10][50-i]!=-4194304 && map[(x+790)/10][50-i]!=-15118672  && map[(x+790)/10][50-i]!=-11542059) {
          fill(107, 107, 107);
          rect(x, 500-i*10, 10, 10);
          map[(x+790)/10][50-i]=-9737365;
        }
      }

      if (goldC==1 && 500-i*10>400 && 500-i*10<450) {
        //ore1(x, 500-i*10, "gold");
      } else if (goldC==2 && 500-i*10>400 && 500-i*10<450) {
        ore2(x, 500-i*10, "gold");
      } else if (goldC==3 && 500-i*10>400 && 500-i*10<450) {
        ore3(x, 500-i*10, "gold");
      } else if (goldC==4 && 500-i*10>400 && 500-i*10<450) {
        ore4(x, 500-i*10, "gold");
      } else if (goldC==5 && 500-i*10>400 && 500-i*10<450) {
        ore5(x, 500-i*10, "gold");
      } else if (goldC==6 && 500-i*10>400 && 500-i*10<450) {
        ore6(x, 500-i*10, "gold");
      } else if (goldC==7 && 500-i*10>400 && 500-i*10<450) {
        ore7(x, 500-i*10, "gold");
      } else {
        if (map[(x+790)/10][50-i]!=-14935012 && map[(x+790)/10][50-i]!=-1916758 && map[(x+790)/10][50-i]!=-462770 && map[(x+790)/10][50-i]!=-4167854  && map[(x+790)/10][50-i]!=-4194304 && map[(x+790)/10][50-i]!=-15118672  && map[(x+790)/10][50-i]!=-11542059) {
          fill(107, 107, 107);
          rect(x, 500-i*10, 10, 10);
          map[(x+790)/10][50-i]=-9737365;
        }
      }

      if (copperC==1 && 500-i*10>250 && 500-i*10<300) {
        ore1(x, 500-i*10, "copper");
      } else if (copperC==2 && 500-i*10>250 && 500-i*10<300) {
        ore2(x, 500-i*10, "copper");
      } else if (copperC==3 && 500-i*10>250 && 500-i*10<300) {
        ore3(x, 500-i*10, "copper");
      } else if (copperC==4 && 500-i*10>250 && 500-i*10<300) {
        ore4(x, 500-i*10, "copper");
      } else if (copperC==5 && 500-i*10>250 && 500-i*10<300) {
        ore5(x, 500-i*10, "copper");
      } else if (copperC==6 && 500-i*10>250 && 500-i*10<300) {
        ore6(x, 500-i*10, "copper");
      } else if (copperC==7 && 500-i*10>250 && 500-i*10<300) {
        ore7(x, 500-i*10, "copper");
      } else {
        if (map[(x+790)/10][50-i]!=-14935012 && map[(x+790)/10][50-i]!=-1916758 && map[(x+790)/10][50-i]!=-462770 && map[(x+790)/10][50-i]!=-4167854  && map[(x+790)/10][50-i]!=-4194304 && map[(x+790)/10][50-i]!=-15118672  && map[(x+790)/10][50-i]!=-11542059) {
          fill(107, 107, 107);
          rect(x, 500-i*10, 10, 10);
          map[(x+790)/10][50-i]=-9737365;
        }
      }

      if (redC==1 && 500-i*10>450 && 500-i*10<490) {
        ore1(x, 500-i*10, "redstone");
      } else if (redC==2 && 500-i*10>450 && 500-i*10<490) {
        ore2(x, 500-i*10, "redstone");
      } else if (redC==3 && 500-i*10>450 && 500-i*10<490) {
        ore3(x, 500-i*10, "redstone");
      } else if (redC==4 && 500-i*10>450 && 500-i*10<490) {
        ore4(x, 500-i*10, "redstone");
      } else if (redC==5 && 500-i*10>450 && 500-i*10<490) {
        ore5(x, 500-i*10, "redstone");
      } else if (redC==6 && 500-i*10>450 && 500-i*10<490) {
        ore6(x, 500-i*10, "redstone");
      } else if (redC==7 && 500-i*10>450 && 500-i*10<490) {
        ore7(x, 500-i*10, "redstone");
      } else {
        if (map[(x+790)/10][50-i]!=-14935012 && map[(x+790)/10][50-i]!=-1916758 && map[(x+790)/10][50-i]!=-462770 && map[(x+790)/10][50-i]!=-4167854  && map[(x+790)/10][50-i]!=-4194304 && map[(x+790)/10][50-i]!=-15118672  && map[(x+790)/10][50-i]!=-11542059) {
          fill(107, 107, 107);
          rect(x, 500-i*10, 10, 10);
          map[(x+790)/10][50-i]=-9737365;
        }
      }

      if (lapisC==1 && 500-i*10>400 && 500-i*10<450) {
        ore1(x, 500-i*10, "lapis");
      } else if (lapisC==2 && 500-i*10>400 && 500-i*10<450) {
        ore2(x, 500-i*10, "lapis");
      } else if (lapisC==3 && 500-i*10>500 && 500-i*10<450) {
        ore3(x, 500-i*10, "lapis");
      } else if (lapisC==4 && 500-i*10>500 && 500-i*10<450) {
        ore4(x, 500-i*10, "lapis");
      } else if (lapisC==5 && 500-i*10>400 && 500-i*10<450) {
        ore5(x, 500-i*10, "lapis");
      } else if (lapisC==6 && 500-i*10>400 && 500-i*10<450) {
        ore6(x, 500-i*10, "lapis");
      } else if (lapisC==7 && 500-i*10>400 && 500-i*10<450) {
        ore7(x, 500-i*10, "lapis");
      } else {
        if (map[(x+790)/10][50-i]!=-14935012 && map[(x+790)/10][50-i]!=-1916758 && map[(x+790)/10][50-i]!=-462770 && map[(x+790)/10][50-i]!=-4167854  && map[(x+790)/10][50-i]!=-4194304 && map[(x+790)/10][50-i]!=-15118672  && map[(x+790)/10][50-i]!=-11542059) {
          fill(107, 107, 107);
          rect(x, 500-i*10, 10, 10);
          map[(x+790)/10][50-i]=-9737365;
        }
      }

      if (diamondC==1 && 500-i*10>450 && 500-i*10<490) {
        ore1(x, 500-i*10, "diamond");
      } else if (diamondC==2 && 500-i*10>450 && 500-i*10<490) {
        ore2(x, 500-i*10, "diamond");
      } else if (diamondC==3 && 500-i*10>450 && 500-i*10<490) {
        ore3(x, 500-i*10, "diamond");
      } else if (diamondC==4 && 500-i*10>450 && 500-i*10<490) {
        ore4(x, 500-i*10, "diamond");
      } else if (diamondC==5 && 500-i*10>450 && 500-i*10<490) {
        ore5(x, 500-i*10, "diamond");
      } else if (diamondC==6 && 500-i*10>450 && 500-i*10<490) {
        ore6(x, 500-i*10, "diamond");
      } else if (diamondC==7 && 500-i*10>450 && 500-i*10<490) {
        ore7(x, 500-i*10, "diamond");
      } else {
        if (map[(x+790)/10][50-i]!=-14935012 && map[(x+790)/10][50-i]!=-1916758 && map[(x+790)/10][50-i]!=-462770 && map[(x+790)/10][50-i]!=-4167854  && map[(x+790)/10][50-i]!=-4194304 && map[(x+790)/10][50-i]!=-15118672  && map[(x+790)/10][50-i]!=-11542059) {
          fill(107, 107, 107);
          rect(x, 500-i*10, 10, 10);
          map[(x+790)/10][50-i]=-9737365;
        }
      }
    }
    //dirt
    fill(82, 64, 40);
    rect(x, 500-i*10, 10, 10);
    if (500-i*10<seaLevel*10+30) {
      map[(x+790)/10][50-i]=-11386840;
    } else {
      map[(x+790)/10][50-i]=-2100;
    }
    i++;
    rect(x, 500-i*10, 10, 10);
    if (500-i*10<seaLevel*10+20) {
      map[(x+790)/10][50-i]=-11386840;
    } else {
      map[(x+790)/10][50-i]=-2100;
    }
    i++;
    rect(x, 500-i*10, 10, 10);
    if (500-i*10<seaLevel*10+10) {
      map[(x+790)/10][50-i]=-11386840;
    } else {
      map[(x+790)/10][50-i]=-2100;
    }
    i++;
    //grass
    fill(42, 145, 47);
    rect(x, 500-i*10, 10, 10);
    if (500-i*10<seaLevel*10) {
      map[(x+790)/10][50-i]=-13987537;
    } else {
      map[(x+790)/10][50-i]=-2100;
    }
    
    if(500-i*10<seaLevel*10+30){
      
    }
    
    
    fill(255);
    treeD++; 
    if (treeC==1 && treeD>3 && 500-i*10-10<seaLevel*10 && x<=1550) {
      tree1(x, 500-i*10-10);
      treeD=0;
    }
    if ((treeC==2 || treeC==3) && treeD>3 && 500-i*10-10<seaLevel*10 && x<=1550) {
      tree2(x, 500-i*10-10);
      treeD=0;
    }
    if (treeC==4 && treeD>3 && 500-i*10-10<seaLevel*10 && x<=1550) {
      tree3(x, 500-i*10-10);
      treeD=0;
    }
    while (50-i>seaLevel) {
      fill(-13144136);
      rect(x, 500-i*10, 10, 10);
      map[(x+790)/10][50-i]=-13144136;
      i++;
    }
  }
}
void moveBlock(int block1X, int block1Y, int block2X, int block2Y, int colour) {
  map[block1X][block1Y]=0;
  map[block2X][block2Y]=colour;
}
void ore1(int x, int y, String oreType) {
  if (oreType=="coal") {
    coal(x, y);
    map[(x+790)/10][50-i]=-14935012;
    coal(x+10, y+10);
    map[(x+800)/10][51-i]=-14935012;
    coal(x, y+10);
    map[(x+790)/10][51-i]=-14935012;
    coal(x+10, y);
    map[(x+800)/10][50-i]=-14935012;
    //println(1);
  } else if (oreType=="iron") {
    iron(x, y);
    map[(x+790)/10][50-i]=-1916758;
    iron(x+10, y+10);
    map[(x+800)/10][51-i]=-1916758;
    iron(x, y+10);
    map[(x+790)/10][51-i]=-1916758;
    iron(x+10, y);
    map[(x+800)/10][50-i]=-1916758;
    //println(1);
  } else if (oreType=="gold") {
    gold(x, y);
    map[(x+790)/10][50-i]=-462770;
    gold(x+10, y+10);
    map[(x+800)/10][51-i]=-462770;
    gold(x, y+10);
    map[(x+790)/10][51-i]=-462770;
    gold(x+10, y);
    map[(x+800)/10][50-i]=-462770;
    //println(1);
  } else if (oreType=="copper") {
    copper(x, y);
    map[(x+790)/10][50-i]=-4167854;
    copper(x+10, y+10);
    map[(x+800)/10][51-i]=-4167854;
    copper(x, y+10);
    map[(x+790)/10][51-i]=-4167854;
    copper(x+10, y);
    map[(x+800)/10][50-i]=-4167854;
    //println(1);
  } else if (oreType=="redstone") {
    redstone(x, y);
    map[(x+790)/10][50-i]=-4194304;
    redstone(x+10, y+10);
    map[(x+800)/10][51-i]=-4194304;
    redstone(x, y+10);
    map[(x+790)/10][51-i]=-4194304;
    redstone(x+10, y);
    map[(x+800)/10][50-i]=-4194304;
    //println(1);
  } else if (oreType=="lapis") {
    lapis(x, y);
    map[(x+790)/10][50-i]=-15118672;
    lapis(x+10, y+10);
    map[(x+800)/10][51-i]=-15118672;
    lapis(x, y+10);
    map[(x+790)/10][51-i]=-15118672;
    lapis(x+10, y);
    map[(x+800)/10][50-i]=-15118672;
    //println(1);
  } else if (oreType=="diamond") {
    diamond(x, y);
    map[(x+790)/10][50-i]=-11542059;
    diamond(x+10, y+10);
    map[(x+800)/10][51-i]=-11542059;
    diamond(x, y+10);
    map[(x+790)/10][51-i]=-11542059;
    diamond(x+10, y);
    map[(x+800)/10][50-i]=-11542059;
    //println(1);
  }
}

void ore2(int x, int y, String oreType) {
  if (oreType=="coal") {
    coal(x, y);
    map[(x+790)/10][50-i]=-14935012;
    coal(x, y+10);
    map[(x+790)/10][51-i]=-14935012;
    coal(x+10, y);
    map[(x+800)/10][50-i]=-14935012;
    //println(2);
  } else if (oreType=="iron") {
    iron(x, y);
    map[(x+790)/10][50-i]=-1916758;
    iron(x, y+10);
    map[(x+790)/10][51-i]=-1916758;
    iron(x+10, y);
    map[(x+800)/10][50-i]=-1916758;
    //println(2);
  } else if (oreType=="gold") {
    gold(x, y);
    map[(x+790)/10][50-i]=-462770;
    gold(x, y+10);
    map[(x+790)/10][51-i]=-462770;
    gold(x+10, y);
    map[(x+800)/10][50-i]=-462770;
    //println(2);
  } else if (oreType=="copper") {
    copper(x, y);
    map[(x+790)/10][50-i]=-4167854;
    copper(x, y+10);
    map[(x+790)/10][51-i]=-4167854;
    copper(x+10, y);
    map[(x+800)/10][50-i]=-4167854;
    //println(2);
  } else if (oreType=="redstone") {
    redstone(x, y);
    map[(x+790)/10][50-i]=-4194304;
    redstone(x, y+10);
    map[(x+790)/10][51-i]=-4194304;
    redstone(x+10, y);
    map[(x+800)/10][50-i]=-4194304;
    //println(2);
  } else if (oreType=="lapis") {
    lapis(x, y);
    map[(x+790)/10][50-i]=-15118672;
    lapis(x, y+10);
    map[(x+790)/10][51-i]=-15118672;
    lapis(x+10, y);
    map[(x+800)/10][50-i]=-15118672;
    //println(2);
  } else if (oreType=="diamond") {
    diamond(x, y);
    map[(x+790)/10][50-i]=-11542059;
    diamond(x, y+10);
    map[(x+790)/10][51-i]=-11542059;
    diamond(x+10, y);
    map[(x+800)/10][50-i]=-11542059;
    //println(2);
  }
}

void ore3(int x, int y, String oreType) {
  if (oreType=="coal") {
    fill(107, 107, 107);
    rect(x, 500-i*10, 10, 10);
    map[(x+790)/10][50-i]=-9737365;
    coal(x+10, y+10);
    map[(x+800)/10][51-i]=-14935012;
    coal(x, y+10);
    map[(x+790)/10][51-i]=-14935012;
    coal(x+10, y);
    map[(x+800)/10][50-i]=-14935012;
    //println(3);
  } else if (oreType=="iron") {
    fill(107, 107, 107);
    rect(x, 500-i*10, 10, 10);
    map[(x+790)/10][50-i]=-9737365;
    iron(x+10, y+10);
    map[(x+800)/10][51-i]=-1916758;
    iron(x, y+10);
    map[(x+790)/10][51-i]=-1916758;
    iron(x+10, y);
    map[(x+800)/10][50-i]=-1916758;
    //println(3);
  } else if (oreType=="gold") {
    fill(107, 107, 107);
    rect(x, 500-i*10, 10, 10);
    map[(x+790)/10][50-i]=-9737365;
    gold(x+10, y+10);
    map[(x+800)/10][51-i]=-462770;
    gold(x, y+10);
    map[(x+790)/10][51-i]=-462770;
    gold(x+10, y);
    map[(x+800)/10][50-i]=-462770;
    //println(3);
  } else if (oreType=="copper") {
    fill(107, 107, 107);
    rect(x, 500-i*10, 10, 10);
    map[(x+790)/10][50-i]=-9737365;
    copper(x+10, y+10);
    map[(x+800)/10][51-i]=-4167854;
    copper(x, y+10);
    map[(x+790)/10][51-i]=-4167854;
    copper(x+10, y);
    map[(x+800)/10][50-i]=-4167854;
    //println(3);
  } else if (oreType=="redstone") {
    fill(107, 107, 107);
    rect(x, 500-i*10, 10, 10);
    map[(x+790)/10][50-i]=-9737365;
    redstone(x+10, y+10);
    map[(x+800)/10][51-i]=-4194304;
    redstone(x, y+10);
    map[(x+790)/10][51-i]=-4194304;
    redstone(x+10, y);
    map[(x+800)/10][50-i]=-4194304;
    //println(3);
  } else if (oreType=="lapis") {
    fill(107, 107, 107);
    rect(x, 500-i*10, 10, 10);
    map[(x+790)/10][50-i]=-9737365;
    lapis(x+10, y+10);
    map[(x+800)/10][51-i]=-15118672;
    lapis(x, y+10);
    map[(x+790)/10][51-i]=-15118672;
    lapis(x+10, y);
    map[(x+800)/10][50-i]=-15118672;
    //println(3);
  } else if (oreType=="diamond") {
    fill(107, 107, 107);
    rect(x, 500-i*10, 10, 10);
    map[(x+790)/10][50-i]=-9737365;
    diamond(x+10, y+10);
    map[(x+800)/10][51-i]=-11542059;
    diamond(x, y+10);
    map[(x+790)/10][51-i]=-11542059;
    diamond(x+10, y);
    map[(x+800)/10][50-i]=-11542059;
    //println(3);
  }
}

void ore4(int x, int y, String oreType) {
  if (oreType=="coal") {
    coal(x, y);
    map[(x+790)/10][50-i]=-14935012;
    coal(x+10, y);
    map[(x+800)/10][50-i]=-14935012;
    //println(4);
  } else if (oreType=="iron") {
    iron(x, y);
    map[(x+790)/10][50-i]=-1916758;
    iron(x+10, y);
    map[(x+800)/10][50-i]=-1916758;
    //println(4);
  } else if (oreType=="gold") {
    gold(x, y);
    map[(x+790)/10][50-i]=-462770;
    gold(x+10, y);
    map[(x+800)/10][50-i]=-462770;
    //println(4);
  } else if (oreType=="copper") {
    copper(x, y);
    map[(x+790)/10][50-i]=-4167854;
    copper(x+10, y);
    map[(x+800)/10][50-i]=-4167854;
    //println(4);
  } else if (oreType=="redstone") {
    redstone(x, y);
    map[(x+790)/10][50-i]=-4194304;
    redstone(x+10, y);
    map[(x+800)/10][50-i]=-4194304;
    //println(4);
  } else if (oreType=="lapis") {
    lapis(x, y);
    map[(x+790)/10][50-i]=-15118672;
    lapis(x+10, y);
    map[(x+800)/10][50-i]=-15118672;
    //println(4);
  } else if (oreType=="diamond") {
    diamond(x, y);
    map[(x+790)/10][50-i]=-11542059;
    diamond(x+10, y);
    map[(x+800)/10][50-i]=-11542059;
    //println(4);
  }
}

void ore5(int x, int y, String oreType) {
  if (oreType=="coal") {
    coal(x, y);
    map[(x+790)/10][50-i]=-14935012;
    coal(x, y+10);
    map[(x+790)/10][51-i]=-14935012;
    //println(5);
  } else if (oreType=="iron") {
    iron(x, y);
    map[(x+790)/10][50-i]=-1916758;
    iron(x, y+10);
    map[(x+790)/10][51-i]=-1916758;
    //println(5);
  } else if (oreType=="gold") {
    gold(x, y);
    map[(x+790)/10][50-i]=-462770;
    gold(x, y+10);
    map[(x+790)/10][51-i]=-462770;
    //println(5);
  } else if (oreType=="copper") {
    copper(x, y);
    map[(x+790)/10][50-i]=-4167854;
    copper(x, y+10);
    map[(x+790)/10][51-i]=-4167854;
    //println(5);
  } else if (oreType=="redstone") {
    redstone(x, y);
    map[(x+790)/10][50-i]=-4194304;
    redstone(x, y+10);
    map[(x+790)/10][51-i]=-4194304;
    //println(5);
  } else if (oreType=="lapis") {
    lapis(x, y);
    map[(x+790)/10][50-i]=-15118672;
    lapis(x, y+10);
    map[(x+790)/10][51-i]=-15118672;
    //println(5);
  } else if (oreType=="diamond") {
    diamond(x, y);
    map[(x+790)/10][50-i]=-11542059;
    diamond(x, y+10);
    map[(x+790)/10][51-i]=-11542059;
    //println(5);
  }
}

void ore6(int x, int y, String oreType) {
  if (oreType=="coal") {
    coal(x, y);
    map[(x+790)/10][50-i]=-14935012;
    //println(6);
  } else if (oreType=="iron") {
    iron(x, y);
    map[(x+790)/10][50-i]=-1916758;
    //println(6);
  } else if (oreType=="gold") {
    gold(x, y);
    map[(x+790)/10][50-i]=-462770;
    //println(6);
  } else if (oreType=="copper") {
    copper(x, y);
    map[(x+790)/10][50-i]=-4167854;
    //println(6);
  } else if (oreType=="redstone") {
    redstone(x, y);
    map[(x+790)/10][50-i]=-4194304;
    //println(6);
  } else if (oreType=="lapis") {
    lapis(x, y);
    map[(x+790)/10][50-i]=-15118672;
    //println(6);
  } else if (oreType=="diamond") {
    diamond(x, y);
    map[(x+790)/10][50-i]=-11542059;
    //println(6);
  }
}

void ore7(int x, int y, String oreType) {
  if (oreType=="coal") {
    coal(x, y);
    map[(x+790)/10][50-i]=-14935012;
    coal(x+10, y+10);
    map[(x+800)/10][51-i]=-14935012;
    coal(x+10, y);
    map[(x+800)/10][50-i]=-14935012;
    coal(x+20, y+10);
    map[(x+820)/10][51-i]=-14935012;
    //println(7);
  } else if (oreType=="iron") {
    iron(x, y);
    map[(x+790)/10][50-i]=-1916758;
    iron(x+10, y+10);
    map[(x+800)/10][51-i]=-1916758;
    iron(x+10, y);
    map[(x+800)/10][50-i]=-1916758;
    iron(x+20, y+10);
    map[(x+820)/10][51-i]=-1916758;
    //println(7);
  } else if (oreType=="gold") {
    gold(x, y);
    map[(x+790)/10][50-i]=-462770;
    gold(x+10, y+10);
    map[(x+800)/10][51-i]=-462770;
    gold(x+10, y);
    map[(x+800)/10][50-i]=-462770;
    gold(x+20, y+10);
    map[(x+820)/10][51-i]=-462770;
    //println(7);
  } else if (oreType=="copper") {
    copper(x, y);
    map[(x+790)/10][50-i]=-4167854;
    copper(x+10, y+10);
    map[(x+800)/10][51-i]=-4167854;
    copper(x+10, y);
    map[(x+800)/10][50-i]=-4167854;
    copper(x+20, y+10);
    map[(x+820)/10][51-i]=-4167854;
    //println(7);
  } else if (oreType=="redstone") {
    redstone(x, y);
    map[(x+790)/10][50-i]=-4194304;
    redstone(x+10, y+10);
    map[(x+800)/10][51-i]=-4194304;
    redstone(x+10, y);
    map[(x+800)/10][50-i]=-4194304;
    redstone(x+20, y+10);
    map[(x+820)/10][51-i]=-4194304;
    //println(7);
  } else if (oreType=="lapis") {
    lapis(x, y);
    map[(x+790)/10][50-i]=-15118672;
    lapis(x+10, y+10);
    map[(x+800)/10][51-i]=-15118672;
    lapis(x+10, y);
    map[(x+800)/10][50-i]=-15118672;
    lapis(x+20, y+10);
    map[(x+820)/10][51-i]=-15118672;
    //println(7);
  } else if (oreType=="diamond") {
    diamond(x, y);
    map[(x+790)/10][50-i]=-11542059;
    diamond(x+10, y+10);
    map[(x+800)/10][51-i]=-11542059;
    diamond(x+10, y);
    map[(x+800)/10][50-i]=-11542059;
    diamond(x+20, y+10);
    map[(x+820)/10][51-i]=-11542059;
    //println(7);
  }
}
void sky() {
  if (second()%(20*time)>=10*time) {
    background(-6427649);
    fill(230, 203, 83);
    rect(70*((second()/time)%10), 50*abs(5-((second()/time)%10))+70, 80, 80); //sun position based on the time
  } else {
    background(0);
    fill(255, 247, 212);
    rect(70*((second()/time)%10), 50*abs(5-((second()/time)%10))+70, 80, 80);

    //stars
    fill(250, 248, 197);

    rect(30, 140, 5, 5);
    rect(70, 90, 5, 5);
    rect(100, 180, 5, 5);
    rect(200, 60, 5, 5);
    rect(150, 110, 5, 5);
    rect(250, 200, 5, 5);
    rect(280, 140, 5, 5);
    rect(280, 140, 5, 5);
    rect(350, 120, 5, 5);
    rect(300, 80, 5, 5);
    rect(130, 270, 5, 5);
    rect(370, 250, 5, 5);
    rect(390, 50, 5, 5);
    rect(440, 130, 5, 5);
    rect(400, 180, 5, 5);
    rect(480, 100, 5, 5);
    rect(500, 200, 5, 5);
    rect(550, 150, 5, 5);
    rect(520, 60, 5, 5);
    rect(520, 260, 5, 5);
    rect(600, 180, 5, 5);
    rect(620, 80, 5, 5);
    rect(660, 270, 5, 5);
    rect(700, 230, 5, 5);
    rect(660, 130, 5, 5);
    rect(740, 110, 5, 5);
  }
  //clouds

  //println(a);
  if (a>=600) {
    a=-700;
    cloudS=int(random(1, 5));
    //println("speed "+ cloudS);
  }

  if (second()%(20*time)>=10*time) {
    fill(255);
  } else {
    fill(-10197916);
  }

  rect(350+a, 100, 10, 10);
  rect(360+a, 100, 10, 10);
  rect(370+a, 100, 10, 10);
  rect(380+a, 100, 10, 10);
  rect(390+a, 100, 10, 10);
  rect(400+a, 100, 10, 10);
  rect(410+a, 100, 10, 10);
  rect(420+a, 100, 10, 10);
  rect(430+a, 100, 10, 10);
  rect(440+a, 100, 10, 10);
  rect(450+a, 100, 10, 10);
  rect(460+a, 100, 10, 10);
  rect(470+a, 100, 10, 10);
  rect(480+a, 100, 10, 10);
  rect(370+a, 90, 10, 10);
  rect(380+a, 90, 10, 10);
  rect(390+a, 90, 10, 10);
  rect(400+a, 90, 10, 10);
  rect(410+a, 90, 10, 10);
  rect(420+a, 90, 10, 10);

  rect(390+a, 130, 10, 10);
  rect(500+a, 130, 10, 10);
  rect(410+a, 130, 10, 10);
  rect(420+a, 130, 10, 10);
  rect(430+a, 130, 10, 10);
  rect(440+a, 130, 10, 10);
  rect(450+a, 130, 10, 10);
  rect(460+a, 130, 10, 10);
  rect(470+a, 130, 10, 10);
  rect(480+a, 130, 10, 10);
  rect(490+a, 130, 10, 10);
  rect(400+a, 130, 10, 10);
  rect(510+a, 130, 10, 10);
  rect(520+a, 130, 10, 10);
  rect(410+a, 120, 10, 10);
  rect(420+a, 120, 10, 10);
  rect(430+a, 120, 10, 10);
  rect(440+a, 120, 10, 10);
  rect(450+a, 120, 10, 10);
  rect(460+a, 120, 10, 10);
}
void tree1(int x, int y) {
  fill(112, 73, 36);
  rect(x, y, 10, 10);
  if (x+790<2400 || y/10>=0) {
    map[((x+790-(x+790)%10))/10][y/10]=-9418460;
  }
  rect(x, y-10, 10, 10);
  if (x+790<2400 || (y-10)/10>=0) {
    map[((x+790-(x+790)%10))/10][(y-10)/10]=-9418460;
  }
  rect(x, y-20, 10, 10);
  if (x+790<2400 || (y-20)/10>=0) {
    map[((x+790-(x+790)%10))/10][(y-20)/10]=-9418460;
  }
  rect(x, y-30, 10, 10);
  if (x+790<2400 || (y-30)/10>=0) {
    map[((x+790-(x+790)%10))/10][(y-30)/10]=-9418460;
  }

  fill(46, 120, 68);
  rect(x, y-40, 10, 10);
  if (x+790<2400 || (y-40)/10>=0) {
    map[((x+790-(x+790)%10))/10][(y-40)/10]=-100;/////////
  }

  rect(x+10, y-40, 10, 10);
  if (x+800<2400 || (y-40)/10>=0) {
    map[((x+800-(x+800)%10))/10][(y-40)/10]=-13731772;
  }
  rect(x-10, y-40, 10, 10);
  if (x+780<2400 || (y-40)/10>=0) {
    map[((x+780-(x+780)%10))/10][(y-40)/10]=-13731772;
  }
  rect(x, y-50, 10, 10);
  if (x+790<2400 || (y-50)/10>=0) {
    map[((x+790-(x+790)%10))/10][(y-50)/10]=-100;///////////
  }
  rect(x, y-60, 10, 10);
  if (x+790<2400 || (y-60)/10>=0) {
    map[((x+790-(x+790)%10))/10][(y-60)/10]=-13731772;
  }
  rect(x-10, y-50, 10, 10);
  if (x+780<2400 || (y-50)/10>=0) {
    map[((x+780-(x+780)%10))/10][(y-50)/10]=-13731772;
  }
  rect(x+10, y-50, 10, 10);
  if (x+800<2400 || (y-50)/10>=0) {
    map[((x+800-(x+800)%10))/10][(y-50)/10]=-13731772;
  }
  fill(255);
}

void tree2(int x, int y) {
  fill(112, 73, 36);
  rect(x, y, 10, 10);
  if (x+790<2400 || y/10>=0) {
    map[((x+790-(x+790)%10))/10][y/10]=-9418460;
  }
  rect(x, y-10, 10, 10);
  if (x+790<2400 || (y-10)/10>=0) {
    map[((x+790-(x+790)%10))/10][(y-10)/10]=-9418460;
  }

  fill(46, 120, 68);
  rect(x, y-20, 10, 10);
  if (x+790<2400 || (y-20)/10>=0) {
    map[((x+790-(x+790)%10))/10][(y-20)/10]=-100;
  }
  rect(x, y-30, 10, 10);
  if (x+790<2400 || (y-30)/10>=0) {
    map[((x+790-(x+790)%10))/10][(y-30)/10]=-100;
  }
  rect(x+10, y-20, 10, 10);
  if (x+800<2400 || (y-20)/10>=0) {
    map[((x+800-(x+800)%10))/10][(y-20)/10]=-13731772;
  }
  rect(x-10, y-20, 10, 10);
  if (x+780<2400 || (y-20)/10>=0) {
    map[((x+780-(x+800)%10))/10][(y-20)/10]=-13731772;
  }
  rect(x-10, y-30, 10, 10);
  if (x+780<2400 || (y-30)/10>=0) {
    map[((x+780-(x+780)%10))/10][(y-30)/10]=-13731772;
  }
  rect(x+10, y-30, 10, 10);
  if (x+800<2400 || (y-30)/10>=0) {
    map[((x+800-(x+800)%10))/10][(y-30)/10]=-13731772;
  }
  rect(x, y-40, 10, 10);
  if (x+790<2400 || (y-40)/10>=0) {
    map[((x+790-(x+790)%10))/10][(y-40)/10]=-13731772;
  }
  fill(255);
}

void tree3(int x, int y) {
  fill(112, 73, 36);
  rect(x, y, 10, 10);
  if (x+790<2400 || y/10>=0) {
    map[((x+790-(x+790)%10))/10][y/10]=-9418460;
  }
  fill(46, 120, 68);
  rect(x, y-10, 10, 10);
  if (x+790<2400 || (y-10)/10>=0) {
    map[((x+790-(x+790)%10))/10][(y-10)/10]=-100;
  }
  rect(x, y-20, 10, 10);
  if (x+790<2400 || (y-20)/10>=0) {
    map[((x+790-(x+790)%10))/10][(y-20)/10]=-100;
  }
  rect(x+10, y-10, 10, 10);
  if (x+800<2400 || (y-10)/10>=0) {
    map[((x+800-(x+800)%10))/10][(y-10)/10]=-13731772;
  }
  rect(x-10, y-10, 10, 10);
  if (x+780<2400 || (y-10)/10>=0) {
    map[((x+780-(x+780)%10))/10][(y-10)/10]=-13731772;
  }
  rect(x-10, y-20, 10, 10);
  if (x+780<2400 || (y-20)/10>=0) {
    map[((x+780-(x+790)%10))/10][(y-20)/10]=-13731772;
  }
  rect(x+10, y-20, 10, 10);
  if (x+800<2400 || (y-20)/10>=0) {
    map[((x+800-(x+790)%10))/10][(y-20)/10]=-13731772;
  }
  rect(x, y-30, 10, 10);
  if (x+790<2400 || (y-30)/10>=0) {
    map[((x+790-(x+790)%10))/10][(y-30)/10]=-13731772;
  }
  fill(255);
}
void flowUpdate() {
  for (int i=238; i>1; i--) {
    for (int j=48; j>0; j--) {
      /*
      if (map[i][j]==0 || map[i][j]==-1314413602 || map[i][j]==-1314413603) {
       if (map[i+1][j]==-13144136 && map[i-1][j]==-13144136) {
       map[i][j]=-13144136;
       } else if (map[i+1][j]!=-13144136 && map[i-1][j]==-13144136) {
       map[i][j]=-1314413602;
       } else if (map[i+1][j]==-13144136 && map[i-1][j]!=-13144136) {
       map[i][j]=-1314413603;
       } else if (map[i][j-1]==-13144136 || map[i][j-1]==-1314413602 || map[i][j-1]==-1314413603 || map[i][j-1]==-1314413604) {
       map[i][j]=-1314413604;
       }
       */

      if (map[i][j]==-1314413602) {
        if (map[i][j+1]==0 || map[i][j+1]==-1314413603 || map[i][j+1]==-1314413602) {
          moveBlock(i, j, i, j+1, -1314413604);
        } 
        map[i][j]=0;
      }

      if (map[i][j]==-1314413603) {
        if (map[i][j+1]==0 || map[i][j+1]==-1314413603 || map[i][j+1]==-1314413602) {
          moveBlock(i, j, i, j+1, -1314413604);
        }
        map[i][j]=0;
      }

      if (map[i][j]==-1314413604) {
        if (map[i][j+1]==0 || map[i][j+1]==-1314413603 || map[i][j+1]==-1314413602) {
          moveBlock(i, j, i, j+1, -1314413604);
        }

        if (blockSolid(i, j+1)) {

          if (blockFill(i+1, j) && blockSolid(i-1, j)==false) {
            moveBlock(i, j, i-1, j, -1314413603);
          }
          if (blockFill(i-1, j) && blockSolid(i+1, j)==false) {
            moveBlock(i, j, i+1, j, -1314413602);
          }
        }  
        map[i][j]=0;
      }
    }
  }
  //println("updated");
}

void sourceUpdate() {
  for (int i=238; i>1; i--) {
    for (int j=48; j>1; j--) {
      if (map[i][j]==-13144136) {
        if (map[i+1][j]==0) {
          //map[i+1][j]=-1314413602;
          moveBlock(i, j, i+1, j, -1314413602);
          map[i][j]=-13144136;
          //println("ur mom");
        }
        if (map[i-1][j]==0) {
          //map[i-1][j]=-1314413603;
          moveBlock(i, j, i-1, j, -1314413603);
          map[i][j]=-13144136;
        }
        if (map[i][j+1]==0) {
          moveBlock(i, j, i, j+1, -1314413604);
          map[i][j]=-13144136;
        }
        if (map[i+2][j]==-13144136 && (map[i+1][j]==0 || map[i+1][j]==-13144136 || map[i+1][j]==-1314413602 || map[i+1][j]==-1314413603 || map[i+1][j]==-1314413604)) {
          map[i+1][j]=-13144136;  
        }
        if (map[i-2][j]==-13144136 && (map[i-1][j]==0 || map[i-1][j]==-13144136 || map[i-1][j]==-1314413602 || map[i-1][j]==-1314413603 || map[i-1][j]==-1314413604)) {
          map[i-1][j]=-13144136;
        }
      }
    }
  }
}

void blockUpdate() {
  for (int i=238; i>1; i--) {
    for (int j=48; j>1; j--) {
      if (map[i][j]==-2100 && (map[i][j+1]==0 || map[i][j+1]==-13144136 || map[i][j+1]==-1314413602 || map[i][j+1]==-1314413603 || map[i][j+1]==-1314413604)) {
        moveBlock(i, j, i, j+1, -2100);
      }
    }
  }
}
