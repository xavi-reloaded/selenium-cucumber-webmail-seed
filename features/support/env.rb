require 'selenium-webdriver'
require 'cucumber'
require 'require_all'
require 'rubygems'


require_all 'lib/cucumber'

Before do |scenario|

end

After do |scenario|
  # @browser.driver.quit
end