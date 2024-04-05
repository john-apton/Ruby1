#  e) Frequency of each character in alphabetical order 

def frequency(str)
  hash_asc = {}
  str.size.times { |i|
  # puts str[i].sum
  if (hash_asc[str[i].sum])
    hash_asc[str[i].sum] += 1
  else
    hash_asc[str[i].sum] = 1
  end
  }
  result = ""
  sorted = hash_asc.keys.sort!
  sorted.each do |key|
    # p key
    # p hash_asc[key]
    result << key.to_i.chr << hash_asc[key].to_s
  end
  # p hash_asc
  # p sorted
  # p result
  return "#{str} => #{result}"
end

print "Enter a string : "
str = gets.chomp
puts frequency(str)