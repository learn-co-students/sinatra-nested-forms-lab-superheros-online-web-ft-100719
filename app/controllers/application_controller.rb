require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do 
        erb :super_hero
    end

    post '/teams' do
        @teamName = params["team"]["name"]
        @teamMotto = params["team"]["motto"]
        @memberOneName = params[:member1_name]
        @memberOnePower = params[:member1_power]
        @memberOneBio = params[:member1_bio]

        @memberTwoName = params[:member2_name]
        @memberTwoPower = params[:member2_power]
        @memberTwoBio = params[:member2_bio]

        @memberThreeName = params[:member3_name]
        @memberThreePower = params[:member3_power]
        @memberThreeBio = params[:member3_bio]
        #binding.pry
        erb :team
    end
end
