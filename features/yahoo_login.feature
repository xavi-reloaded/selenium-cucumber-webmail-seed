Feature: Yahoo login
  The yahoo page to perform a valid login and use it to check email

  Scenario: I want to open Yahoo login in Chrome
    Given I go to yahoo page "https://mail.yahoo.com/" in "chrome"
    When I filled login "your_user_email" into input field having id "username"
    And I filled password "your_password" into input field having id "passwd"
    Then I should get logged in to yahoo
    And I want to open the first email
    And I take the screenshot of yahoo screen with named "yahoo_login_page(chrome).png" and save to "screenshot" folder

  Scenario: I want to open Yahoo login in Firefox
    Given I go to yahoo page "https://mail.yahoo.com/" in "firefox"
    When I filled login "your_user_email" into input field having id "username"
    And I filled password "your_password" into input field having id "passwd"
    Then I should get logged in to yahoo
    And I want to open the first email
    And I take the screenshot of yahoo screen with named "yahoo_login_page(firefox).png" and save to "screenshot" folder
