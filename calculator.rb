#Nicole Iwasaki 2/19/16 Calculamajigger, single prompt input; (+-*/%)

command_init = gets.chomp ("Give me a mathematical operation to calculate!")
command = command_init.gsub(/\s+/, "") # deletes spaces => homogenous input
first_number = command.scan(/\d+/).first.to_i
second_number = command.scan(/\d+/).last.to_i #identifies numbers from input

#decides what type of operation to run based on the input given
if command.include?("add") || command.include?("plus") || command.include?("+")
  operator = "+"
  answer = first_number + second_number
elsif command.include?("minus")|| command.include?("subtract") || command.include?("-")
  operator = "-"
  answer = first_number - second_number
elsif command.include?("times") || command.include?("multipl") || command.include?("*")
  operator = "*"
  answer = first_number * second_number
elsif command.include?("divi") || command.include?("/")
  operator = "/"
  answer = first_number / second_number
elsif command.include?("modulate") || command.include?("modulus") || command.include?("%")
  operator = "%"
  answer = first_number % second_number
end

#reformats input to X + Y = ANSWER + outputs
puts first_number.to_s + " " + operator + " " + second_number.to_s + " " + "=" + " " + answer.to_s
