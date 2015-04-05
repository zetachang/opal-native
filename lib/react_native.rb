if RUBY_ENGINE == 'opal'
else
  require "opal"

  Opal.append_path File.expand_path('../../opal', __FILE__).untaint
  
  puts File.expand_path('../../opal', __FILE__).untaint
end
