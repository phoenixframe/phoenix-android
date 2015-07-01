package phoenix.webtest.cases;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;

import org.testng.annotations.Test;

public class CreateSuite {
	@Test
	public void run() throws IOException{
	
		File file = new File("test.xml");
		PrintWriter printWriter = new PrintWriter(new FileWriter(file,true));
		printWriter.print("testValue");
		System.out.println("testValue 写入完成");
		printWriter.close();
	}
	public static void main(String[] args) throws IOException{
		CreateSuite createSuite = new CreateSuite();
		createSuite.run();
	}
}
