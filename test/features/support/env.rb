require 'capybara/cucumber'
require 'capybara/poltergeist'
require 'selenium-webdriver'

def clear_cookies
  browser = Capybara.current_session.driver.browser

end

# start up browser before testing
Before do
  if ENV["RUN_MODE"] == "headless"
    Capybara.default_driver = :poltergeist
    Capybara.javascript_driver = :poltergeist
    Capybara.register_driver :poltergeist do |app|
      options = {
              :js_errors => true,
              :timeout => 120,
              :debug => false,
              :phantomjs_options => ['--load-images=no', '--disk-cache=false'],
              :inspector => true,
      }
      Capybara::Poltergeist::Driver.new(app, options)
    end
  else
    @browser = :chrome
    Capybara.default_driver  = :selenium
    Capybara.register_driver :selenium do |app|
      Capybara::Selenium::Driver.new(app, :browser => @browser)
    end
  end

  Capybara.configure do |config|
    config.run_server = false
    config.app_host = 'http://localhost/sampleform'
  end

  puts "Number of cookies: #{page.driver.cookies.size}\n"
end

at_exit do
end

# close browser and release driver
After do
  puts "Before deleting cookies: #{page.driver.cookies.size}\n"
  Capybara.reset_sessions!
  puts "After deleting cookies: #{page.driver.cookies.size}\n"
end
