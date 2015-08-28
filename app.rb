require './environment'
require 'pry'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :"root"
    end

    get '/new' do
      erb :"pirates/new"
    end

    get '/pirates' do
      erb :"pirates/show"
    end

    post '/pirates' do
      @pirate = params[:pirate]
    end

  end
end
