# c) Write a program that will check if a given Integer is prime or not

print "Enter a number : " 
input = gets.chomp.to_i

def checkForPrime(num)
  return true if num == 1
  return false if num == 2 || num == 0

  for i in 2..num-1
    if (num%i == 0)
      return false
      break
    end
  end
  return true
end


puts checkForPrime(input) ? "#{input} is a prime number" : "#{input} is not a prime number"

