require 'appium_lib'
require 'selenium-webdriver'

require_relative 'ui_selectors'

module ProductsFunctions
  def self.order_products(driver)


    consolaN = driver.find_element(:xpath, UISelectors::CONSOLE_NAME_XPATH)
    consolaNombre = consolaN.text

    consola1 = driver.find_element(:xpath, UISelectors::CONSOLE_PRICE_XPATH)
    precioConsola1 = consola1.text

    puts "Consola 1: #{consolaNombre}, #{precioConsola1}"

    #Utilizado debido a que otras opciones de desplazamiento no fueron funcionales
    system("adb shell input draganddrop 500 1500 500 469 1310")

    for i in 2..5 do

      #Utilizado debido a que otras opciones de desplazamiento no fueron funcionales
      system("adb shell input draganddrop 500 1500 500 469 1310")

      sleep 5 #Se mantiene, es la espera para que los selectores se actualizan (son dinamicos, se actualizan en cada desplazamiento)

      consolaNo = driver.find_element(:xpath, UISelectors::CONSOLE_NAME_XPATH)
      consolaNombres = consolaNo.text


      elemento = driver.find_element(:xpath, UISelectors::CONSOLE_FOR_PRICE_XPATH)
      precio = elemento.text

      puts "Consola #{i}: #{consolaNombres}, #{precio}"

      sleep 1
    end


  end
end
