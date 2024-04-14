# a) Check if a string is a palindrome
# b) Check if a sentence is a palindrome

def palindrome(str)
  # print "Enter a string : "
  # str = gets.chomp
  str = str.downcase
  reverse = []
  l = str.length
  for i in 0..str.length-1
    reverse.push(str[l-1-i])
  end
  reverse = reverse.join()
  # puts str
  # puts reverse
  if (reverse == str)
    return true
  else
    return false
  end

end

print "Enter a string : "
input = gets.chomp.gsub(/\s+/, "") 
puts palindrome(input) ?  "#{input} is a palindrome" : "#{input} is not a palindrome"