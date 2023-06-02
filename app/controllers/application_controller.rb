class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
 
  get '/games/:id/reviews_with_users' do 
    game = Game.find(params[:id])
     game.to_json(include: { reviews: { include: :user } }) 
    end
    
   
    
end
