require 'rack/auth/basic'

use Rack::Auth::Basic do |username, password|
  username == 'admin' && password == 'password'
end

# переменная env хранит в себе всю информацию о входном запросе
class App
  def call(env)
    puts env["HTTP_AUTHORIZATION"]
    [200, {'content-type' => 'text/html'}, ["You are loggined successfully"]]
  end
end
run App.new

=begin
rackup
curl -u admin:password -i http://localhost:9292
=end
