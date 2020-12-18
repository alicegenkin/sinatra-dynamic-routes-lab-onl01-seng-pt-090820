require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    @reverse_name = params[:name].reverse
    @reverse_name
    end
  
  get '/square/:number' do
  @square_number = params[:number].to_i**2
  @square_number.to_s
  end

  get '/say/:number/:phrase' do
  @product = ''
  @number = params[:number].to_i
  @phrase = params[:phrase]

  @number.times do 
  @product += @phrase
  end
  @product
   end
  
  
get '/say/:word1/:word2/:word3/:word4/:word5' do

@word1 = params[:word1]
@word2 = params[:word2]
@word3 = params[:word3]
@word4 = params[:word4]
@word5 = params[:word5]
new_word = "#{@word1}" + " " + "#{@word2}" +  " " + "#{@word3}" + " " + "#{@word4}" + " " + "#{@word5}" + "."
new_word
    end

get '/:operation/:number1/:number2' do
  @operation = params[:operation]
  @num1 = params[:number1].to_i
  @num2 = params[:number2].to_i
  
  if @operation = 'add'
  sum = "#{@num1 + @num2}"
  sum
  elsif @operation = 'subtract'
    difference = "#{@num1 - @num2}"
    difference
  end
end

end
