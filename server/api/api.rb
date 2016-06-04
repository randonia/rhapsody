module Sinatra
  module Users
    def self.registered(app)
      app.get '/api/?' do
        'Hello, world'
      end
    end
  end
end
