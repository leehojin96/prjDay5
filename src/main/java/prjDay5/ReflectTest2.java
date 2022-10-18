package prjDay5;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

public class ReflectTest2 {

	 
	public static void main(String[] args) throws ClassNotFoundException, InstantiationException, IllegalAccessException, IOException {
		 
 
	 
	 
	  File file= new File("input.txt"); 
	  BufferedReader  in = new  BufferedReader( new FileReader (file));	  
	  String className = in.readLine();
	  System.out.println( className);
	  
	  
	  Class clazz1 = Class.forName(className);	 
	  Calculator  calculator =(Calculator)clazz1.newInstance();	 
	  System.out.println( calculator.add(5, 3));
		 
	}

}
