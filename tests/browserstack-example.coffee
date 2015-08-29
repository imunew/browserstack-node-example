webdriver = require("browserstack-webdriver")
config = require("./config")

# Input capabilities
capabilities = config.browserstack
capabilities["browser"] = "IE"
capabilities["browser_version"] = "9.0"
capabilities["os"] = "windows"
capabilities["os_version"] = "7"
capabilities["resolution"] = "1024x768"


describe "E2E test examples with \"browserstack-webdriver\"", () ->

  this.timeout(config.mocha.timeout)

  it "Search \"BrowserStack\" by google.", () ->

    driver = new webdriver.Builder().
              usingServer("http://hub.browserstack.com/wd/hub").
              withCapabilities(capabilities).
              build()

    driver.get("http://www.google.com/ncr")
    driver.findElement(webdriver.By.name("q")).sendKeys("BrowserStack")
    driver.findElement(webdriver.By.name("btnG")).click()

    driver.getTitle().then((title) ->
      console.log(title)
    )
    driver.quit()
