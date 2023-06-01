require_relative "./config/environment"

# Allow CORS (Cross-Origin Resource Sharing) requests
use Rack::Cors do
  allow do
    origins '*' # Update this with the appropriate origin(s) for your React frontend
    resource '*', headers: :any, methods: [:get, :post, :patch, :delete]
  end
end


# Parse JSON from the request body into the params hash
use Rack::JSONBodyParser

# Our application
run ApplicationController
