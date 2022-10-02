require 'rack/handler/thin'
require 'rack'

class MyApp
  def call(_env)
    [200, {'content-type' => 'text/html'}, ['Hello!']]
  end
end

Rack::Handler::Thin.run MyApp.new, :Port => 3000