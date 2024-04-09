# d) Write a program that will check if a given Integer is a perfect number

# what is perfect number 
# In number theory, a perfect number is a positive integer that is equal to the sum of its positive divisors, excluding the number itself. For instance, 6 has divisors 1, 2 and 3, and 1 + 2 + 3 = 6, so 6 is a perfect number. The next perfect number is 28, since 1 + 2 + 4 + 7 + 14 = 28.


def checkPerfect(num)
  if num != num.to_i.to_s 
    puts "Input is not a number"
    return
  end
  num = num.to_i
  sum = 0
  for i in 1..num-1
    if (num%i == 0)
      sum += i
    end
  end
  return sum == num
end

print "Enter a number : "
input = gets.chomp
puts checkPerfect(input) ? "#{input} is a perfect number" : "#{input} is not a perfect number"