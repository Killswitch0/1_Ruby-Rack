class MyApp
  def call(_env)
    [200, {'content-type' => 'text/html'}, ["Hello"]]
  end
end

run MyApp.new