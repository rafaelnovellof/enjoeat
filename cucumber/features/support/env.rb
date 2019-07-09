require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'

# Capybara.register_driver :selenium do |app|
#     args = %w[window-size=1440,900 headless disable-gpu]

#     caps = Selenium::WebDriver::Remote::Capabilities.chrome(
#         'chromeOptions' => {
#             'args' => args
#         }

# Capybara::Selenium::Driver.new(app, browser: :chrome, desired_capabilities: caps)


Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.app_host = 'http://enjoeat-sp1.herokuapp.com'

end

Capybara.default_max_wait_time = 10