require 'appium_lib'
require 'selenium-webdriver'

require_relative 'ui_selectors'



module GeneralFunctions
  def self.start_appium_driver
    begin
      caps = {
        platformName: "Android",
        platformVersion: "15",
        deviceName: "emulator-5554",
        appPackage: "com.mercadolibre",
        appActivity: ".splash.SplashActivity",
        automationName: "UiAutomator2"
      }

      url = "http://127.0.0.1:4723"  # URL del servidor de Appium
      appium_driver = Appium::Driver.new({caps: caps, appium_lib: {server_url: url}}, true)

      driver = appium_driver.start_driver


      puts "Conexión exitosa con el emulador"


      driver.manage.timeouts.implicit_wait = 180

      return driver

    rescue => e

      puts "Error al conectar con Appium: #{e.message}"
      puts e.backtrace.join("\n")
      exit(1)
    end
  end

  def self.close_pop_up(driver)
    #agregar wait al texto de elemento de 24 horas
    wait = Selenium::WebDriver::Wait.new(timeout: 10)
    sleep 3
    wait.until { driver.find_element(:xpath, UISelectors::MENSAJE_POP_UP).displayed? }
    notNow = driver.find_element(:id, UISelectors::NOT_NOW_BUTTON)
    notNow.click
    sleep 10
  end

end
