# frozen_string_literal: true

# config/initializers/cors.rb
Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'http://localhost:3001'
    resource '/api/greetings/*',
             headers: :any, # Allow any headers in requests
             methods: %i[get post put patch delete options], # Allow these HTTP methods
             credentials: true # Allow credentials (e.g., cookies, HTTP authentication)
  end
end
