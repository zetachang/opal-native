require "opal"
require "react"
require "react/native"


class App
  include React::NativeComponent
    
  before_mount do
    puts "Hello! this is #{RUBY_ENGINE} #{RUBY_ENGINE_VERSION}"
    # `console.log(Opal)` # demo for how to access the `Opal` stuff for debugging
  end
  
  def render
    styles = React::StyleSheet.new({
      container: {
        flex: 1,
        justifyContent: 'center',
        alignItems: 'center',
        backgroundColor: '#F5FCFF',
      },
      welcome: {
        fontSize: 20,
        textAlign: 'center',
        margin: 10,
      },
      instructions: {
        textAlign: 'center',
        color: '#333333',
        marginBottom: 5,
      },
      image: {
        width: 100,
        height: 100,
        borderWidth: 1
      }
    })
    
    present(View, {style: styles.container}) do
       present(Text, {style: styles.welcome}) { "Welcome to React Native!💖" }
       present(Text, {style: styles.instructions}) { "This app is coded using Opal(#{RUBY_ENGINE_VERSION}) on Ruby(#{RUBY_VERSION})" }
       present(Text, {style: styles.instructions}) { "To get started, edit app/application.rb" }
       present(Text, {style: styles.instructions}) do
         "Press Cmd+R to reload,\nCmd+Control+Z for dev menu"
       end
       present(Image, {style: styles.image, source: {uri: 'http://facebook.github.io/react/img/logo_og.png'}.to_n})
    end
  end
end

React::AppRegistry.register_component(App)
