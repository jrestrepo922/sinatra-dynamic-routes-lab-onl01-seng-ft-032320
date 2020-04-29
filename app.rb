require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do 
    @name_reverse = params[:name].reverse
    "#{@name_reverse}"
  end 
  
  get '/square/:number' do 
    @square_number = params[:number].to_i * params[:number].to_i
    "#{@square_number}"
  end 
  
  get '/say/:number/:phrase' do 
    @repeat = params[:number].to_i 
    @phrase = params[:phrase]
    i = 0
    while @repeat > i 
      "#{@repeat}"
      i = i + 1
    end 
  end 
end