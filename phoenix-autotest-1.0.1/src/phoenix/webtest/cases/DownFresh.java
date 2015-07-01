package phoenix.webtest.cases;

import org.junit.Assert;
import org.openqa.selenium.WebDriver;
import org.testng.annotations.Test;

import phoenix.frame.action.Action;
import phoenix.frame.caseinterface.InterfaceCaseData;
import phoenix.frame.log.PhoenixLogger;
import phoenix.frame.window.Phoenix;

public class DownFresh extends InterfaceCaseData{
	private static String caseName="刷新页面用例";

	public DownFresh(String caseName) {
		super(caseName);
		// TODO Auto-generated constructor stub
	}
	@Test
	public void run(){
		DownFresh downFresh = new DownFresh(caseName);
		downFresh.countDown();
		//TestDemo testDemo = new TestDemo(caseName);
		//testDemo.case1(GUIElement());
		
	}
	
	public void knownsecTest(){
		Assert.assertTrue(true);
	}
	
	public void countDown(){		
		GUIElement("打开浏览器").openNewWindow("about:blank");
		GUIElement("打开页面").gotoWindow("http://pan.baidu.com/s/1hqJZGBM");
	}

	public static void main(String args[]){
		DownFresh downFresh = new DownFresh(caseName);
		downFresh.run();
	}

}
