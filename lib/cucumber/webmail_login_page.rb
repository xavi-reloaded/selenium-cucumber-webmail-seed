class WebmailLoginPage
  def initialize(driver)
    @driver = driver

  end

  def enter_user(text,field)
    input = @driver.find_element(:name => field);
    input.send_keys(text)
  end

  def enter_pass(text,field)
    input = @driver.find_element(:name => field);
    input.send_keys(text)
    input.send_keys(:enter)
    WebmailLoggedPage.new(@driver)
  end
end

