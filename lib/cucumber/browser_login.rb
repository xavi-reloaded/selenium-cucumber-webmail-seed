class BrowserGmail < Browser

  def open_page(url)
    @driver.navigate.to(url)
    GmailLoginPage.new(@driver)
  end

end

class BrowserYahoo < Browser

  def open_page(url)
    @driver.navigate.to(url)
    WebmailLoginPage.new(@driver)
  end

end
