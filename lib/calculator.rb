class Calculator
  def initialize(first_number, second_number, operation)
    @first_number = first_number
    @second_number = second_number
    @operation = operation
  end

  def calculate
		result = case @operation
		when "+" then add
		when "-" then substract
		when "*" then multiply
		when "/" then divide
		end
		result
	end

	def add
		@first_number + @second_number
	end

	def substract
		@first_number - @second_number
	end

	def multiply
		@first_number * @second_number
	end

	def divide
		@first_number / @second_number
	end
end
