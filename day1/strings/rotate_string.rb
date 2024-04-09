# def rotate (str , n ) 
#   begin
#     raise "Input cant't be empty" if str.empty? || n.empty?
#     raise "N => #{n} is not a number" if n != n.to_i.to_s

#     n = n.to_i
#     n.times { |i|
#       c1 = str[0]
#       c2 =  str[1, str.length-1]
#       str = c2 << c1
#       # puts c1, c2
#       # print str,"---"
#       # puts
#     }
#   return str
#   rescue => e
#     return e.message
#   end
# end

# print "Enter a String : "
# str = gets.chomp
# puts

# print "Enter N: "
# n = gets.chomp

# puts rotate(str, n)

n = 3
unless n == 5
  puts n
  n += 1
end