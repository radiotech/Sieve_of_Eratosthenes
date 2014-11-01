boolean[] prime = new boolean[1000];
boolean[] truePrime = new boolean[1000];

int blocks = 200;
int hBlocks;
int vBlocks;

void setup(){
  size(800,450);
  
  hBlocks = ceil(sqrt(blocks/( height/float(width))));
  vBlocks = ceil(sqrt(blocks*( height/float(width))));
}

void draw(){
  background(255,255,102);
  
  fill(100,255,100);
  noStroke();
  rectMode(CENTER);
  
  for(int i = 0; i < hBlocks; i++){
    for(int j = 0; j < vBlocks; j++){
      if(j*hBlocks+i<blocks){
        rect(i*float(width)/hBlocks+float(width)/hBlocks/2,j*float(height)/vBlocks+float(height)/vBlocks/2,width/(hBlocks*1.2),height/(vBlocks*1.2));
      }
    }
  }
  
  
  
  fill(0);
  textAlign(CENTER,CENTER);
  
  
  
  
  
}


