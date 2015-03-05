object Main extends App {
  def testAge(x: Int){
    if (x >= 0 & x<=2 ){
        println("Still in Mama's arms");
    }
    else if(x >=3 & x <= 4){
         println("Preschool Maniac");
    }
    else if(x >=5 & x <= 11){
         println("Elementary school");
    }
    else if(x >=12 & x <= 14){
         println("Middle school");
    }
    else if(x >=15 & x <= 18){
         println("High school");
    }
    else if(x >=19 & x <= 22){
         println("College");
    }
    else if(x >=23 & x <= 65){
         println("Working for the man");
    }
    else if(x >=66 & x <= 100){
         println("The Golden Years");
    }
    else{
        println("This program is for humans");
    }
  }
    
  val source = scala.io.Source.fromFile(args(0))
  val lines = source.getLines.filter(_.length > 0)
  for (l <- lines) {
      testAge(l.toInt);
  }
}