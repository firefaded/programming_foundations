# Command Line Calculator

#pseudocode for program
# ask the user for two numbers
# ask the user for an operation to perform
# perform the operation on the two numbers
# output the result

# answer = Kernel.gets()
# Kernel.puts(answer)

# prints to the console
Kernel.puts("Welcome to Calculator!")

# asks the user for input
Kernel.puts("What's the first number?")
# store user input into a variable
# chomp method gets rid of new line after gets
number1 = Kernel.gets().chomp()

Kernel.puts("What's the second number?")
number2 = Kernel.gets().chomp()

# prints out the number to see what it is
# Kernel.puts(number1.chomp().inspect())
# Kernel.puts("the number is: " + number1 + "!")

Kernel.puts("What operation would you like to perform? 1) add 2) subtract 3) multiply 4) divide")
operator = Kernel.gets().chomp()

# checks to see what answer they chose
if operator == "1"
  result = number1.to_i() + number2.to_i()
elsif operator == "2"
  result = number1.to_i() - number2.to_i()
elsif operator == "3"
  result = number1.to_i() * number2.to_i()
else
  result = number1.to_f() / number2.to_f()
end

Kernel.puts("The result is #{result}")
