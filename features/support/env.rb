require "appium_lib"

def caps
  { caps: {
    deviceName: "Simulator",
    platformName: "Android",
    app: (File.join(File.dirname(__FILE__ ),"app-world-beta(1).apk")),
    appPackage: "vivino.web.app.beta",
    appActivity: "com.sphinx_solution.Launcher",
    newCommandTimeout: "3600"

  } }
end

Appium::Driver.new(caps,true)
Appium.promote_appium_methods Object
