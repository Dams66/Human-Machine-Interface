
class Carte extends Object{
  String nom;
  
  
  public Carte(int posY,String n){
      super(100,posY,300,100);
      this.nom = n;
  }
  
  public Carte(Carte c){
     super(600,600,700,300);
     this.nom = c.nom;
  }
  
  void drawObject(){
    fill(VERT);
    rect(this.pos_x,this.pos_y,this.longueur,this.largeur);
    textFont(police,20);                 
    fill(0);                        
    text(this.nom,120,this.pos_y+60);   
    smooth();
  }
  
  void update(int old_y){
      if (old_y < mouseY){  
        this.pos_y = this.pos_y + 5;
        if (this.pos_y > 1000){
          this.pos_y = this.pos_y-1000;
        }
      } else {
       this.pos_y = this.pos_y - 5;
       if (this.pos_y < 0){
         this.pos_y = this.pos_y + 1000;
        }
      }
  }
  
  boolean isClicked(){
    if (mouseX < 400 && mouseX > 100 && mouseY > this.pos_y && mouseY < this.pos_y + 100){
      return true;
    }
    return false;
}

void action(Wallet wallet){
  if (wallet.carteOuverte){
     wallet.listeObject.remove(wallet.carte);
  }
  wallet.carte = new CarteOuverte(this);
  wallet.listeObject.add(wallet.carte);
  wallet.carteOuverte = true;
}

}
