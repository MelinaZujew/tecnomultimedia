class Textos {
  String [] texto = new String [11];


  Textos () {
    for (int a = 0; a < texto.length; a++) {
      texto = loadStrings ("Changfamei"+a+".txt") ;
    }
  }
}
