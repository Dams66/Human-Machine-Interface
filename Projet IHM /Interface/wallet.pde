public class Wallet extends Widget{
  
  //Attributs
  String tabChar[] = {"HESTAR Joe","TOURNADRE Hugo","AUFONDULAC Grégory","HAIS Karim","LINN Maeve","BRIDOU Justin","DEPECAN Benoît","FAURE Clément","WATSON Emma"};
  ArrayList<Object> listeObject;
  int nbElev = 9;
  boolean carteOuverte;
  Carte carte;
  enumClic typeDeClic;
  
  PImage image;
  
  int old_mouseY = mouseY;
  
  
  public Wallet(){
    super();
    setupWidget();
  }
  
  void setupWidget(){
  
     carteOuverte = false;
     
     listeObject = new ArrayList<Object>();
     for (int i = 0; i < nbElev; i++){
        listeObject.add(new Carte(i*10 + i*100,tabChar[i]));
     }
     
  }
  
  void draWidget(){
      background(BLEU);
      for (int i = 0; i < listeObject.size(); i++){
        listeObject.get(i).drawObject();
      }
  }
  
  void mouseDraggedWallet(){
    if(true){ //Remplir coordonnées de la zone de detection de la souris pour le wallet
      for (int i = 0; i < listeObject.size(); i++){
        listeObject.get(i).update(old_mouseY);
      }
      old_mouseY = mouseY;
    }
  }
  
  void mousePressedWallet(){
     if(true){ //Remplir coordonnées de la zone de detection de la souris pour le wallet
        for (int i = 0 ; i < listeObject.size() ; i++){
          if(listeObject.get(i).isClicked()){
              listeObject.get(i).action(this);  
           }
        }
     }
  }
}
  
