require 'sinatra'
require 'mongoid'
require 'oj'
require 'faker'
require_relative 'initializers/_init.rb'

puts "Loading Development Console"
Mongoid.load!('config/mongoid.yml', :default)

binding.pry
