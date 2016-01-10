class WebmailLoggedPage

  def initialize(driver)
    @driver = driver
  end

  def gmail_logged_page
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until { @driver.find_element(:id => 'gbqfq') }
    TakeScreenShot.new(@driver)
  end

  def yahoo_logged_page
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until { @driver.find_element(:id => 'yucs-signout') }
    TakeScreenShot.new(@driver)
  end

end