# c) Remove all vowels from a string

def vow (str)
  # vowels = ["a", "e", "i", "o", "u"]
  # splitStr = str.split("")
  # splitStr.each do |val, i, e|
  #   puts i
  #   puts val
  #   if(vowels.include?(val))
  #     return true
  #     break
  #   end
  # end
  # return false
  return str.delete("a,e,i,o,u")
end

puts vow("johnsanthosh")