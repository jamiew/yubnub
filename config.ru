# rails 2.3-compatible

require "./config/environment"

use Rails::Rack::LogTailer
use Rails::Rack::Static
run ActionController::Dispatcher.new

