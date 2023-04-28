void desert(int x) {
  desertC=int(random(0, 50));
  yincrement=0.01;
  y=int(k);
  oreGen(x);
  //sand
  if (x>startX+40 && x<endX-40) {
    if (biomeList[(x-startX)/10-1]==1 && biomeList[(x-startX)/10-2]==1 && biomeList[(x-startX)/10-3]==1 && biomeList[(x-startX)/10-4]==1 && biomeList[(x-startX)/10-5]==1 && biomeList[(x-startX)/10+1]==1 && biomeList[(x-startX)/10+2]==1 && biomeList[(x-startX)/10+3]==1 && biomeList[(x-startX)/10+4]==1 && biomeList[(x-startX)/10+5]==1) {//if previous 3 blocks all desert
      map[(x-startX)/10][50-i]=-2100;

      i++;
      map[(x-startX)/10][50-i]=-2100;

      i++;
      map[(x-startX)/10][50-i]=-2100;

      i++;
      map[(x-startX)/10][50-i]=-2100;
    } else if (biomeList[(x-startX)/10-1]==2 || biomeList[(x-startX)/10-1]==3 || biomeList[(x-startX)/10-1]==4 || biomeList[(x-startX)/10-1]==7) {//if previous desert
      //sand
      map[(x-startX)/10][50-i]=-2100;
      //dirt
      i++;
      map[(x-startX)/10][50-i]=-11386840;

      i++;
      map[(x-startX)/10][50-i]=-11386840;
      i++;
      //grass
      map[(x-startX)/10][50-i]=-13987537;
    } else if (biomeList[(x-startX)/10-2]==2 || biomeList[(x-startX)/10-2]==3  || biomeList[(x-startX)/10-2]==4 || biomeList[(x-startX)/10-2]==7) {//else if 2 before is desert
      //sand
      map[(x-startX)/10][50-i]=-2100;
      i++;
      map[(x-startX)/10][50-i]=-2100;
      //dirt
      i++;
      map[(x-startX)/10][50-i]=-11386840;
      i++;
      //grass
      map[(x-startX)/10][50-i]=-13987537;
    } else if (biomeList[(x-startX)/10-3]==2 || biomeList[(x-startX)/10-3]==3  || biomeList[(x-startX)/10-3]==4 || biomeList[(x-startX)/10-3]==7) {//else if 3 before is desert
      //sand
      map[(x-startX)/10][50-i]=-2100;
      i++;
      map[(x-startX)/10][50-i]=-2100;
      //dirt
      i++;
      map[(x-startX)/10][50-i]=-11386840;
      i++;
      //grass
      map[(x-startX)/10][50-i]=-13987537;
    } else if (biomeList[(x-startX)/10-4]==2 || biomeList[(x-startX)/10-4]==3  || biomeList[(x-startX)/10-4]==4 || biomeList[(x-startX)/10-4]==7) {//else if 4 before is desert
      //sand
      map[(x-startX)/10][50-i]=-2100;
      i++;
      map[(x-startX)/10][50-i]=-2100;
      i++;
      map[(x-startX)/10][50-i]=-2100;
      i++;
      //grass
      map[(x-startX)/10][50-i]=-13987537;
    } else if (biomeList[(x-startX)/10-5]==2 || biomeList[(x-startX)/10-5]==3  || biomeList[(x-startX)/10-1]==5 || biomeList[(x-startX)/10-5]==7) {//else if 5 before is desert
      //sand
      map[(x-startX)/10][50-i]=-2100;
      i++;
      map[(x-startX)/10][50-i]=-2100;
      i++;
      map[(x-startX)/10][50-i]=-2100;
      i++;
      //grass
      map[(x-startX)/10][50-i]=-13987537;
    } else if (biomeList[(x-startX)/10+1]==2 || biomeList[(x-startX)/10+1]==3  || biomeList[(x-startX)/10+1]==4 || biomeList[(x-startX)/10+1]==7) {//if after is not desert
      //sand
      map[(x-startX)/10][50-i]=-2100;
      //dirt
      i++;
      map[(x-startX)/10][50-i]=-11386840;
      i++;
      map[(x-startX)/10][50-i]=-11386840;
      i++;
      //grass
      map[(x-startX)/10][50-i]=-13987537;
    } else if (biomeList[(x-startX)/10+2]==2 || biomeList[(x-startX)/10+2]==3 || biomeList[(x-startX)/10+2]==4 || biomeList[(x-startX)/10+2]==7) {//else if 2 after is not desert
      //sand
      map[(x-startX)/10][50-i]=-2100;
      i++;
      map[(x-startX)/10][50-i]=-2100;
      //dirt
      i++;
      map[(x-startX)/10][50-i]=-11386840;
      i++;
      //grass
      map[(x-startX)/10][50-i]=-13987537;
    } else if (biomeList[(x-startX)/10+3]==2 || biomeList[(x-startX)/10+3]==3 || biomeList[(x-startX)/10+3]==4 || biomeList[(x-startX)/10+3]==7) {//else if 3 after is not desert
      //sand
      map[(x-startX)/10][50-i]=-2100;
      i++;
      map[(x-startX)/10][50-i]=-2100;
      //dirt
      i++;
      map[(x-startX)/10][50-i]=-11386840;
      i++;
      //grass
      map[(x-startX)/10][50-i]=-13987537;
    } else if (biomeList[(x-startX)/10+4]==2 || biomeList[(x-startX)/10+4]==3 || biomeList[(x-startX)/10+4]==4 || biomeList[(x-startX)/10+4]==7) {//else if 4 after is not desert
      //sand
      map[(x-startX)/10][50-i]=-2100;
      i++;
      map[(x-startX)/10][50-i]=-2100;
      i++;
      map[(x-startX)/10][50-i]=-2100;
      i++;
      //grass
      map[(x-startX)/10][50-i]=-13987537;
    } else if (biomeList[(x-startX)/10+5]==2 || biomeList[(x-startX)/10+5]==3 || biomeList[(x-startX)/10+5]==4 || biomeList[(x-startX)/10+5]==7) {//else if 5 after is not desert
      //sand
      map[(x-startX)/10][50-i]=-2100;
      i++;
      map[(x-startX)/10][50-i]=-2100;
      i++;
      map[(x-startX)/10][50-i]=-2100;

      i++;
      //grass
      map[(x-startX)/10][50-i]=-13987537;
    } else {
      map[(x-startX)/10][50-i]=-2100;

      i++;
      map[(x-startX)/10][50-i]=-2100;

      i++;
      map[(x-startX)/10][50-i]=-2100;

      i++;
      map[(x-startX)/10][50-i]=-2100;
    }
  } else {
    map[(x-startX)/10][50-i]=-2100;

    i++;
    map[(x-startX)/10][50-i]=-2100;

    i++;
    map[(x-startX)/10][50-i]=-2100;

    i++;
    map[(x-startX)/10][50-i]=-2100;
  }

  desertD++;

  if (desertD>1) {
    if (desertC<8) {
      for (int j=0; j<(1+(desertC%2)); j++) {
        map[(x-startX)/10][50-i-1-j]=-1000;
        desertD=0;
      }
    } else if (desertC<20) {
      map[(x-startX)/10][50-i-1]=-1001;
      desertD=0;
    }
  }
}

void savanna(int x) {
  grassC=int(random(0,15));
  treeC=int(random(0, 35));
  yincrement=0.03;
  y=int(k);
  oreGen(x);
  //dirt
  map[(x-startX)/10][50-i]=-11386840;
  i++;
  map[(x-startX)/10][50-i]=-11386840;
  i++;
  map[(x-startX)/10][50-i]=-11386840;
  i++;
  //grass
  map[(x-startX)/10][50-i]=-13987537;
  treeD++;
  grassD++;
  if ((treeC==2 || treeC==6) && treeD>11 && 500-i*10-10<seaLevel*10 && x<=endX-50) {
    acaciaTree1(x, 500-i*10-10);
    treeD=0;
  }
  if ((treeC==3 || treeC==4 || treeC==7) && treeD>16 && 500-i*10-10<seaLevel*10 && x<=endX-50) {
    acaciaTree2(x, 500-i*10-10);
    treeD=-1;
  }
  if (treeC==5 && treeD>10 && 500-i*10-10<seaLevel*10 && x<=endX-50) {
    oakTree1(x, 500-i*10-10);
    treeD=0;
  }
  if (grassC==5 && treeD>0  && grassD>0  && 500-i*10-10<seaLevel*10 && x<=endX-50) {
    map[((x-startX-(x-startX)%10))/10][(500-i*10-10)/10]=-1008;
    grassD=0;
  }
}

void forest(int x) {
  treeC=int(random(0, 6));
  grassC=int(random(0,15));
  yincrement=0.04;
  y=int(k);
  oreGen(x);
  //dirt
  map[(x-startX)/10][50-i]=-11386840;
  i++;
  map[(x-startX)/10][50-i]=-11386840;
  i++;
  map[(x-startX)/10][50-i]=-11386840;
  i++;
  //grass
  map[(x-startX)/10][50-i]=-13987537;
  treeD++;
  grassD++;
  if (treeC==1 && treeD>5 && 500-i*10-10<seaLevel*10 && x<=endX-50) {
    oakTree1(x, 500-i*10-10);
    treeD=0;
  }
  if ((treeC==2 || treeC==3) && treeD>5 && 500-i*10-10<seaLevel*10 && x<=endX-50) {
    oakTree2(x, 500-i*10-10);
    treeD=0;
  }
  if (treeC==4 && treeD>5 && 500-i*10-10<seaLevel*10 && x<=endX-50) {
    oakTree3(x, 500-i*10-10);
    treeD=0;
  }
  if (grassC==5 && treeD>1  && grassD>0  && 500-i*10-10<seaLevel*10 && x<=endX-50) {
    map[((x-startX-(x-startX)%10))/10][(500-i*10-10)/10]=-1008;
    grassD=0;
  }
}

void taiga(int x) {
  treeC=int(random(0, 10));
  grassC=int(random(0,15));
  yincrement=0.04;
  y=int(k);
  oreGen(x);
  //dirt
  map[(x-startX)/10][50-i]=-11386840;
  i++;
  map[(x-startX)/10][50-i]=-11386840;
  i++;
  map[(x-startX)/10][50-i]=-11386840;
  i++;
  //grass
  map[(x-startX)/10][50-i]=-13987537;
  treeD++;
  grassD++;
  if ((treeC==1 || treeC==5)&& treeD>10 && 500-i*10-10<seaLevel*10 && x<=endX-50) {
    spruceTree1(x, 500-i*10-10);
    treeD=0;
  }
  if ((treeC==2 || treeC==3) && treeD>10 && 500-i*10-10<seaLevel*10 && x<=endX-50) {
    spruceTree2(x, 500-i*10-10);
    treeD=0;
  }
  if (treeC==4 && treeD>8 && 500-i*10-10<seaLevel*10 && x<=endX-50) {
    oakTree3(x, 500-i*10-10);
    treeD=0;
  }
  if (grassC==5 && treeD>0  && grassD>0  && 500-i*10-10<seaLevel*10 && x<=endX-50) {
    map[((x-startX-(x-startX)%10))/10][(500-i*10-10)/10]=-1008;
    grassD=0;
  }
}

void plain(int x) {
  treeC=int(random(0, 50));
  grassC=int(random(0,15));
  yincrement=0.02;
  y=int(k);
  oreGen(x);
  //dirt
  map[(x-startX)/10][50-i]=-11386840;
  i++;
  map[(x-startX)/10][50-i]=-11386840;
  i++;
  map[(x-startX)/10][50-i]=-11386840;
  i++;
  //grass
  map[(x-startX)/10][50-i]=-13987537;
  treeD++;
  grassD++;
  if (treeC==1 && treeD>5 && 500-i*10-10<seaLevel*10 && x<=endX-50) {
    oakTree1(x, 500-i*10-10);
    treeD=0;
  }
  if ((treeC==2 || treeC==3) && treeD>5 && 500-i*10-10<seaLevel*10 && x<=endX-50) {
    oakTree2(x, 500-i*10-10);
    treeD=0;
  }
  if (treeC==4 && treeD>5 && 500-i*10-10<seaLevel*10 && x<=endX-50) {
    oakTree3(x, 500-i*10-10);
    treeD=0;
  }
  if (grassC==5 && treeD>2 && grassD>0  && 500-i*10-10<seaLevel*10 && x<=endX-50) {
    map[((x-startX-(x-startX)%10))/10][(500-i*10-10)/10]=-1008;
    grassD=0;
  }
}
