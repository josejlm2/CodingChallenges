import java.io.BufferedReader;
import java.io.IOException;
import java.nio.charset.Charset;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;


/**
 * @author Jose
 *
 */
public class JavaTemplate {

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
		        
		        
		        
		    }
		} catch (IOException x) {
		    System.err.format("IOException: %s%n", x);
		}	
	}
	
	
	public static void main(String[] args) {

		readInput("input.txt");

	}
}