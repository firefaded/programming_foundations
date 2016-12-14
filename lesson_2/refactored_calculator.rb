# puts the prompt in fronf of the message =>
def prompt(message)
  Kernel.puts("=> #{message}")
end

# method for valid number checks
def valid_number?(num)
  # checks if num is not equal to 0
  num.to_i() != 0
end

# method to display the operation they user chose in a message
def operation_to_message(op)
  case op
  when "1"
    "Adding"
  when "2"
    "Subtracting"
  when "3"
    "Multiplying"
  when "4"
    "Dividing"
  end
end

prompt("Welcome to Calculator! Enter your name:")

# initalize name outside loop to reference later
name = ""
loop do
  name = Kernel.gets().chomp()

  # check to see if they entered a name
  if name.empty?()
    prompt("Make sure to use a valid name.")
  else
    break
  end
end

prompt("Hi #{name}!")

# main loop of program
loop do
  # initalize the variable number1 outside the loop
  number1 = ""
  # loop for first number
  loop do
    prompt("What's the first number?")
    number1 = Kernel.gets().chomp()

    # if statement to check if number is valid
    if valid_number?(number1)
      break
    else
      prompt("Hmm... that doesn't look like a valid number")
    end
  end

  # initialze number2 outside the loop
  number2 = ""
  # loop for second number. Same as first
  loop do
    prompt("What's the second number?")
    number2 = Kernel.gets().chomp()

    # if statement to check if number is valid
    if valid_number?(number2)
      break
    else
      prompt("Hmm... that doesn't look like a valid number")
    end
  end
  # <<- enables multi-line messages.
  # MSG can be any 3 letters. also known as a deliniter
  operator_prompt = <<-MSG
    What operation would you like to perform?
    1) add
    2) subtract
    3) multiply
    4) divide
  MSG

  prompt(operator_prompt)

  # operator variable initialized outside of loop
  operator = ""
  loop do
    operator = Kernel.gets().chomp()

    # checks to see if operator is chosen from the array
    if %w(1 2 3 4).include?(operator)
      # if it is a string from the array then the loop ends
      break
    else
      # if 1, 2, 3, 4 wasn't chosen then the prompt is asked again
      prompt("Must choose 1, 2, 3, or 4")
    end
  end

  # lets the user know the operation they chose is running
  prompt("#{operation_to_message(operator)} the two numbers...")

  # use case statment to return result instead of if statements
  result = case operator
           when "1"
             number1.to_i() + number2.to_i()
           when "2"
             number1.to_i() - number2.to_i()
           when "3"
             number1.to_i() * number2.to_i()
           when "4"
             number1.to_f() / number2.to_f()
           end

  prompt("The result is #{result}")

  prompt("Do you want to perform another calculation? (Y to calculate again)")
  answer = Kernel.gets().chomp()
  # stops the loop if user puts anything other than "y"
  break unless answer.downcase().start_with?("y")
end

prompt("Thank you for using the calculator. Good bye!")
