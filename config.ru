require 'bundler'
Bundler.require

require "./lib/websocket_proxy"
require "./lib/react_native"

Opal::Processor.source_map_enabled = false

opal = Opal::Server.new {|s|
  s.append_path './app'
  s.append_path './vendor'
  s.main = 'application'
}

# map opal.source_maps.prefix do
#   run opal.source_maps
# end

map '/assets' do
  run opal.sprockets
end

map '/debugger-proxy' do
  run WebSocketProxyServer.new
end

# Dummy route, simulator will try to access this to launch Chrome
map '/launch-chrome-devtools' do
end

get '/' do
  File.open("vendor/debugger.html").read
end

run Sinatra::Application
