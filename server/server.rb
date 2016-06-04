require 'sinatra/base'

class MyApp < Sinatra::Base
  require 'mongoid'
  require 'oj'
  require 'faker'
  require 'pry'

  require_relative 'initializers/_init.rb'

  register Sinatra::Users

  before do
    @body = Oj.load(request.body.read) || {}
    @body.symbolize_keys! if @body.present?
    puts "Request Body: #{@body}" if settings.development? && @body.present?
  end

  # Serve the public folder on root
  # Remove this to run api-only
  get '/*' do
    send_file 'public/index.html'
  end

  def json(obj)
    obj.attrs.to_json
  end

  run! if app_file == $0
end
