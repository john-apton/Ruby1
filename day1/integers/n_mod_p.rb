#  g) Compute n! mod p
def modFact(n, p)
  if(n == 0 ) 
   return 1
  else
    return (n * modFact((n -1), p)) % p
 end
end

print "Enter Number : "
n = gets.chomp.to_i
print "Enter Divident : "
p = gets.chomp.to_i
puts "modFact: #{modFact(n,p)}"

# puts modFact(5, 13)