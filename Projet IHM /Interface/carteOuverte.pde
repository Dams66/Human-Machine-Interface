class CarteOuverte extends Carte{
  
  PImage imageCroix = loadImage("croix.png");
  
  public CarteOuverte(Carte c){
     super(c);
  }
  
  void drawObject(){
    fill(WHITE);
    rect(this.pos_x,this.pos_y,this.longueur,this.largeur);
    textFont(police,30);                 
    fill(0);                        
    text(this.nom,this.pos_x+50,this.pos_y+100);   
    image(imageCroix,this.pos_x + 650,this.pos_y,50,50);
    smooth();
  }
  
  void update(int o){}
  
  boolean isClicked(){
     if (mouseX < pos_x + longueur && mouseX > pos_x + longueur-50 && mouseY > this.pos_y && mouseY < this.pos_y + 50){
       return true;
     } return false;
  }
  
  void action(Wallet wallet){
     wallet.listeObject.remove(this);
     wallet.carteOuverte = false;
  }
  
}
