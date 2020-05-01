require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        erb :super_hero
    end

    post '/teams' do
        @team_name = params[:team][:name]
        @team_motto = params[:team][:motto]
        @member_1_name = params[:member1_name] 
        @member_1_power = params[:member1_power] 
        @member_1_bio = params[:member1_bio]

        @member_2_name = params[:member2_name] 
        @member_2_power = params[:member2_power] 
        @member_2_bio = params[:member2_bio]

        @member_3_name = params[:member3_name] 
        @member_3_power = params[:member3_power] 
        @member_3_bio = params[:member3_bio]
        
        erb :team
    end

end
