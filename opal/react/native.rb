module React
  module NativeComponent
    View = `React.View`
    Text = `React.Text`
    
    def self.included(base)
      base.include(React::Component)
    end
  end
end

module React
  class AppRegistry
    def self.register_component(klass)
      ctor = React::ComponentFactory.native_component_class(klass)
      `React.AppRegistry.registerComponent(#{klass.to_s}, function(){return ctor;})`
    end
  end
end
