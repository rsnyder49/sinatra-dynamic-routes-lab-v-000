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
  
  get '/say/:number/:phrase' do 
    @num = params[:number].to_i
    "#{params[:phrase]}" * @num
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    @str = "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
    @str
  end 
  
  get '/:operation/:number1/:number2' do 
    @op = params[:operation]
    @num1 = params[:number1]
    @num2 = params[:number2]
    if @op == "add"
      @num1 + @num2
    elsif @op == "subtract"
      @num1 - @num2
    elsif @op == "multiply"
      @num1 * @num2
    elsif @op == "divide"
      @num1 / @num2
    end
  end 
  
end