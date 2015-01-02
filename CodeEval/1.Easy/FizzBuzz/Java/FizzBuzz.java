import java.io.BufferedReader;
import java.io.IOException;
import java.nio.charset.Charset;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

/**
 * 
 */

/**
 * @author Jose
 *
 */
public class FizzBuzz {

	public static void fizzBuzz(int fizz, int buzz, int end){
	
		for(int i = 1; i<= end;i++ ){
			
			if (i % fizz == 0){
				System.out.print("F");
				
			}
		    if (i % buzz == 0){
				System.out.print("B");
			}
		    
		    if((i % fizz != 0) && (i % buzz != 0) ){
		    	System.out.print(i);
		    }

		    if(i != end){
		    	System.out.print(" ");
		    }
		}
		System.out.println("");
	}

	
	
	public static void readInput(String fileName){
		Charset charset = Charset.forName("US-ASCII");
		Path file = Paths.get("src", fileName);
		try (BufferedReader reader = Files.newBufferedReader(file , charset)) {
		    String line = null;
		    while ((line = reader.readLine()) != null) {
		       // System.out.println(line);
	
		        String delims = "[ ]+";
		        String[] tokens = line.split(delims);
		        //System.out.println(tokens[2]);
		        
		        /*CHALLENGE FUNCTION GOES HERE*/
		        
		        int fizz = Integer.parseInt(tokens[0]);
		        int buzz = Integer.parseInt(tokens[1]);
		        int endNumber = Integer.parseInt(tokens[2]);
		        
		        fizzBuzz(fizz, buzz, endNumber);
		        
		        
		    }
		} catch (IOException x) {
		    System.err.format("IOException: %s%n", x);
		}	
	}
	
	
	public static void main(String[] args) {

		readInput("input.txt");

	}
	
}