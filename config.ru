require './config/application'

app = BlocWorks::Application.new

use Rack::ContentType

app.route do
  match "", "books#welcome"
  match ":controller/:id/:action"
  match ":controller/:id", default: { "action" => "show" }
  match ":controller", default: { "action" => "index" }
end

run(app)
