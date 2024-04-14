# c) Write a program that will check if a given Integer is prime or not

print "Enter a number : " 
input = gets.chomp

def checkForPrime(num)
  begin
  raise "#{num} is not a number" if num != num.to_i.to_s
  num = num.to_i
  return true if num == 1
  return false if num == 2 || num == 0

  for i in 2..num-1
    if (num%i == 0)
      return false
      break
    end
  end
  return true
  rescue NoMethodError => e
    return e.message
  rescue => e
    return e.message
  end
  
end

isPrime = checkForPrime(input)
puts isPrime == true ? "#{input} is a prime number" : isPrime ? isPrime : "#{input} is not a prime number"
