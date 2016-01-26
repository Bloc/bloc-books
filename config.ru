require './config/application'

map "/" do
  run BooksController.action(:welcome)
end

run BlocWorks::Application.new
