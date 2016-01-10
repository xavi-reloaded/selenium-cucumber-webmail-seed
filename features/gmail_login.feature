Feature: Gmail login
  The gmail page to perform a valid login and use it to check email

  Scenario: valid_gmail_login
    Given I navigate to "http://www.gmail.com" in "chrome"
    When I enter "your_user@gmail.com" into input field having id "Email"
    And I enter "your_password" into input field having id "Passwd"
    Then I should get logged in
    And I want to open the gmail first email
    And I take the screenshot of gmail screen with named "gmail_login_page(chrome).png" and save to "screenshot" folder

  Scenario: valid_gmail_login
    Given I navigate to "http://www.gmail.com" in "firefox"
    When I enter "your_user@gmail.com" into input field having id "Email"
    And I enter "your_password" into input field having id "Passwd"
    Then I should get logged in
    And I want to open the gmail first email
    And I take the screenshot of gmail screen with named "gmail_login_page(firefox).png" and save to "screenshot" folder


