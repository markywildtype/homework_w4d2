require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('/models/rock_paper_scissors.rb')

get('/game/:hand1/:hand2') do
  game = RockPaperScissors.new(params[:hand1], params[:hand2])
  @game_result = game.play()
  erb(:game_result)
end
