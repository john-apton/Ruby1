#  a) Write a hex to oct converter

def converter (num)
  l = num.to_s.size
  oct = []
  for i in 0..l-1
    r= num%8
    # puts r
    # puts num/8.floor
    num = num/8.floor
    oct.unshift(r)
  end
  return oct.join().to_i
end

def convert(hex)
  hexHash = {
    "0" => 0, "1" => 1, "2" => 2, "3" => 3, "4" => 4,
    "5" => 5, "6" => 6, "7" => 7, "8" => 8, "9" => 9, 
    "A" => 10,
    "B" => 11,
    "C" => 12,
    "D" => 13,
    "E" => 14,
    "F" => 15
  }
  l = hex.length
  return "Input cannot be empty" if l == 0
  upHex = hex.upcase.reverse

  dc = 0
  for i in 0..l-1
    # print "#{i} =>", upHex[i]
    # puts
    # puts (hexHash[upHex[i]] * 16**i)
    # puts hexHash[upHex[i]]
    dc += hexHash[upHex[i]] * 16**i
  end
  # puts dc
  return converter(dc)
end

print "Enter a HEX : "
input = gets.chomp
print "OCT: #{convert(input)}"