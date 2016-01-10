class TakeScreenShot
  def initialize(driver)
    @driver = driver
  end

  def open_first_email
    # input = @driver.find_element(:xpath , '//div/span[@title="your email title here"]')
    input = @driver.find_element(:xpath , '//div/span[contains(@title," ")]')
    input.click
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until { @driver.find_element(:class => 'subtab-active') }
  end

  def take_screen_shot(screen_name, screen_folder)
    @driver.save_screenshot(screen_folder + '/' + screen_name)
  end

end
