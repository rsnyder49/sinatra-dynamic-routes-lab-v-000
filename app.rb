require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do 
    @reverse_name = params[:name].reverse
    @reverse_name
  end 
  
  get '/square/:number' do 
    "#{params[:number].to_i * params[:number].to_i}"
  end 
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    
  
end