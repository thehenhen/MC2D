void sky() {
  if (millis()%(16000*time)>=8000*time) {
    float moonX=(float(millis())%(8000*time))/(10*time);
    float moonY=(-0.0025)*moonX*(moonX-800);
    background(0);
    fill(255, 247, 212);
    rect(360, 500-moonY, 80, 80);

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
  } else {
    float sunX=(float(millis())%(8000*time))/(10*time);
    float sunY=(-0.0025)*sunX*(sunX-800);
    background(-6427649);
    fill(skyR, skyG, skyB);
    rect(sunX, 500-sunY, 80, 80);
  }
  //clouds

  //println(a);
  if (a>=600) {
    a=-700;
    cloudS=int(random(1, 5));
    //println("speed "+ cloudS);
  }

  if (millis()%(16000*time)>=8000*time) {
    fill(-10197916);
  } else {
    fill(255);
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
