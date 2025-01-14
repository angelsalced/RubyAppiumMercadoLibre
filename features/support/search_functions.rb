require 'appium_lib'
require 'selenium-webdriver'

require_relative 'ui_selectors'

module SearchFunctions
  def self.search_playstation(driver)
    search_bar = driver.find_element(:id, UISelectors::SEARCH_BAR)
    search_bar.click
    input_bar = driver.find_element(:id, UISelectors::INPUT_BAR)
    input_bar.send_keys('playstation 5')
    driver.press_keycode(66)
  end

  def self.new_condition(driver)
    wait = Selenium::WebDriver::Wait.new(timeout: 10)
    sleep 5
    wait.until { driver.find_element(:xpath, UISelectors::FILTERS_BUTTON).displayed? }

    putFilters = driver.find_element(:xpath, UISelectors::FILTERS_BUTTON)
    putFilters.click
    sleep 2
    wait.until { driver.find_element(:xpath, UISelectors::CONDITION_BUTTON).displayed? }

    putCondicion = driver.find_element(:xpath, UISelectors::CONDITION_BUTTON)
    putCondicion.click
    sleep 2
    wait.until { driver.find_element(:xpath, UISelectors::NEW_CONDITION).displayed? }

    condNuevo = driver.find_element(:xpath, UISelectors::NEW_CONDITION)
    condNuevo.click
    sleep 5 #Se mantiene porque el elemento de AplicarFiltros se encuentra visible aunque no se pueda interactuar con el

    aplicarFiltros = driver.find_element(:xpath, UISelectors::APPLY_FILTERS_BUTTON)
    aplicarFiltros.click
    sleep 10 #Se mantiene debido a que el DOM muestra los productos pero aun no se puede interactuar con ellos
  end

  def self.order_price(driver)
    wait = Selenium::WebDriver::Wait.new(timeout: 10)
    filtroSubmodelo = driver.find_element(:xpath, UISelectors::SUBMODEL_FILTER)
    filtroSubmodelo.click
    sleep 3
    wait.until { driver.find_element(:xpath, UISelectors::ENERGY_EFFICIENCY_FILTER).displayed? }

    filtroEficiencia = driver.find_element(:xpath, UISelectors::ENERGY_EFFICIENCY_FILTER)
    filtroEficiencia.click
    sleep 3
    wait.until { driver.find_element(:xpath, UISelectors::ORDER_BY_FILTER).displayed? }

    filtroOrden = driver.find_element(:xpath, UISelectors::ORDER_BY_FILTER)
    filtroOrden.click
    sleep 2
    wait.until { driver.find_element(:xpath, UISelectors::PRICE_DESCENDING_ORDER) }


    mayorMenor = driver.find_element(:xpath, UISelectors::PRICE_DESCENDING_ORDER)
    mayorMenor.click
    sleep 5 #Se mantiene porque el elemento de AplicarFiltros se encuentra visible aunque no se pueda interactuar con el

    aplicarFiltros = driver.find_element(:xpath, UISelectors::APPLY_FILTERS_BUTTON)
    aplicarFiltros.click
    sleep 10 #Se mantiene debido a que el DOM muestra los productos pero aun no se puede interactuar con ellos
  end
end
