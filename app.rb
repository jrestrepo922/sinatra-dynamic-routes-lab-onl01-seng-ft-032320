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
    @repeat.times do 
      "#{@phrase}"
    end 
  end 
  
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}"
  end 
  
  get '/:operation/:number1/:number2' do 
    @operation = params[:operation]
    @number1 = params[:number1]
    @number2 = params[:number2]
    if @operation == "add"
      @add = @number1 + @number2
      "#{@add}"
    elsif @operation == "subtract"
      @add = @number1 + @number2
      "#{@add}"
    elsif @operation == "multiply"
      @add = @number1 + @number2
      "#{@add}"
    elsif @opearation == "divide"
      @add = @number1 + @number2
      "#{@add}"
    end 
  end 
end