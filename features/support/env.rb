require 'bundler'
Bundler.require :test, :debugging

Capybara.default_driver = :selenium
Capybara.app_host = "http://www.just-eat.co.uk"
Capybara.app = ''

class MyWorld
	include Capybara::DSL
end

World do
	MyWorld.new
end
