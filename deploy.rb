require 'arukas'
require 'dotenv'

Dotenv.load

arukas = Arukas::API::new(ENV["ARUKAS_JSON_API_TOKEN"], ENV["ARUKAS_JSON_API_SECRET"])

json = File.read("mariadb.json")
arukas.create_apps(json)

json = File.read("wp.json")
arukas.create_apps(json)