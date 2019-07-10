require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'


Capybara.register_driver :selenium do |app|

    args = %w[headless --no-sandbox disable-gpu window-size=1440,900]

    caps = Selenium::WebDriver::Remote::Capabilities.chrome(
        'chromeOptions' => {
            'args' => args
        }
    )

Capybara::Selenium::Driver.new(app, browser: :chrome, desired_capabilities: caps)

end

# Capybara.register_driver :poltergeist do |app|

#     options = {
#         timeout: 3.minutes,
#         phantomjs_options: [
#        'proxytype=none',
#        'loadimages=no',
#        'ignoresslerrors=yes',
#        'sslprotocol=any',
#        'websecurity=false'
#         ]
#      }
#      Capybara::Poltergeist::Driver.new(app, options)
# end

# Capybara.javascript_driver = :poltergeist

#  Capybara.register_driver :chrome do |app|

#    capabilities = Selenium::WebDriver::Remote::Capabilities.chrome(
#      chromeOptions: {
#        args: %w[ nosandbox headless disablepopupblocking disablegpu windowsize=1440,900]
#      }
#    )
 
#    Capybara::Selenium::Driver.new(app, browser: :chrome, desired_capabilities: capabilities)

#  end

# Capybara::Screenshot.register_driver :chrome do |driver, path|
    
#     driver.save_screenshot(path)
    
# end
    
#     Capybara.javascript_driver = :chrome
    
#     Capybara.default_max_wait_time = 10

Capybara.configure do |config|

    config.default_driver = :selenium
    config.app_host = 'http://enjoeatsp1.herokuapp.com'

end

Capybara.default_max_wait_time = 10