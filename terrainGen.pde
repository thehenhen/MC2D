void terrainGen() {
  for (int x=startX; x<=endX; x+=10) {
    kTemp = int(noise(tempOff)*5);
    kRain = int(noise(rainOff)*5);
    tempOff+=tempIncrement;
    rainOff+=rainIncrement;
    //1 desert
    //2 savanna
    //3 forest
    //4 taiga
    //5 snowy taiga
    //6 snowy plains
    //7 plains
    if (kTemp==0) {
      if (kRain<2) {
        biomeID=6;//snowy plains
      } else {
        biomeID=5;//snowy taiga
      }
    } else if (kTemp==1) {
      if (kRain<2) {
        biomeID=7;//plains
      } else if (kRain==2) {
        biomeID=3;//forest
      } else {
        biomeID=4;//taiga
      }
    } else if (kTemp==2) {
      if (kRain<2) {
        biomeID=2;//savanna
      } else if (kRain==2) {
        biomeID=3;//forest
      } else {
        biomeID=4;//taiga
      }
    } else {
      biomeID=1;//desert
    }
    biomeList[(x-startX)/10]=biomeID;
  }
  for (int x=startX; x<=endX; x+=10) {
    k = noise(yoff)*20+20;
    yoff += yincrement;
    if (biomeList[(x-startX)/10]==1) {
      desert(x);
    } else if (biomeList[(x-startX)/10]==2) {
      savanna(x);
    } else if (biomeList[(x-startX)/10]==3) {
      forest(x);
    } else if (biomeList[(x-startX)/10]==4 || biomeList[(x-startX)/10]==5) {
      taiga(x);
    } else if (biomeList[(x-startX)/10]==6 || biomeList[(x-startX)/10]==7) {
      plain(x);
    }
  }
}
