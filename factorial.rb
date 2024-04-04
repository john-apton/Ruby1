#   f) Write a program to print the factorial of a given Integer

# def fact(num)
#   return 0 if num == 0
#   return 1 if num == 1
#   fac = 1
#   for i in 1..num
#     fac *= i
#   end
#   return fac
# end


print "Enter a number : "
input = gets.chomp

def recFact(num)
num = num.to_i
  if(num == 0 ) 
   return 1
  else
    return num * recFact(num -1)
 end
end

def checkForNumber (number) 
  if number != number.to_i.to_s 
    puts "Input is not a number"
    return
  end
  number = number.to_i
  puts recFact(number)
end

checkForNumber(input)