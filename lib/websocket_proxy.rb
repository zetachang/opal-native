require 'rack/websocket'

# Modified from original nodejs version 
# (https://github.com/facebook/react-native/blob/master/packager/webSocketProxy.js)

class WebSocketProxyServer < Rack::WebSocket::Application
  @@client = Set.new
  
  def on_open(env)
    @@client.add(self)
  end
  
  def on_message(env, msg)
    @@client.each do |client|
      if client != self
        client.send_data(msg)
      end
    end
  end
  
  def on_error(env, error)
    @@client.delete(self)
  end
  
  def on_close(env)
    @@client.delete(self)
  end
end
