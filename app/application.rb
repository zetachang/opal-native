require "opal"
require "react"
require "react/native"

styles = `React.StyleSheet.create({
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
}); `

class App
  include React::NativeComponent
  
  before_mount do
    puts "Hello!"
  end
  
  def render
    present(View, {style: `styles.container`}) do
       present(Text, {style: `styles.welcome`}) { "Welcome to React Native!💖" }
       present(Text, {style: `styles.instructions`}) { "To get started, edit app/application.rb" }
       present(Text, {style: `styles.instructions`}) do
         "Press Cmd+R to reload,\nCmd+Control+Z for dev menu"
       end
    end
  end
end

React::AppRegistry.register_component(App)
