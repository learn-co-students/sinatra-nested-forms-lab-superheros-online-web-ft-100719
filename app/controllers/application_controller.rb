require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }
    
    get '/' do
        erb :team
    end
  
    
  
    post '/teams' do
        @team = Team.new(params[:team])
        #binding.pry
        params[:team][:heroes].each do |details|
          Hero.new(details)
        end
      
        @heroes = Hero.all
      
        erb :'super_hero'
        #Ship.clear
      
      end

end
