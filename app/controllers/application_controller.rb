require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        erb :super_hero
    end

    post '/team' do
        @team = Team.new(params[:team][:name], params[:team][:motto])

        params[:team][:heroes].each do |hero|
            Hero.new(hero[:name], hero[:power], hero[:biography])
        end
        @hero = Hero.all

        erb :team
    end
end
