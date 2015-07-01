package phoenix.mobiletest.cases;

import io.selendroid.SelendroidCapabilities;
import io.selendroid.SelendroidDriver;

import org.json.JSONArray;
import org.json.JSONObject;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.testng.Assert;
import org.testng.annotations.Test;

import phoenix.common.powertools.GetXml;
import phoenix.common.powertools.SelendroidLauncher;

/**
 * android app测试用例示例
 * @author mengfeiyang
 *
 */
public class AppTest1 {
	public static void main(String args[]) throws Exception {
		AppTest1 appTest1 = new AppTest1();
		appTest1.f();
	}

	@Test
	public void f() throws Exception {
		SelendroidLauncher seleLauncher = SelendroidLauncher.getInstance(new String[] { 
				"-app",
				"F:\\ChinaBank\\baozhanggl.apk" 
				});
		seleLauncher.launchSelendroid();
		String json = GetXml.getResponseByGet("http://localhost:4444/wd/hub/status");
		System.out.println(json);
		JSONObject dataJson = new JSONObject(json);

		JSONObject response = dataJson.getJSONObject("value");
		JSONArray data = response.getJSONArray("supportedApps");

		JSONObject info = data.getJSONObject(1);

		String appid = info.getString("appId");

		System.out.println(appid);

		System.out.println("Test Start:");
		SelendroidCapabilities capa = SelendroidCapabilities.emulator(appid);
		// AndroidDriver,SelendroidDriver,WebDriver
		SelendroidDriver driver = new SelendroidDriver(capa);
		System.out.println("Running Case:");
		WebElement inputField = driver.findElement(By.id("TextField1"));
		System.out.println("----Element Type:" + inputField.getTagName()
				+ "  |Value:" + inputField.getText());
		driver.findElement(By.id("TextField2")).sendKeys("shuruceshi");
		Assert.assertEquals(driver.findElement(By.id("TextField2")).getText(),
				"shuruceshi");
		driver.findElement(By.id("gaoji")).click();
		driver.getKeyboard().pressKey("\uE100");

		System.out.println("Test End.");
		// driver.wait(Long.parseLong(3000+""));

		driver.quit();
		
		seleLauncher.stopSelendroid();
	}

}
