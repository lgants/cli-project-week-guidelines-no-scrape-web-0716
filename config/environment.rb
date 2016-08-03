require 'bundler/setup'
Bundler.require(:default, :development)
require_relative '../app/runners/nytimes-runner'
require_relative '../app/models/nytimes-search'
require_relative '../app/data_fetchers/nytimes-api-caller'



$: << '.'

Dir["../app/concerns/*.rb"].each {|f| require f}
Dir["../app/models/*.rb"].each {|f| require f}
Dir["../app/data_fetchers/*.rb"].each {|f| require f}
Dir["../app/runners/*.rb"].each {|f| require f}

Dir["../env.rb"].each {|f| require f}

require "open-uri"
require "json"
