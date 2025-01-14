
Feature: Mercado Libre search and filter functionality

  Scenario: Search for "Playstation 5", apply filters, and order the results
    Given I open the Mercado Libre mobile application installed on the Android device
    When I search for "playstation 5" in the search bar
    # And I apply the filter for location "CDMX" (No filter for location in the app)
    And I apply the filter for condition "Nuevos"
    And I order the results by "mayor a menor precio"
    Then I obtain the name and the price of the first 5 products displayed in the results, print in the console
