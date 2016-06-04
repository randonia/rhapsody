# Determine the mongoid config based on RACK_ENV
case ENV['RACK_ENV']
when 'production'
  mongoid_client = :production
when 'test'
  mongoid_client = :test
when nil
  mongoid_client = :development
end

puts "Using #{mongoid_client} for mongoid"
Mongoid.load!('config/mongoid.yml', mongoid_client)

raise ArgumentError, 'Mongoid is not configured' unless Mongoid::configured?
