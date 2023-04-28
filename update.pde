void flowUpdate() {
  for (int i=max(0,min((worldSize+1)/2-tranX/10+47,worldSize)); i>min(max((worldSize+1)/2-tranX/10-33,0),worldSize-1); i--) {
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
  for (int i=max(0,min((worldSize+1)/2-tranX/10+47,worldSize-2)); i>min(max((worldSize+1)/2-tranX/10-33,1),worldSize-1); i--) {
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
  for (int i=max(0,min((worldSize+1)/2-tranX/10+47,worldSize-2)); i>min(max((worldSize+1)/2-tranX/10-33,1),worldSize-1); i--) {
    for (int j=48; j>1; j--) {
      if (map[i][j]==-2100 && (map[i][j+1]==0 || map[i][j+1]==-13144136 || map[i][j+1]==-1314413602 || map[i][j+1]==-1314413603 || map[i][j+1]==-1314413604)) {
        moveBlock(i, j, i, j+1, -2100);
      }
    }
  }
}
