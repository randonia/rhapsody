require_relative 'mongoid.rb'

# Require everything in the models folder
Dir['./models/*.rb'].each { |m| require m }

# Require all API classes
Dir['./api/*.rb'].each { |fname| require fname }
