require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do 
    rev_name = params[:name].reverse
    "#{rev_name}"
  end

  get "/square/:number" do 
    s_num = params[:number].to_i * params[:number].to_i
    "#{s_num}"
  end

  get "/say/:number/:phrase" do 
    str = ""
    params[:number].to_i.times do 
      str += params[:phrase]
    end
    str
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do 
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get "/:operation/:number1/:number2" do 
    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i

    case @operation
    when "add"
      "#{@num1 + @num2}"
    when "subtract"
      "#{@num1 - @num2}"
    when "divide"
      "#{@num1 / @num2}"
    when "multiply"
      "#{@num1 * @num2}"
    end
  end

end