# c) Remove all vowels from a string


def Reomve_vowel(str)

  # Method 1 using loop
  vowels = {a: true, e: true, i: true, o: true, u: true}
  result = ""
  for i in 0..str.length-1
    if (!vowels[str[i].downcase.to_sym])
      result += str[i]
    end
  end

  # Method 2 using inbuilt Methods
  # str.delete("a,e,i,o,u")

  # Method 3 using Regex
  # str.gsub(/[aeiou]/i, '')
  return result
end

print "Enter string : "
input = gets
puts Reomve_vowel(input)