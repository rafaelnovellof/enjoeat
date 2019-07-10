require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'

##---------------------------------------------------------------------------------##

    #DEVEMOS USAR ESSA CONFIGURAÇÃO PARA O GOOGLE CHROME NÃO QUBRAR (CRASH)
    Capybara.register_driver :selenium_chrome_headless do |app|
        chrome_options =  Selenium::WebDriver::Chrome::Options.new.tap do |options|
            options.add_argument "--headless"
            options.add_argument "--disable-gpu"
            options.add_argument "--no-sandbox"
            options.add_argument "--disable-site-isolation-trials"
        end
        Capybara::Selenium::Driver.new(app, browser: :chrome, options: chrome_options)
    end
        
##---------------------------------------------------------------------------------##

Capybara.configure do |config|

    config.default_driver = :selenium_chrome_headless
    config.app_host = 'http://enjoeat-sp1.herokuapp.com'
    Capybara.default_max_wait_time = 30

end

