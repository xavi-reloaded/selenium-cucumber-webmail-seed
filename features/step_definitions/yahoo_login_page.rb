Given(/^I go to yahoo page "(.*?)" in "(.*?)"$/) do |arg1, arg2|
  @browser = BrowserYahoo.new(arg2)
  @browser.delete_cookies
  @yahoo_login_page = @browser.open_page(arg1)
end

When(/^I filled login "([^"]*)" into input field having id "([^"]*)"$/) do |arg1, arg2|
  @yahoo_login_page.enter_user(arg1, arg2)
end

And(/^I filled password "([^"]*)" into input field having id "([^"]*)"$/) do |arg1, arg2|
  @mail_logged_page = @yahoo_login_page.enter_pass(arg1, arg2)
end

Then(/^I should get logged in to yahoo$/) do
  @take_screen_shot = @mail_logged_page.yahoo_logged_page
end

And(/^I want to open the first email$/) do
  @take_screen_shot.open_first_email
end

And(/^I take the screenshot of yahoo screen with named "(.*?)" and save to "(.*?)" folder$/) do |arg1, arg2|
  @take_screen_shot.take_screen_shot(arg1, arg2)
end