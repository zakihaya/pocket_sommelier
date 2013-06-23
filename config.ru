# This file is used by Rack-based servers to start the application.

require ::File.expand_path('../config/environment',  __FILE__)
run PocketSommelier::Application

# disable buffering(https://devcenter.heroku.com/articles/ruby#logging)
$stdout.sync = true
