int y=10;
int i;
int treeD=0;
int treeC;
int grassC;
int grassD=0;
int desertD=0;
int desertC;
int coalC;
int ironC;
int goldC;
int copperC;
int redC;
int lapisC;
int diamondC;
int[] blockList= {-13987537, -11386840, -9737365, -9418460, -13731772, -1002, -1003, -1005, -1006, -14935012, -1916758, -462770, -4167854, -15118672, -4194304, -11542059, -2100, -1000, -1001, -1008,-13144136};
int[] solidBlocks= {-13987537, -11386840, -9737365, -9418460, -13731772, -14935012, -1916758, -462770, -4167854, -15118672, -4194304, -11542059, -2100, -1000, -1001, -1002, -1003, -1004, -1005, -1006, -1007};
int block=0;
int block2;
int tranX=0;
int tranX2;
int count=0;
float k;
float yoff;
float yincrement=0.04;
int kTemp;
float tempOff;
float tempIncrement=0.002;
int kRain;
float rainOff;
float rainIncrement=0.001;
int biomeID;
int colour;
int n;
int m;
int time=100;
int skyR=230;
int skyG=203;
int skyB=83;
int worldSize=100000;
int startX=(1-((worldSize-80)/2))*10;
int endX=10*worldSize+startX-10;
int[][] map = new int[worldSize+3][50];
int[][] fluid = new int[worldSize+3][50];
int[] biomeList = new int[worldSize+1];
int blocks = -13987537;
int a=-700;
int cloudS=int(random(1, 5));
int seaLevel=30;
int seed=int(random(0, 10000000));

//1 desert
//2 savanna
//3 forest
//4 taiga
//5 snowy taiga
//6 snowy plains
//7 plains

void setup() {
  randomSeed(seed);//////REPLACE THE VARIABLES WITH YOUR SEED IF YOU WANT A CUSTOM WORLD
  noiseSeed(seed);
  for (int i=0; i<worldSize+3; i++) {
    for (int j=0; j<50; j++) {
      map[i][j]=0;
    }
  }
  println("Left click to break, right click to place. ");
  println("Use mouse wheel to scroll through blocks. ");
  println("Use Left and Right buttons to move through terrain one block at a time");
  println("Use A and D buttons to move through terrain 10 blocks at a time");
  println("DON'T CLICK OUTSIDE THE BORDER I SWEAR TO GOD THE GAME WILL CRASH\n");
  println("Changelog for alpha104: ");
  println(" - NEW BIOMES");
  println("    - Desert: no trees, replaces dirt and grass with sand, also generates new cactus and dead bush block");
  println("    - Savanna: generates oak trees AND new acacia trees, which contain acacia wood and leaves, and also generates grass");
  println("    - Forest: similar to before, generates oak trees at slightly higher rate, fixed the shape of trees, and also generate grass");
  println("    - Taiga: very similar to forest, just with spruce trees, which have spruce wood and spruce leaves, and also generate grass");
  println("    - Plains: also similar to forest, just less frequent trees, and flatter terrain");
  println("    - Ocean and beach biomes have been removed, unsure if or when re-implemented");
  println(" - Day-night cycle updated: ");
  println("    - Sun follows a parabola, moving smoothly through the day");
  println("    - Moon also technically follows a parabola, where the x-value is the time; moon's x-coordinate stays at midpoint");
  println(" - Refactored Terrain Generation: ");
  println("    - World size can now be scaled up to around the integer limit (not quite do to memory limits)");
  println("    - Displaying terrain also optimized, any terrain outside viewing screen is no longer loaded until the player moves and can see it");
  println("    - Terrain only generates higher up, so that rarer ores won't be so close to the surface");
  println(" - Textures");
  println("    - Updated oak leaf texture, now more leafy");
  println("    - Used old oak leaf texture for new spruce leaves");
  println("    - Created new textures for spruce wood, acacia wood, acacia leaves, and grass");
  println("    - Grass and leaf colours change slightly based on biome");
  println("\nIf any bugs, large or small are found, pls tell me lmao\n");
  println("seed: "+seed);
  size(800, 500);
  noStroke();
  terrainGen();
}

void printMap() {
  for (n=min(max((worldSize+1)/2-tranX/10-33, 0), worldSize-1); n<max(0, min((worldSize+1)/2-tranX/10+107, worldSize)); n++) {
    for (m=0; m<=49; m++) {
      if (map[n][m]!=-1651885 && map[n][m]!=-2092 && map[n][m]!=-16777216 && map[n][m]!=-6427649 && map[n][m]!=0 && map[n][m]!=-10039043 && map[n][m]!=-991338 && map[n][m]!=-10197916 && map[n][m]!=-1307) {
        rectMode(CENTER);
        if (map[n][m]==-14935012) {
          rectMode(CORNER);
          coal(n*10-75+startX, m*10+5);
          rectMode(CENTER);
        } else if (map[n][m]==-1916758) {
          rectMode(CORNER);
          iron(n*10-75+startX, m*10+5);
          rectMode(CENTER);
        } else if (map[n][m]==-462770) {
          rectMode(CORNER);
          gold(n*10-75+startX, m*10+5);
          rectMode(CENTER);
        } else if (map[n][m]==-4167854) {
          rectMode(CORNER);
          copper(n*10-75+startX, m*10+5);
          rectMode(CENTER);
        } else if (map[n][m]==-4194304) {
          rectMode(CORNER);
          redstone(n*10-75+startX, m*10+5);
          rectMode(CENTER);
        } else if (map[n][m]==-15118672) {
          rectMode(CORNER);
          lapis(n*10-75+startX, m*10+5);
          rectMode(CENTER);
        } else if (map[n][m]==-11542059) {
          rectMode(CORNER);
          diamond(n*10-75+startX, m*10+5);
          rectMode(CENTER);
        } else if (map[n][m]==-13987537) {
          rectMode(CORNER);
          grassBlock(n*10-75+startX, m*10+5);
          rectMode(CENTER);
        } else if (map[n][m]==-9418460) {
          rectMode(CORNER);
          oakWood(n*10-75+startX, m*10+5);
          rectMode(CENTER);
        } else if (map[n][m]==-13731772) {
          rectMode(CORNER);
          oakLeaf(n*10-75+startX, m*10+5);
          rectMode(CENTER);
        } else if (map[n][m]==-100) {
          rectMode(CORNER);
          oakLeafWood(n*10-75+startX, m*10+5);
          rectMode(CENTER);
        } else if (map[n][m]==-2100) {
          rectMode(CORNER);
          sand(n*10-75+startX, m*10+5);
          rectMode(CENTER);
        } else if (map[n][m]==-1000) {
          rectMode(CORNER);
          cactus(n*10-75+startX, m*10+5);
          rectMode(CENTER);
        } else if (map[n][m]==-1001) {
          rectMode(CORNER);
          deadBush(n*10-75+startX, m*10+5);
          rectMode(CENTER);
        } else if (map[n][m]==-1002) {
          rectMode(CORNER);
          acaciaWood(n*10-75+startX, m*10+5);
          rectMode(CENTER);
        } else if (map[n][m]==-1003) {
          rectMode(CORNER);
          acaciaLeaf(n*10-75+startX, m*10+5);
          rectMode(CENTER);
        } else if (map[n][m]==-1004) {
          rectMode(CORNER);
          acaciaLeafWood(n*10-75+startX, m*10+5);
          rectMode(CENTER);
        } else if (map[n][m]==-1005) {
          rectMode(CORNER);
          spruceWood(n*10-75+startX, m*10+5);
          rectMode(CENTER);
        } else if (map[n][m]==-1006) {
          rectMode(CORNER);
          spruceLeaf(n*10-75+startX, m*10+5);
          rectMode(CENTER);
        } else if (map[n][m]==-1007) {
          rectMode(CORNER);
          spruceLeafWood(n*10-75+startX, m*10+5);
          rectMode(CENTER);
        } else if (map[n][m]==-1008) {
          rectMode(CORNER);
          grass(n*10-75+startX, m*10+5);
          rectMode(CENTER);
        } else if (map[n][m]==-13144136) {
          rectMode(CORNER);
          waterSource(n*10-75+startX, m*10+5);
          rectMode(CENTER);
        } else if (map[n][m]==-1314413602) {
          rectMode(CORNER);
          waterFlowR(n*10-75+startX, m*10+5);
          rectMode(CENTER);
        } else if (map[n][m]==-1314413603) {
          rectMode(CORNER);
          waterFlowL(n*10-75+startX, m*10+5);
          rectMode(CENTER);
        } else if (map[n][m]==-1314413604) {
          rectMode(CORNER);
          waterFlowD(n*10-75+startX, m*10+5);
          rectMode(CENTER);
        } else {
          fill(map[n][m]);
          rect(n*10-75+startX, m*10+5, 10, 10);
        }
      }
    }
  }
  rectMode(CORNER);
}

//stone -9737365
//day -16535044
//night -16777216
//grass -13987537
//dirt -11386840
//oak log -9418460
//oak leaf -13731772
//coal -14935012
//iron -1916758
//gold -462770
//copperOrange -4167854
//copperGreen -13738674
//redstone -4194304
//lapis -15118672
//diamond -11542059
//sand -2100
//cactus -1000
//dead bush -1001
//acacia log -1002
//acacia leaf -1003
//acacia leafWood -1004
//spruce wood -1005
//spruce leaf -1006
//spruce leafWood -1007
//water -13144136

//sun -1651885
//moon -2092
//cloud day -10039043
//cloud night -10197916

void draw() {
  flowUpdate();
  sourceUpdate();
  blockUpdate();
  a+=cloudS;
  sky();
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
      grassBlock(15, 15);
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
      oakWood(15, 15);
      rectMode(CENTER);
      fill(255);
      text("Block: Oak Wood", 25, 19);
    } else if (blocks==-13731772) {
      rectMode(CORNER);
      oakLeaf(15, 15);
      rectMode(CENTER);
      fill(255);
      text("Block: Oak Leaf", 25, 19);
    } else if (blocks==-1002) {
      rectMode(CORNER);
      acaciaWood(15, 15);
      rectMode(CENTER);
      fill(255);
      text("Block: Acacia Wood", 25, 19);
    } else if (blocks==-1003) {
      rectMode(CORNER);
      acaciaLeaf(15, 15);
      rectMode(CENTER);
      fill(255);
      text("Block: Acacia Leaf", 25, 19);
    } else if (blocks==-1005) {
      rectMode(CORNER);
      spruceWood(15, 15);
      rectMode(CENTER);
      fill(255);
      text("Block: Spruce Wood", 25, 19);
    } else if (blocks==-1006) {
      rectMode(CORNER);
      spruceLeaf(15, 15);
      rectMode(CENTER);
      fill(255);
      text("Block: Spruce Leaf", 25, 19);
    } else if (blocks==-2100) {
      rectMode(CORNER);
      sand(15, 15);
      rectMode(CENTER);
      fill(255);
      text("Block: Sand", 25, 19);
    } else if (blocks==-1000) {
      rectMode(CORNER);
      cactus(15, 15);
      rectMode(CENTER);
      fill(255);
      text("Block: Cactus", 25, 19);
    } else if (blocks==-1001) {
      rectMode(CORNER);
      deadBush(15, 15);
      rectMode(CENTER);
      fill(255);
      text("Block: Dead Bush", 25, 19);
    }  else if (blocks==-1008) {
      rectMode(CORNER);
      grass(15, 15);
      rectMode(CENTER);
      fill(255);
      text("Block: Grass", 25, 19);
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
  //println(millis());
  //println(frameRate);
  //println(int(mouseX)+" "+int(mouseY));
}
