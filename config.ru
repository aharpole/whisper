# This file is used by Rack-based servers to start the application.


require ::File.expand_path('../config/environment', __FILE__)

if ENV['BASIC_AUTH_PASSWORD']
  use Rack::Auth::Basic, "This application is private" do |username, password|
    password == ENV['BASIC_AUTH_PASSWORD']
  end
end

run Rails.application
