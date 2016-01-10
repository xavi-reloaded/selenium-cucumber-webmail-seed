Given(/^I navigate to "(.*?)" in "(.*?)"$/) do |arg1, arg2|
  @browser = BrowserGmail.new(arg2)
  @browser.delete_cookies
  @gmail_login_page = @browser.open_page(arg1)
end

When(/^I enter "(.*.gmail.com)" into input field having id "([^"]*)"$/) do |arg1, arg2|
  @gmail_login_page.enter_user(arg1,arg2)
end

And(/^I enter "(your_password)" into input field having id "([^"]*)"$/) do |arg1, arg2|
  @mail_logged_page = @gmail_login_page.enter_pass(arg1,arg2)
end

Then(/^I should get logged in$/) do
  @take_screen_shot = @mail_logged_page.gmail_logged_page
end

And(/^I want to open the gmail first email$/) do
  pending
end

And(/^I take the screenshot of gmail screen with named "(.*?)" and save to "(.*?)" folder$/) do |arg1, arg2|
  pending
end
