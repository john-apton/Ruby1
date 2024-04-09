# e) Program to find remainder without modulas
def findMod (num, div) 
  if(!(num == num.to_i.to_s && div == div.to_i.to_s))
    return "Invalid datatype"
  else
    num = num.to_i
    div = div.to_i
  end
  return 0 if num == div
  max = num/div.floor
  max1 = max*div
  return num - max1 
end

print "Enter Number : "
num = gets.chomp
puts
print "Enter Divident : "
div = gets.chomp
puts
puts findMod(num, div)