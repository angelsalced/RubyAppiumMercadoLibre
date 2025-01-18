# frozen_string_literal: true

module UISelectors

  #General
  NOT_NOW_BUTTON = 'com.mercadolibre:id/andes_button_text'
  MENSAJE_POP_UP = '//android.widget.TextView[@text="Envíos gratis y en menos de 24 horas"]'

  #Search
  SEARCH_BAR = '//android.widget.TextView[
  @resource-id="com.mercadolibre:id/ui_components_action_bar_title_toolbar"
  or @resource-id="com.mercadolibre:id/ui_components_toolbar_search_field"
  or @resource-id="com.mercadolibre:id/ui_components_toolbar_title_toolbar"
]'
  INPUT_BAR = 'com.mercadolibre:id/search_input_edittext'

  #Filters
  FILTERS_BUTTON = '//android.widget.TextView[contains(@text, "Filtros")]'
  CONDITION_BUTTON = '//android.view.View[@content-desc="Condición"]'
  NEW_CONDITION = '//android.widget.ToggleButton[@resource-id="ITEM_CONDITION-2230284"]'
  APPLY_FILTERS_BUTTON = '//android.widget.Button[@resource-id=":r3:"]'
  CLOSE_FILTERS = '	//android.widget.ImageButton[@content-desc="Cerrar"]'

  SUBMODEL_FILTER = '//android.widget.TextView[@text="Submodelo"]'
  ENERGY_EFFICIENCY_FILTER = '//android.view.View[@content-desc="Eficiencia energética "]'
  ORDER_BY_FILTER = '//android.view.View[@content-desc="Ordenar por "]'
  PRICE_DESCENDING_ORDER = '//android.widget.ToggleButton[@resource-id="sort-price_desc"]'

  #Products
  CONSOLE_NAME_XPATH = "(//android.widget.LinearLayout[@resource-id='com.mercadolibre:id/search_cell_item_atributes_container'])[1]//android.widget.LinearLayout[@resource-id='com.mercadolibre:id/search_cell_title_price_and_discount_rate_container']//android.widget.TextView[@resource-id='com.mercadolibre:id/search_cell_title_text_view']"
  CONSOLE_PRICE_XPATH = "(//android.widget.LinearLayout[@resource-id='com.mercadolibre:id/search_cell_item_atributes_container'])[1]//android.widget.LinearLayout[@resource-id='com.mercadolibre:id/search_cell_pds_quantity_text_container']//android.widget.TextView[@resource-id='com.mercadolibre:id/search_cell_pds_qty_price_view']"
  CONSOLE_FOR_PRICE_XPATH = "(//android.widget.LinearLayout[@resource-id='com.mercadolibre:id/search_cell_item_atributes_container'])[1]//android.widget.LinearLayout[@resource-id='com.mercadolibre:id/search_cell_installments_price_container']//androidx.appcompat.widget.LinearLayoutCompat[@resource-id='com.mercadolibre:id/search_cell_price']//android.view.ViewGroup[contains(@content-desc, ' Pesos')]//android.widget.TextView[@resource-id='com.mercadolibre:id/money_amount_text']"

end
