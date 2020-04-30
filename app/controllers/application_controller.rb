require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do 
      erb :super_hero
    end 
  
    post '/teams' do
      @team = Team.new
      @team.name = params[:team][:name]
      @team.motto =  params[:team][:motto]

      heroes = params[:team][:members]
      heroes.each do |detail|
        hero = Hero.new(detail)
      end 
      erb :team
    end


end
