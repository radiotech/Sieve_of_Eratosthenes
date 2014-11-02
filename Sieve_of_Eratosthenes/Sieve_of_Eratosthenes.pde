boolean[] prime;
boolean[] truePrime;

int blocks = 200;
int hBlocks;
int vBlocks;

void setup(){
  size(800,450);
  
  hBlocks = ceil(sqrt(blocks/( height/float(width))));
  vBlocks = ceil(sqrt(blocks*( height/float(width))));
  
  prime = new boolean[blocks+1];
  truePrime = new boolean[blocks+1];
  
  for(int i = 1; i < blocks+1; i++){
    prime[i] = true;
    truePrime[i] = true;
  }
  truePrime[1] = false;
  
  for(int i = 0; i < 15; i++){
    prime[floor(random(blocks)+1)] = false;
  }
  
  
  
  for(int i = 2; i < blocks; i++){
    if(truePrime[i] == true){
      for(int j = 1; j < ceil(float(blocks-i)/i)+1; j++){
        if(i+i*j<=blocks){
          truePrime[i+i*j] = false;
        }
      }
    }
  }
}

void draw(){
  background(0,100,0);
  
  
  noStroke();
  rectMode(CENTER);
  textSize(15);
  
  for(int i = 0; i < hBlocks; i++){
    for(int j = 0; j < vBlocks; j++){
      if(j*hBlocks+i<blocks){
        
        fill(255,255,102);
        if(truePrime[j*hBlocks+i+1] != prime[j*hBlocks+i+1]){
          fill(255,102,102);
        } else if(truePrime[j*hBlocks+i+1] == true){
          fill(102,255,102);
        }
        
        rect(i*float(width)/hBlocks+float(width)/hBlocks/2,j*float(height)/vBlocks+float(height)/vBlocks/2,width/(hBlocks*1.1),height/(vBlocks*1.1),10);
        fill(0,100,0);
        text(j*hBlocks+i+1,i*float(width)/hBlocks+float(width)/hBlocks/2,j*float(height)/vBlocks+float(height)/vBlocks/2);
        
        fill(255,255,102);
        if(truePrime[j*hBlocks+i+1] != prime[j*hBlocks+i+1]){
          fill(255,102,102);
        } else if(truePrime[j*hBlocks+i+1] == true){
          fill(102,255,102);
        }
        
        if(prime[j*hBlocks+i+1] == false){
          rect(i*float(width)/hBlocks+float(width)/hBlocks/2,j*float(height)/vBlocks+float(height)/vBlocks/2-height/(vBlocks*1.1)/6+3,width/(hBlocks*1.1)-2,height/(vBlocks*1.1)/3);
        }
        
        if(truePrime[j*hBlocks+i+1] == false){
          rect(i*float(width)/hBlocks+float(width)/hBlocks/2,j*float(height)/vBlocks+float(height)/vBlocks/2+height/(vBlocks*1.1)/6+2,width/(hBlocks*1.1)-2,height/(vBlocks*1.1)/3);
        }
        
      }
    }
  }
  
  
  
  fill(0);
  textAlign(CENTER,CENTER);
  
  
  
  
  
}


