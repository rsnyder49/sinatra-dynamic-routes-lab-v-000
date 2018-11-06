require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do 
    @reverse_name = param[:name]
    "<%=#{@reverse_name}.reverse%>"
end