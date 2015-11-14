require "sinatra"
require_relative "./lib/calculator.rb"

# verb (get) and resource ("/")
get "/home" do
  erb(:home)
end

post "/calculate" do
  calculator = Calculator.new(params[:first_number].to_f,
                              params[:second_number].to_f,
                              params[:operation])
  result = calculator.calculate
  "#{result}"
  # redirect to("/calculation_result")
end

get "/calculation_result" do
  calculator.print_result
  erb(:calculation_result)
end
