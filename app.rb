require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
       @input_name = params[:name]
       "#{@input_name.reverse}"
  end

  get "/square/:number" do
    @input_number = params[:number].to_i
    "#{@input_number*@input_number}"

  end 

  get "/say/:number/:phrase" do
      @input_number = params[:number].to_i
      @input_phrase = params[:phrase]
      ar=[]
      @input_number.times{ar << @input_phrase}
      "#{ar.join(' ')}"
  end
  get "/say/:word1/:word2/:word3/:word4/:word5" do
   @i_word1=params[:word1]
   @i_word2=params[:word2]
   @i_word3=params[:word3]
   @i_word4=params[:word4]
   @i_word5=params[:word5]
   ar=[@i_word1, @i_word2, @i_word3, @i_word4, @i_word5]
   "#{ar.join(' ')}."
  end

  get "/:operation/:number1/:number2" do
      @i_operation=params[:operation]
      @number11= params[:number1].to_i
      @number22= params[:number2].to_i
    
      if @i_operation == "add"
        a=@number11 + @number22
      elsif @i_operation == "subtract"
        a=@number11 - @number22
      elsif @i_operation == "multiply"
        a=@number11 * @number22
      elsif @i_operation == "divide"
        a=@number11/@number22
      end
      "#{a}"
  end

end
