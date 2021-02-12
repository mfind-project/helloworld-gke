require 'sinatra'

class App < Sinatra::Base
  set :bind, '0.0.0.0'
  set :port, ENV['PORT'] || '8080'

  get '/' do
    target = ENV['TARGET'] || 'World'
    "Hello #{target}!\n"
  end
end
