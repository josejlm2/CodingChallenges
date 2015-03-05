object Main extends App {
  def testAge(x: Int){
    if (x >= 0 & x<=2 ){
        print("Still in Mama's arms");
    }
    else if(x >=3 & x <= 4){
         print("Preschool Maniac");
    }
    else if(x >=5 & x <= 11){
         print("Elementary school");
    }
    else if(x >=12 & x <= 14){
         print("Middle school");
    }
    else if(x >=15 & x <= 18){
         print("High school");
    }
    else if(x >=19 & x <= 22){
         print("College");
    }
    else if(x >=23 & x <= 65){
         print("Working for the man");
    }
    else if(x >=66 & x <= 100){
         print("The Golden Years");
    }
    else{
        print("This program is for humans");
    }
  }
    
  val source = scala.io.Source.fromFile(args(0))
  val lines = source.getLines.filter(_.length > 0)
  for (l <- lines) {
      testAge(l.toInt);
  }
}