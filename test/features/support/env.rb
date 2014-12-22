require 'capybara/cucumber'
require 'capybara/poltergeist'

if ENV['USE_HEADLESS_MODE'] == "true"
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
  Capybara.register_driver :selenium do |app|
    Capybara::Selenium::Driver.new(app, :browser => @browser)
  end
end

Capybara.configure do |config|
  config.run_server = false
  config.app_host = 'http://localhost/sampleform'
end