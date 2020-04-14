require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do 
    erb :user_input 
  end 
  
   post '/piglatinize' do
    @putinay_input = PigLatinizer.new.to_pig_latin(params[:phrase])
    erb :result
  end
end