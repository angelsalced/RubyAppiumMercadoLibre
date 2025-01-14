
def take_screenshot(filename)

  screenshot_dir = "features/reports/screenshots"
  FileUtils.mkdir_p(screenshot_dir) unless File.exist?(screenshot_dir)

  filename = filename.gsub(/[^0-9A-Za-z.\-]/, '_')

  screenshot_path = File.join(screenshot_dir, "#{filename}.png")

  @driver.save_screenshot(screenshot_path)

  screenshot_path
end

After do |scenario|
  begin
    if scenario.failed?

      scenario_name = scenario.respond_to?(:name) ? scenario.name.gsub(/\s+/, '_') : "Unknown_Scenario"
      screenshot_path = take_screenshot("Failed_Scenario_#{scenario_name}")

      attach(File.open(screenshot_path, 'rb').read, 'image/png')
    end
  rescue StandardError => e
    puts "Error al capturar la pantalla del escenario fallido: #{e.message}"
  end
end
