#  h) Last digit of nth Fibonacci number


def nth_fib(n)
  return 0 if n == 0
  return 1 if n ==1 || n == 2
  num1 = 0
  num2 = 1
  fib = num1+num2
  for i in 1..n
    fib = num1 + num2
    num1 = num2
    num2 = fib
  end
  # puts num2
  return num2
end

print "Enter Number : "
fib = gets.chomp.to_i
print "Fibnacci number is : #{nth_fib(fib)}" 
puts
print "Last digit of the nth number : #{nth_fib(fib) % 10}" 
puts

