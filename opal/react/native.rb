module React
  module NativeComponent
    View = `React.View`
    Text = `React.Text`
    Image = `React.Image`
    
    def self.included(base)
      base.include(React::Component)
    end
  end
end

module React
  class StyleSheet
    def self.new(hash)
      Native(`React.StyleSheet.create(#{hash.to_n})`)
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
