require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        erb :'../views/root'
    end

    post '/teams' do
        @team = Team.new(params[:team])
        params[:team][:members].each do |details|
            Hero.new(details)
        end

        @heroes = Hero.all
        
        erb :'../views/results'
    end


end
