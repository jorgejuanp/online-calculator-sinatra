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
  File.open("results.txt", "w") {|file| file.puts "#{result}"}
  redirect to("/calculation_result")
end

get "/calculation_result" do
  #how to print the result here?
  @result = File.open("results.txt", "r") {|file| file.read}
  erb(:calculation_result)
end
