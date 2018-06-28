require 'sinatra/base'
require 'pry'

class App < Sinatra::Base

  set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    erb :index
  end

  post '/team' do
    @team = Team.new(params[:team])

    params[:team][:heroes].each do |details|
      Hero.new(details)
    end
    @heroes = Hero.all
    # binding.pry

    erb :team

  end
end
