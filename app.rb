require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    status = "200"
    erb :user_input

  end

  post '/piglatinize' do
    status = "200"
    p = PigLatinizer.new
    q = p.to_pig_latin(params[:user_phrase])
    "#{q}"
  end


end
