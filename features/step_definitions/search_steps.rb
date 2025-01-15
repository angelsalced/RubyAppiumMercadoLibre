
Given('I open the Mercado Libre mobile application installed on the Android device') do
  @driver = GeneralFunctions.start_appium_driver
  GeneralFunctions.close_pop_up(@driver)
  screenshot_path = take_screenshot("Open_ML")
  attach(File.open(screenshot_path, 'rb').read, 'image/png')
end

When('I search for "playstation 5" in the search bar') do
  SearchFunctions.search_playstation(@driver)
  screenshot_path = take_screenshot("Searched_Playstation_5")
  attach(File.open(screenshot_path, 'rb').read, 'image/png')
end

And('I apply the filter for condition "Nuevos"') do
  SearchFunctions.new_condition(@driver)
  screenshot_path = take_screenshot("Applied_Condition_Filter")
  attach(File.open(screenshot_path, 'rb').read, 'image/png')
end

And('I order the results by "mayor a menor precio"') do
  SearchFunctions.order_price(@driver)
  screenshot_path = take_screenshot("Order_Price")
  attach(File.open(screenshot_path, 'rb').read, 'image/png')
end

Then('I obtain the name and the price of the first 5 products displayed in the results, print in the console') do
  ProductsFunctions.order_products(@driver)
  screenshot_path = take_screenshot("Save_Products_Information")
  attach(File.open(screenshot_path, 'rb').read, 'image/png')
end


