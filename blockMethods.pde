void grassBlock(int x, int y) {
  fill(-11386840);
  rect(x+2, y-3, 1, 1);
  rect(x-5, y-2, 10, 7);
  if (biomeList[n]==1 || biomeList[n]==2) {
    fill(#648126);
    rect(x-5, y-5, 10, 3);
    rect(x-4, y-2, 2, 1);
    rect(x-4, y-1, 1, 1);
    rect(x-1, y-2, 2, 1);
    rect(x+3, y-2, 1, 1);
  } else if (biomeList[n]==4) {
    fill(#3E642F);
    rect(x-5, y-5, 10, 3);
    rect(x-4, y-2, 2, 1);
    rect(x-4, y-1, 1, 1);
    rect(x-1, y-2, 2, 1);
    rect(x+3, y-2, 1, 1);
  } else {
    fill(-13987537);
    rect(x-5, y-5, 10, 3);
    rect(x-4, y-2, 2, 1);
    rect(x-4, y-1, 1, 1);
    rect(x-1, y-2, 2, 1);
    rect(x+3, y-2, 1, 1);
  }
  fill(-11386840);
  rect(x+2, y-3, 1, 1);
}

void grass(int x, int y){
  if (biomeList[n]==1 || biomeList[n]==2) {
    fill(#648126);
  } else if (biomeList[n]==4) {
    fill(#3E642F);
  } else {
    fill(-13987537);
  }
  rect(x-5,y+4,10,1);
  rect(x-5,y-5,1,1);
  rect(x-3,y-5,1,1);
  rect(x-4,y-4,1,3);
  rect(x-4,y+1,1,3);
  rect(x-5,y-1,1,2);
  rect(x-3,y-1,1,2);
  rect(x-2,y-4,1,3);
  rect(x-2,y+2,1,2);
  rect(x-1,y,1,2);
  rect(x,y-4,1,4);
  rect(x,y+3,1,1);
  rect(x+1,y-1,1,4);
  rect(x+1,y-5,1,1);
  rect(x+2,y+3,1,1);
  rect(x+2,y-4,1,1);
  rect(x+3,y-4,1,5);
  rect(x+3,y+2,1,1);
  rect(x+4,y+1,1,2);
  rect(x+4,y-5,1,1);
}

void oakWood(int x, int y) {
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
void acaciaWood(int x, int y) {
  fill(100);
  rect(x-5, y-5, 10, 10);
  fill(125);
  rect(x-4, y-5, 1, 2);
  rect(x-4, y, 1, 5);
  rect(x-2, y-5, 1, 6);
  rect(x, y+1, 1, 4);
  rect(x+1, y-5, 1, 5);
  rect(x+2, y-1, 1, 6);
  rect(x+3, y-5, 1, 3);
}

void spruceWood(int x, int y) {
  fill(#361A0D);
  rect(x-5, y-5, 10, 10);
  fill(#221006);
  rect(x-4, y-5, 1, 2);
  rect(x-4, y, 1, 5);
  rect(x-2, y-5, 1, 6);
  rect(x, y+1, 1, 4);
  rect(x+1, y-5, 1, 5);
  rect(x+2, y-1, 1, 6);
  rect(x+3, y-5, 1, 3);
}

void oakLeaf(int x, int y) {
  if (biomeList[n]==1 || biomeList[n]==2) {
    fill(#566938);
  } else if(biomeList[n]==4){
    fill(#305A2E);
  }else {
    fill(-13731772);
  }
  rect(x-5, y-5, 1, 1);
  rect(x-3, y-5, 3, 1);
  rect(x-5, y-3, 1, 3);
  rect(x-4, y-2, 2, 3);
  rect(x-2, y-3, 2, 2);
  rect(x, y-3, 5, 1);
  rect(x+1, y-5, 2, 2);
  rect(x+1, y-2, 1, 6);
  rect(x, y-1, 4, 1);
  rect(x-4, y-4, 3, 1);
  rect(x+3, y-4, 1, 1);
  rect(x+4, y-2, 1, 1);
  rect(x-2, y, 2, 2);
  rect(x-5, y+1, 1, 3);
  rect(x-4, y+2, 1, 3);
  rect(x-3, y+4, 1, 1);
  rect(x-3, y+3, 7, 1);
  rect(x-2, y+2, 1, 1);
  rect(x, y+2, 5, 1);
  rect(x+1, y, 4, 1);
  rect(x+3, y+1, 1, 1);
  rect(x+4, y+4, 1, 1);
  rect(x+2, y+4, 1, 1);
  rect(x-1, y+4, 2, 1);
}

void acaciaLeaf(int x, int y) {
  fill(#566938);
  rect(x-5, y-5, 1, 2);
  rect(x-4, y-4, 1, 1);
  rect(x-3, y-5, 3, 1);
  rect(x-5, y-2, 2, 2);
  rect(x-5, y, 1, 1);
  rect(x-3, y-3, 3, 1);
  rect(x-2, y-2, 3, 2);
  rect(x+1, y-1, 1, 1);
  rect(x-1, y, 1, 1);
  rect(x+1, y-5, 1, 3);
  rect(x, y-4, 3, 1);
  rect(x+2, y-3, 2, 1);
  rect(x+2, y-2, 1, 1);
  rect(x+3, y-5, 2, 1);
  rect(x+4, y-4, 1, 1);
  rect(x+4, y-2, 1, 5);
  rect(x+3, y-1, 1, 3);
  rect(x+2, y, 1, 1);
  rect(x-3, y, 1, 4);
  rect(x-4, y+1, 1, 2);
  rect(x-2, y+1, 1, 3);
  rect(x-1, y+2, 4, 1);
  rect(x, y+1, 2, 3);
  rect(x-5, y+3, 1, 2);
  rect(x-4, y+4, 1, 1);
  rect(x-1, y+4, 2, 1);
  rect(x+2, y+3, 1, 2);
  rect(x+3, y+3, 1, 1);
  rect(x+4, y+4, 1, 1);
}

void spruceLeaf(int x, int y) {
  fill(#305A2E);
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

void oakLeafWood(int x, int y) {
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
  if (biomeList[n]==1 || biomeList[n]==2) {
    fill(#566938);
  } else if(biomeList[n]==4){
    fill(#305A2E);
  }else {
    fill(-13731772);
  }
  rect(x-5, y-5, 1, 1);
  rect(x-3, y-5, 3, 1);
  rect(x-5, y-3, 1, 3);
  rect(x-4, y-2, 2, 3);
  rect(x-2, y-3, 2, 2);
  rect(x, y-3, 5, 1);
  rect(x+1, y-5, 2, 2);
  rect(x+1, y-2, 1, 6);
  rect(x, y-1, 4, 1);
  rect(x-4, y-4, 3, 1);
  rect(x+3, y-4, 1, 1);
  rect(x+4, y-2, 1, 1);
  rect(x-2, y, 2, 2);
  rect(x-5, y+1, 1, 3);
  rect(x-4, y+2, 1, 3);
  rect(x-3, y+4, 1, 1);
  rect(x-3, y+3, 7, 1);
  rect(x-2, y+2, 1, 1);
  rect(x, y+2, 5, 1);
  rect(x+1, y, 4, 1);
  rect(x+3, y+1, 1, 1);
  rect(x+4, y+4, 1, 1);
  rect(x+2, y+4, 1, 1);
  rect(x-1, y+4, 2, 1);
}

void acaciaLeafWood(int x, int y) {
  fill(100);
  rect(x-5, y-5, 10, 10);
  fill(125);
  rect(x-4, y-5, 1, 2);
  rect(x-4, y, 1, 5);
  rect(x-2, y-5, 1, 6);
  rect(x, y+1, 1, 4);
  rect(x+1, y-5, 1, 5);
  rect(x+2, y-1, 1, 6);
  rect(x+3, y-5, 1, 3);
  fill(#566938);
  rect(x-5, y-5, 1, 2);
  rect(x-4, y-4, 1, 1);
  rect(x-3, y-5, 3, 1);
  rect(x-5, y-2, 2, 2);
  rect(x-5, y, 1, 1);
  rect(x-3, y-3, 3, 1);
  rect(x-2, y-2, 3, 2);
  rect(x+1, y-1, 1, 1);
  rect(x-1, y, 1, 1);
  rect(x+1, y-5, 1, 3);
  rect(x, y-4, 3, 1);
  rect(x+2, y-3, 2, 1);
  rect(x+2, y-2, 1, 1);
  rect(x+3, y-5, 2, 1);
  rect(x+4, y-4, 1, 1);
  rect(x+4, y-2, 1, 5);
  rect(x+3, y-1, 1, 3);
  rect(x+2, y, 1, 1);
  rect(x-3, y, 1, 4);
  rect(x-4, y+1, 1, 2);
  rect(x-2, y+1, 1, 3);
  rect(x-1, y+2, 4, 1);
  rect(x, y+1, 2, 3);
  rect(x-5, y+3, 1, 2);
  rect(x-4, y+4, 1, 1);
  rect(x-1, y+4, 2, 1);
  rect(x+2, y+3, 1, 2);
  rect(x+3, y+3, 1, 1);
  rect(x+4, y+4, 1, 1);
}

void spruceLeafWood(int x, int y) {
  fill(#361A0D);
  rect(x-5, y-5, 10, 10);
  fill(#240F08);
  rect(x-4, y-5, 1, 2);
  rect(x-4, y, 1, 5);
  rect(x-2, y-5, 1, 6);
  rect(x, y+1, 1, 4);
  rect(x+1, y-5, 1, 5);
  rect(x+2, y-1, 1, 6);
  rect(x+3, y-5, 1, 3);
  fill(#305A2E);
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

void cactus(int x, int y) {
  fill(#CAAA91);
  rect(x-5, y-4, 1, 1);
  rect(x-5, y-2, 1, 1);
  rect(x-5, y, 1, 1);
  rect(x-5, y+2, 1, 1);
  rect(x+4, y-4, 1, 1);
  rect(x+4, y-2, 1, 1);
  rect(x+4, y, 1, 1);
  rect(x+4, y+2, 1, 1);
  fill(#4BB17D);
  rect(x-4, y-5, 8, 10);
  fill(#71C196);
  rect(x-3, y-5, 1, 10);
  rect(x-1, y-5, 1, 10);
  rect(x, y-5, 1, 10);
  rect(x+2, y-5, 1, 10);
  fill(#EBE9DA);
  rect(x-3, y-4, 1, 1);
  rect(x-1, y-1, 1, 1);
  rect(x-2, y+3, 1, 1);
  rect(x+1, y+2, 1, 1);
  rect(x+2, y-3, 1, 1);
}

void deadBush(int x, int y) {
  fill(#936140);
  rect(x-3, y-4, 1, 1);
  rect(x-2, y-3, 1, 1);
  rect(x, y-3, 1, 4);
  rect(x+1, y-4, 1, 1);
  rect(x+2, y-5, 1, 1);
  rect(x-1, y-1, 1, 6);
  rect(x-2, y+1, 1, 1);
  rect(x-4, y, 2, 1);
  rect(x+2, y-1, 1, 1);
  rect(x+4, y-2, 1, 1);
  rect(x+1, y+3, 1, 1);
  rect(x+2, y+2, 2, 1);
  fill(#AC7C55);
  rect(x-3, y-3, 1, 1);
  rect(x-2, y-2, 1, 1);
  rect(x-3, y+1, 1, 1);
  rect(x-2, y+2, 1, 1);
  rect(x+1, y-3, 1, 1);
  rect(x+2, y-4, 1, 1);
  rect(x+1, y, 1, 1);
  rect(x+3, y-1, 1, 1);
  rect(x, y+1, 1, 4);
  //rect(x+2,y+3,1,1);
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
  if (map[i][j]==-13987537 || map[i][j]==-11386840 || map[i][j]==-9737365 || map[i][j]==-9418460 || map[i][j]==-13731772 || map[i][j]==-14935012 || map[i][j]==-1916758 || map[i][j]==-462770 || map[i][j]==-4167854 || map[i][j]==-15118672 || map[i][j]==-4194304 || map[i][j]==-11542059 || map[i][j]==-2100 || map[i][j]==-1000 || map[i][j]==-1001 || map[i][j]==-1002 || map[i][j]==-1003 || map[i][j]==-1004 || map[i][j]==-1005 || map[i][j]==-1006 || map[i][j]==-1007) {
    out=true;
  }
  return out;
}

boolean blockFill(int i, int j) {
  boolean out=false;
  if (map[i][j]==-13987537 || map[i][j]==-11386840 || map[i][j]==-9737365 || map[i][j]==-9418460 || map[i][j]==-13731772 || map[i][j]==-14935012 || map[i][j]==-1916758 || map[i][j]==-462770 || map[i][j]==-4167854 || map[i][j]==-15118672 || map[i][j]==-4194304 || map[i][j]==-11542059 || map[i][j]==-2100 || map[i][j]==-1000 || map[i][j]==-1001  || map[i][j]==-1002 || map[i][j]==-1003 || map[i][j]==-1004  || map[i][j]==-1005 || map[i][j]==-1006 || map[i][j]==-1007|| map[i][j]==-13144136 || map[i][j]==-1314413604) {
    out=true;
  }
  return out;
}

void moveBlock(int block1X, int block1Y, int block2X, int block2Y, int colour) {
  map[block1X][block1Y]=0;
  map[block2X][block2Y]=colour;
}
