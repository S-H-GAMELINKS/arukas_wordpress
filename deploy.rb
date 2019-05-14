require 'arukas'
require 'dotenv'

arukas = Arukas::API::new(ENV["ARUKAS_JSON_API_TOKEN"], ENV["ARUKAS_JSON_API_SECRET"])

json = File.read("test.json")
arukas.create_apps(json)