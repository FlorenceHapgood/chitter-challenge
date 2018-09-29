require "./lib/chitter"
require 'sinatra/base'
require_relative 'database_connection_setup'
require 'sinatra/flash'


class ChitterManager < Sinatra::Base

  enable :method_override

  register Sinatra::Flash

  get '/' do
    @chitter = Chitter.all
    @object = @chitter.get(1)
    @thing = @object.message
    erb (:index)
  end


end
